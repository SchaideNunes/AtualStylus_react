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
        foto: 'assets/Geilson.webp',
        horarios: ["08:30", "09:30", "10:00", "11:00", "14:00", "14:30", "15:30", "16:00", "17:00", "17:30", "18:00", "18:30"]
      },
      {
        id: 2,
        nome: 'Denilson',
        telefone_whatsapp: '5575991073283',
        foto: 'assets/Denilson.webp',
        horarios: ["08:30", "09:30", "10:00", "11:00", "14:00", "14:30", "15:30", "16:00", "17:00"]
      }
    ];

    this.agendamentos = [];
    this.nextAgendamentoId = 1;

    this.admin_users = [
      {
        id: 1,
        nome: 'Administrador AtualEstilo',
        email: 'admin@atualestilo.com',
        password_hash: '$2a$10$Jdi8oFosfsbPK9nR4EEc4uL1V0O.uRSQ8IUmSjDSUsHu6x9UKHh6u' // 'admin123'
      }
    ];

    this.produtos = [
      {
        id: 1,
        nome: 'Pomada Modeladora Efeito Matte',
        descricao: 'Alta fixação sem brilho, ideal para penteados estruturados e durabilidade o dia todo.',
        preco: 35.00,
        preco_promocional: 28.00,
        porcentagem_desconto: 20,
        em_promocao: true,
        foto: '/assets/degrade.webp',
        categoria: 'Cabelo & Penteado',
        ativo: true
      },
      {
        id: 2,
        nome: 'Óleo para Barba Hidratação Profunda',
        descricao: 'Fórmula nutritiva com óleos essenciais que amaciam os fios e perfumam com toque amadeirado.',
        preco: 40.00,
        preco_promocional: null,
        porcentagem_desconto: 0,
        em_promocao: false,
        foto: '/assets/corte-barba.webp',
        categoria: 'Barba & Cuidados',
        ativo: true
      }
    ];
    this.nextProdutoId = 3;
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

  async getProdutosPublicos() {
    return this.produtos
      .filter(p => Boolean(p.ativo))
      .map(p => ({ ...p }));
  }

  async listProdutosAdmin(filtros = {}) {
    return this.produtos.filter(p => {
      if (filtros.categoria && filtros.categoria !== 'Todos' && p.categoria !== filtros.categoria) return false;
      if (filtros.busca) {
        const q = filtros.busca.toLowerCase();
        const matchNome = p.nome.toLowerCase().includes(q);
        const matchDesc = p.descricao?.toLowerCase().includes(q);
        if (!matchNome && !matchDesc) return false;
      }
      if (filtros.em_promocao !== undefined && Boolean(p.em_promocao) !== Boolean(filtros.em_promocao)) return false;
      return true;
    }).map(p => ({ ...p }));
  }

  async getProdutoById(id) {
    const item = this.produtos.find(p => p.id === parseInt(id));
    return item ? { ...item } : null;
  }

  async insertProduto(dados) {
    const novoProduto = {
      id: this.nextProdutoId++,
      ...dados
    };
    this.produtos.push(novoProduto);
    return { ...novoProduto };
  }

  async updateProduto(id, dados) {
    const idx = this.produtos.findIndex(p => p.id === parseInt(id));
    if (idx !== -1) {
      this.produtos[idx] = {
        ...this.produtos[idx],
        ...dados,
        id: parseInt(id)
      };
      return { ...this.produtos[idx] };
    }
    return null;
  }

  async deleteProduto(id) {
    const idx = this.produtos.findIndex(p => p.id === parseInt(id));
    if (idx !== -1) {
      const removido = this.produtos.splice(idx, 1)[0];
      return { ...removido };
    }
    return null;
  }
}
