import bcrypt from 'bcryptjs';

/**
 * In-Memory Database for testing and standalone offline mode
 */
export class InMemoryDatabase {
  constructor() {
    this.barbeiros_config = [
      {
        id: 1,
        nome: 'Geilson',
        telefone_whatsapp: '5575991309594',
        foto: 'assets/Geilson.jpg',
        horarios: ["08:30", "09:30", "10:00", "11:00", "14:00", "14:30", "15:30", "16:00", "17:00", "17:30", "18:00", "18:30"]
      },
      {
        id: 2,
        nome: 'Denilson',
        telefone_whatsapp: '5575991073283',
        foto: 'assets/Denilson.jpg',
        horarios: ["08:30", "09:30", "10:00", "11:00", "14:00", "14:30", "15:30", "16:00", "17:00"]
      }
    ];

    this.agendamentos = [];
    this.nextAgendamentoId = 1;

    this.admin_users = [
      {
        id: 1,
        nome: 'Administrador AtualEstilo',
        email: 'admin@atualestilo.com.br',
        password_hash: bcrypt.hashSync('admin123', 10)
      }
    ];
  }

  async getBarbeiroConfig(id) {
    const b = this.barbeiros_config.find(x => x.id === parseInt(id));
    return b ? { ...b, horarios: [...b.horarios] } : null;
  }

  async getAllBarbeirosConfig() {
    return this.barbeiros_config.map(b => ({ ...b, horarios: [...b.horarios] }));
  }

  async updateBarbeiroHorarios(id, horarios) {
    const idx = this.barbeiros_config.findIndex(x => x.id === parseInt(id));
    if (idx !== -1) {
      this.barbeiros_config[idx].horarios = [...horarios];
      return true;
    }
    return false;
  }

  async getAgendamentosOcupados(data, barbeiroId) {
    return this.agendamentos.filter(
      ag => ag.data_agendamento === data &&
            ag.barbeiro_id === parseInt(barbeiroId) &&
            ag.status !== 'cancelado'
    );
  }

  async insertAgendamento(agendamento) {
    const novo = {
      id: this.nextAgendamentoId++,
      nome: agendamento.nome,
      telefone: agendamento.telefone || '',
      servico: agendamento.servico,
      valor: Number(agendamento.valor) || 0,
      barbeiro_id: parseInt(agendamento.barbeiro_id),
      barbeiro_nome: agendamento.barbeiro_nome,
      data_agendamento: agendamento.data_agendamento,
      horario: agendamento.horario,
      status: agendamento.status || 'confirmado',
      created_at: new Date().toISOString()
    };
    this.agendamentos.push(novo);
    return novo;
  }

  async insertBatchAgendamentos(lista) {
    const criados = [];
    for (const item of lista) {
      const ag = await this.insertAgendamento(item);
      criados.push(ag);
    }
    return criados;
  }

  async getAgendamentosPorTelefone(telefone, dataMinima) {
    const apenasDigitos = String(telefone || '').replace(/\D/g, '');
    return this.agendamentos.filter(ag => {
      const dbDigitos = String(ag.telefone || '').replace(/\D/g, '');
      const matchTel = ag.telefone === telefone || (apenasDigitos && dbDigitos === apenasDigitos);
      const matchStatus = ag.status === 'confirmado';
      const matchData = dataMinima ? ag.data_agendamento >= dataMinima : true;
      return matchTel && matchStatus && matchData;
    }).sort((a, b) => (a.data_agendamento + a.horario).localeCompare(b.data_agendamento + b.horario));
  }

  async getAgendamentoById(id) {
    return this.agendamentos.find(ag => ag.id === parseInt(id)) || null;
  }

  async updateAgendamentoStatus(id, status) {
    const idx = this.agendamentos.findIndex(ag => ag.id === parseInt(id));
    if (idx !== -1) {
      this.agendamentos[idx].status = status;
      return this.agendamentos[idx];
    }
    return null;
  }

  async deleteAgendamento(id) {
    const idx = this.agendamentos.findIndex(ag => ag.id === parseInt(id));
    if (idx !== -1) {
      const removido = this.agendamentos.splice(idx, 1)[0];
      return removido;
    }
    return null;
  }

  async listAgendamentosAdmin({ dataLimite, busca, data, barbeiroId }) {
    return this.agendamentos.filter(ag => {
      if (dataLimite && ag.data_agendamento < dataLimite) return false;
      if (data && ag.data_agendamento !== data) return false;
      if (barbeiroId && ag.barbeiro_id !== parseInt(barbeiroId)) return false;
      if (busca) {
        const q = busca.toLowerCase();
        const matchNome = ag.nome.toLowerCase().includes(q);
        const matchTel = ag.telefone.includes(q);
        if (!matchNome && !matchTel) return false;
      }
      return true;
    }).sort((a, b) => a.data_agendamento.localeCompare(b.data_agendamento) || a.horario.localeCompare(b.horario));
  }

  async concluirAgendamentosPassados(dataHoje) {
    let afetados = 0;
    this.agendamentos.forEach(ag => {
      if (ag.status === 'confirmado' && ag.data_agendamento < dataHoje && ag.nome !== 'BLOQUEIO') {
        ag.status = 'concluido';
        afetados++;
      }
    });
    return afetados;
  }

  async findAdminByEmail(email) {
    return this.admin_users.find(u => u.email.toLowerCase() === email.toLowerCase()) || null;
  }
}
