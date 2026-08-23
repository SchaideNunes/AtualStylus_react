import bcrypt from 'bcryptjs';

async function generateHashes() {
  const hash1 = await bcrypt.hash('schaide134679852', 10);
  const hash2 = await bcrypt.hash('street567890', 10);

  console.log('--- USER 1 ---');
  console.log('Email: schaidenunes.dev@gmail.com');
  console.log('Hash 1:', hash1);
  console.log('Verificação 1:', await bcrypt.compare('schaide134679852', hash1));

  console.log('\n--- USER 2 ---');
  console.log('Email: geilsonmoreira19@gmail.com');
  console.log('Hash 2:', hash2);
  console.log('Verificação 2:', await bcrypt.compare('street567890', hash2));
}

generateHashes();
