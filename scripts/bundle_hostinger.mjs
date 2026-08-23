import fs from 'fs';
import path from 'path';
import archiver from 'archiver';
import { execSync } from 'child_process';

console.log("1. Compilando o frontend React para produção...");
execSync('npm run build', { stdio: 'inherit' });

console.log("2. Gerando o pacote deploy_hostinger.zip...");

const output = fs.createWriteStream(path.resolve('deploy_hostinger.zip'));
const archive = archiver('zip', { zlib: { level: 9 } });

output.on('close', function () {
  console.log(`\n🎉 Pacote criado com sucesso: deploy_hostinger.zip (${(archive.pointer() / 1024 / 1024).toFixed(2)} MB)`);
  console.log("Basta enviar esse arquivo para dentro da pasta public_html na Hostinger e descompactar!");
});

archive.on('error', function (err) {
  throw err;
});

archive.pipe(output);

// 1. Adicionar conteúdo de dist/ na raiz do zip
archive.directory('dist/', false);

// 2. Adicionar pasta api/
archive.directory('api/', 'api');

// 3. Adicionar .htaccess
if (fs.existsSync('.htaccess')) {
  archive.file('.htaccess', { name: '.htaccess' });
}

archive.finalize();
