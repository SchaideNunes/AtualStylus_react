import fs from 'fs';
import path from 'path';
import { createRequire } from 'module';
import { execSync } from 'child_process';

const require = createRequire(import.meta.url);
const { ZipArchive } = require('archiver');

console.log("1. Compilando o frontend React para produção...");
execSync('npm run build', { stdio: 'inherit' });

console.log("2. Gerando o pacote deploy_hostinger.zip...");

const output = fs.createWriteStream(path.resolve('deploy_hostinger.zip'));
const archive = new ZipArchive({ zlib: { level: 9 } });

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
