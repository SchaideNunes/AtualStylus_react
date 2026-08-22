import mysql from 'mysql2/promise';
import { normalizarDataISO } from '../utils/dateUtils.js';

/**
 * MySQL Database implementation for production on Hostinger / Docker
 */
export class MysqlDatabase {
  constructor(config) {
    this.pool = mysql.createPool({
      host: config.host || process.env.DB_HOST || 'localhost',
      port: Number(config.port || process.env.DB_PORT || 3306),
      user: config.user || process.env.DB_USER || 'root',
      password: config.password || process.env.DB_PASSWORD || '',
      database: config.database || process.env.DB_NAME || 'atualestilo_db',
      waitForConnections: true,
      connectionLimit: 10,
      queueLimit: 0,
      charset: 'utf8mb4',
      dateStrings: true
    });
  }

  async getBarbeiroConfig(id) {
    const [rows] = await this.pool.execute(
      'SELECT id, nome, telefone_whatsapp, foto, horarios FROM barbeiros_config WHERE id = ?',
      [Number(id)]
    );
    if (rows.length === 0) return null;
    const row = rows[0];
    return {
      ...row,
      horarios: typeof row.horarios === 'string' ? JSON.parse(row.horarios) : row.horarios
    };
  }

  async getAllBarbeirosConfig() {
    const [rows] = await this.pool.execute(
      'SELECT id, nome, telefone_whatsapp, foto, horarios FROM barbeiros_config ORDER BY id ASC'
    );
    return rows.map(row => ({
      ...row,
      horarios: typeof row.horarios === 'string' ? JSON.parse(row.horarios) : row.horarios
    }));
  }

  async updateBarbeiroHorarios(id, horarios) {
    const jsonHorarios = JSON.stringify(horarios);
    await this.pool.execute(
      'UPDATE barbeiros_config SET horarios = ? WHERE id = ?',
      [jsonHorarios, Number(id)]
    );
    return true;
  }

  async getAgendamentosOcupados(data, barbeiroId) {
    const [rows] = await this.pool.execute(
      'SELECT horario FROM agendamentos WHERE data_agendamento = ? AND barbeiro_id = ? AND status != ?',
      [data, Number(barbeiroId), 'cancelado']
    );
    return rows;
  }

  async insertAgendamento(agendamento) {
    const [res] = await this.pool.execute(
      `INSERT INTO agendamentos 
        (nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status) 
       VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)`,
      [
        agendamento.nome,
        agendamento.telefone || '',
        agendamento.servico,
        Number(agendamento.valor) || 0,
        Number(agendamento.barbeiro_id),
        agendamento.barbeiro_nome,
        agendamento.data_agendamento,
        agendamento.horario,
        agendamento.status || 'confirmado'
      ]
    );
    return { id: res.insertId, ...agendamento };
  }

  async insertBatchAgendamentos(lista) {
    if (!lista || lista.length === 0) return [];
    const connection = await this.pool.getConnection();
    try {
      await connection.beginTransaction();
      const criados = [];
      for (const item of lista) {
        const [res] = await connection.execute(
          `INSERT INTO agendamentos 
            (nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status) 
           VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)`,
          [
            item.nome,
            item.telefone || '',
            item.servico,
            Number(item.valor) || 0,
            Number(item.barbeiro_id),
            item.barbeiro_nome,
            item.data_agendamento,
            item.horario,
            item.status || 'confirmado'
          ]
        );
        criados.push({ id: res.insertId, ...item });
      }
      await connection.commit();
      return criados;
    } catch (err) {
      await connection.rollback();
      throw err;
    } finally {
      connection.release();
    }
  }

  async getAgendamentosPorTelefone(telefone, dataMinima) {
    const apenasDigitos = String(telefone).replace(/\D/g, '');
    const [rows] = await this.pool.execute(
      `SELECT * FROM agendamentos 
       WHERE (telefone = ? OR REPLACE(REPLACE(REPLACE(REPLACE(telefone, '(', ''), ')', ''), '-', ''), ' ', '') = ?)
         AND status = 'confirmado' 
         AND data_agendamento >= ? 
       ORDER BY data_agendamento ASC, horario ASC`,
      [telefone, apenasDigitos, dataMinima]
    );
    return rows.map(r => ({ ...r, data_agendamento: normalizarDataISO(r.data_agendamento) }));
  }

  async getAgendamentoById(id) {
    const [rows] = await this.pool.execute(
      'SELECT * FROM agendamentos WHERE id = ?',
      [Number(id)]
    );
    if (rows.length === 0) return null;
    return { ...rows[0], data_agendamento: normalizarDataISO(rows[0].data_agendamento) };
  }

  async updateAgendamentoStatus(id, status) {
    await this.pool.execute(
      'UPDATE agendamentos SET status = ? WHERE id = ?',
      [status, Number(id)]
    );
    return this.getAgendamentoById(id);
  }

  async deleteAgendamento(id) {
    const item = await this.getAgendamentoById(id);
    if (!item) return null;
    await this.pool.execute(
      'DELETE FROM agendamentos WHERE id = ?',
      [Number(id)]
    );
    return item;
  }

  async listAgendamentosAdmin({ dataLimite, busca, data, barbeiroId }) {
    let sql = 'SELECT * FROM agendamentos WHERE 1=1';
    const params = [];

    if (dataLimite) {
      sql += ' AND data_agendamento >= ?';
      params.push(dataLimite);
    }
    if (data) {
      sql += ' AND data_agendamento = ?';
      params.push(data);
    }
    if (barbeiroId) {
      sql += ' AND barbeiro_id = ?';
      params.push(Number(barbeiroId));
    }
    if (busca) {
      sql += ' AND (LOWER(nome) LIKE ? OR telefone LIKE ?)';
      params.push(`%${busca.toLowerCase()}%`, `%${busca}%`);
    }

    sql += ' ORDER BY data_agendamento ASC, horario ASC LIMIT 5000';

    const [rows] = await this.pool.execute(sql, params);
    return rows.map(r => ({ ...r, data_agendamento: normalizarDataISO(r.data_agendamento) }));
  }

  async concluirAgendamentosPassados(dataHoje) {
    const [result] = await this.pool.execute(
      `UPDATE agendamentos 
       SET status = 'concluido' 
       WHERE status = 'confirmado' 
         AND nome != 'BLOQUEIO'
         AND data_agendamento < ?`,
      [dataHoje]
    );
    return result.affectedRows || 0;
  }

  async findAdminByEmail(email) {
    const [rows] = await this.pool.execute(
      'SELECT * FROM admin_users WHERE email = ? LIMIT 1',
      [email.toLowerCase()]
    );
    return rows.length > 0 ? rows[0] : null;
  }

  async getProdutosPublicos() {
    const [rows] = await this.pool.execute(
      'SELECT * FROM produtos WHERE ativo = 1 ORDER BY em_promocao DESC, categoria ASC, nome ASC'
    );
    return rows;
  }

  async listProdutosAdmin(filtros = {}) {
    let sql = 'SELECT * FROM produtos WHERE 1=1';
    const params = [];

    if (filtros.categoria && filtros.categoria !== 'Todos') {
      sql += ' AND categoria = ?';
      params.push(filtros.categoria);
    }
    if (filtros.busca) {
      sql += ' AND (LOWER(nome) LIKE ? OR LOWER(descricao) LIKE ?)';
      params.push(`%${filtros.busca.toLowerCase()}%`, `%${filtros.busca.toLowerCase()}%`);
    }
    if (filtros.em_promocao !== undefined) {
      sql += ' AND em_promocao = ?';
      params.push(filtros.em_promocao ? 1 : 0);
    }

    sql += ' ORDER BY em_promocao DESC, categoria ASC, nome ASC';
    const [rows] = await this.pool.execute(sql, params);
    return rows;
  }

  async getProdutoById(id) {
    const [rows] = await this.pool.execute(
      'SELECT * FROM produtos WHERE id = ?',
      [Number(id)]
    );
    return rows.length > 0 ? rows[0] : null;
  }

  async insertProduto(dados) {
    const [res] = await this.pool.execute(
      `INSERT INTO produtos 
        (nome, descricao, preco, preco_promocional, porcentagem_desconto, em_promocao, foto, categoria, ativo) 
       VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)`,
      [
        dados.nome,
        dados.descricao || '',
        Number(dados.preco) || 0,
        dados.preco_promocional !== null && dados.preco_promocional !== undefined ? Number(dados.preco_promocional) : null,
        Number(dados.porcentagem_desconto) || 0,
        dados.em_promocao ? 1 : 0,
        dados.foto || '',
        dados.categoria || 'Geral',
        dados.ativo !== undefined && !dados.ativo ? 0 : 1
      ]
    );
    return this.getProdutoById(res.insertId);
  }

  async updateProduto(id, dados) {
    await this.pool.execute(
      `UPDATE produtos SET 
        nome = ?, 
        descricao = ?, 
        preco = ?, 
        preco_promocional = ?, 
        porcentagem_desconto = ?, 
        em_promocao = ?, 
        foto = ?, 
        categoria = ?, 
        ativo = ? 
       WHERE id = ?`,
      [
        dados.nome,
        dados.descricao || '',
        Number(dados.preco) || 0,
        dados.preco_promocional !== null && dados.preco_promocional !== undefined ? Number(dados.preco_promocional) : null,
        Number(dados.porcentagem_desconto) || 0,
        dados.em_promocao ? 1 : 0,
        dados.foto || '',
        dados.categoria || 'Geral',
        dados.ativo !== undefined && !dados.ativo ? 0 : 1,
        Number(id)
      ]
    );
    return this.getProdutoById(id);
  }

  async deleteProduto(id) {
    const item = await this.getProdutoById(id);
    if (!item) return null;
    await this.pool.execute(
      'DELETE FROM produtos WHERE id = ?',
      [Number(id)]
    );
    return item;
  }
}
