import fs from 'fs';

const SUPABASE_URL = 'https://tnltiicshevuxkjsnkmm.supabase.co';
const SUPABASE_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRubHRpaWNzaGV2dXhranNua21tIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzA4NDQwMzQsImV4cCI6MjA4NjQyMDAzNH0.7otLzZqWwzV1PUQCxrC9k-Y-KZ--QrQVVYllZKSFans';

async function fetchTable(table) {
  const url = `${SUPABASE_URL}/rest/v1/${table}?select=*`;
  const res = await fetch(url, {
    headers: {
      'apikey': SUPABASE_KEY,
      'Authorization': `Bearer ${SUPABASE_KEY}`
    }
  });
  if (!res.ok) {
    const txt = await res.text();
    throw new Error(`Erro ao buscar ${table}: ${txt}`);
  }
  return await res.json();
}

function escapeSql(val) {
  if (val === null || val === undefined) return 'NULL';
  if (typeof val === 'number') return val;
  if (typeof val === 'boolean') return val ? 1 : 0;
  if (typeof val === 'object') return `'${JSON.stringify(val).replace(/'/g, "''")}'`;
  return `'${String(val).replace(/'/g, "''")}'`;
}

async function run() {
  console.log('🔍 Buscando dados do Supabase (Apenas Leitura)...');
  
  let barbeiros = [];
  try {
    barbeiros = await fetchTable('barbeiros_config');
    console.log(`✅ ${barbeiros.length} barbeiros encontrados.`);
  } catch (e) {
    console.warn(`⚠️ Não foi possível carregar barbeiros_config: ${e.message}`);
  }

  let agendamentos = [];
  try {
    agendamentos = await fetchTable('agendamentos');
    console.log(`✅ ${agendamentos.length} agendamentos encontrados.`);
  } catch (e) {
    console.warn(`⚠️ Não foi possível carregar agendamentos: ${e.message}`);
  }

  let sql = `-- ==============================================================================
-- DADOS EXPORTADOS DO SUPABASE (APENAS LEITURA) PARA MYSQL HOSTINGER
-- Data da exportação: ${new Date().toISOString()}
-- ==============================================================================

USE atualestilo_db;

`;

  if (barbeiros.length > 0) {
    sql += `-- 1. Barbeiros Config\n`;
    for (const b of barbeiros) {
      const horariosJson = typeof b.horarios === 'string' ? b.horarios : JSON.stringify(b.horarios);
      sql += `INSERT INTO barbeiros_config (id, nome, telefone_whatsapp, foto, horarios)
VALUES (${escapeSql(b.id)}, ${escapeSql(b.nome || (b.id === 1 ? 'Geilson' : 'Denilson'))}, ${escapeSql(b.telefone_whatsapp || (b.id === 1 ? '5575991309594' : '5575991073283'))}, ${escapeSql(b.foto || (b.id === 1 ? 'assets/Geilson.jpg' : 'assets/Denilson.jpg'))}, ${escapeSql(horariosJson)})
ON DUPLICATE KEY UPDATE 
  nome = VALUES(nome),
  telefone_whatsapp = VALUES(telefone_whatsapp),
  foto = VALUES(foto),
  horarios = VALUES(horarios);\n\n`;
    }
  }

  if (agendamentos.length > 0) {
    sql += `-- 2. Agendamentos\n`;
    for (const ag of agendamentos) {
      const valor = Number(ag.valor) || 0;
      const status = ag.status || 'confirmado';
      const telefone = ag.telefone || '';
      sql += `INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (${escapeSql(ag.id)}, ${escapeSql(ag.nome)}, ${escapeSql(telefone)}, ${escapeSql(ag.servico)}, ${valor}, ${escapeSql(ag.barbeiro_id)}, ${escapeSql(ag.barbeiro_nome)}, ${escapeSql(ag.data_agendamento)}, ${escapeSql(ag.horario)}, ${escapeSql(status)}, ${escapeSql(ag.created_at || new Date().toISOString())})
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);\n`;
    }
  }

  fs.writeFileSync('seed_from_supabase.sql', sql, 'utf8');
  console.log('🎉 Arquivo "seed_from_supabase.sql" gerado com sucesso!');
}

run().catch(console.error);
