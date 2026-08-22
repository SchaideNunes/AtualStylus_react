const API_BASE = '/api';

function getAuthHeaders() {
  const token = localStorage.getItem('token_admin_atualestilo');
  return token ? { Authorization: `Bearer ${token}` } : {};
}

export const api = {
  // ==========================================
  // AUTENTICAÇÃO
  // ==========================================
  async login(email, password) {
    const res = await fetch(`${API_BASE}/auth/login`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ email, password })
    });
    const data = await res.json();
    if (!res.ok) throw new Error(data.error || 'Erro ao realizar login');
    return data;
  },

  async me() {
    const res = await fetch(`${API_BASE}/auth/me`, {
      headers: getAuthHeaders()
    });
    if (!res.ok) throw new Error('Não autenticado');
    return await res.json();
  },

  logout() {
    localStorage.removeItem('token_admin_atualestilo');
  },

  // ==========================================
  // CLIENTE & AGENDAMENTO
  // ==========================================
  async getBarbeiros() {
    const res = await fetch(`${API_BASE}/barbeiros`);
    const data = await res.json();
    if (!res.ok) throw new Error(data.error || 'Erro ao buscar barbeiros');
    return data;
  },

  async getHorariosDisponiveis(data, barbeiroId) {
    const res = await fetch(`${API_BASE}/horarios-disponiveis?data=${encodeURIComponent(data)}&barbeiroId=${encodeURIComponent(barbeiroId)}`);
    const json = await res.json();
    if (!res.ok) throw new Error(json.error || 'Erro ao buscar horários');
    return json;
  },

  async criarAgendamento(agendamento) {
    const res = await fetch(`${API_BASE}/agendamentos`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(agendamento)
    });
    const json = await res.json();
    if (!res.ok) throw new Error(json.error || 'Erro ao criar agendamento');
    return json;
  },

  async getMeusAgendamentos(telefone) {
    const res = await fetch(`${API_BASE}/agendamentos/cliente?telefone=${encodeURIComponent(telefone)}`);
    const json = await res.json();
    if (!res.ok) throw new Error(json.error || 'Erro ao buscar agendamentos');
    return json;
  },

  async cancelarAgendamentoCliente(id) {
    const res = await fetch(`${API_BASE}/agendamentos/${id}/cancelar`, {
      method: 'POST'
    });
    const json = await res.json();
    if (!res.ok) throw new Error(json.error || 'Erro ao cancelar agendamento');
    return json;
  },

  // ==========================================
  // ADMIN
  // ==========================================
  async getAgendamentosAdmin(filtros = {}) {
    const params = new URLSearchParams();
    if (filtros.dataLimite) params.append('dataLimite', filtros.dataLimite);
    if (filtros.busca) params.append('busca', filtros.busca);
    if (filtros.data) params.append('data', filtros.data);
    if (filtros.barbeiroId) params.append('barbeiroId', filtros.barbeiroId);

    const res = await fetch(`${API_BASE}/admin/agendamentos?${params.toString()}`, {
      headers: getAuthHeaders()
    });
    const json = await res.json();
    if (!res.ok) throw new Error(json.error || 'Erro ao carregar agendamentos do admin');
    return json;
  },

  async criarAgendamentoAdmin(dados) {
    const res = await fetch(`${API_BASE}/admin/agendamentos`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        ...getAuthHeaders()
      },
      body: JSON.stringify(dados)
    });
    const json = await res.json();
    if (!res.ok) throw new Error(json.error || 'Erro ao salvar agendamento');
    return json;
  },

  async criarBloqueioLote(dados) {
    const res = await fetch(`${API_BASE}/admin/bloqueios/lote`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        ...getAuthHeaders()
      },
      body: JSON.stringify(dados)
    });
    const json = await res.json();
    if (!res.ok) throw new Error(json.error || 'Erro ao criar bloqueios em lote');
    return json;
  },

  async concluirAgendamentoAdmin(id) {
    const res = await fetch(`${API_BASE}/admin/agendamentos/${id}/concluir`, {
      method: 'PUT',
      headers: getAuthHeaders()
    });
    const json = await res.json();
    if (!res.ok) throw new Error(json.error || 'Erro ao concluir agendamento');
    return json;
  },

  async deletarAgendamentoAdmin(id) {
    const res = await fetch(`${API_BASE}/admin/agendamentos/${id}`, {
      method: 'DELETE',
      headers: getAuthHeaders()
    });
    const json = await res.json();
    if (!res.ok) throw new Error(json.error || 'Erro ao deletar agendamento');
    return json;
  },

  async getClientesFixos() {
    const res = await fetch(`${API_BASE}/admin/clientes-fixos`, {
      headers: getAuthHeaders()
    });
    const json = await res.json();
    if (!res.ok) throw new Error(json.error || 'Erro ao carregar clientes fixos');
    return json;
  },

  async deletarLoteClientesFixos(ids) {
    const res = await fetch(`${API_BASE}/admin/clientes-fixos/deletar-lote`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        ...getAuthHeaders()
      },
      body: JSON.stringify({ ids })
    });
    const json = await res.json();
    if (!res.ok) throw new Error(json.error || 'Erro ao remover agendamentos fixos');
    return json;
  },

  async getConfigHorariosBarbeiro(id) {
    const res = await fetch(`${API_BASE}/admin/config/barbeiro/${id}`, {
      headers: getAuthHeaders()
    });
    const json = await res.json();
    if (!res.ok) throw new Error(json.error || 'Erro ao carregar configurações de horários');
    return json;
  },

  async salvarConfigHorariosBarbeiro(id, horarios) {
    const res = await fetch(`${API_BASE}/admin/config/barbeiro/${id}`, {
      method: 'PUT',
      headers: {
        'Content-Type': 'application/json',
        ...getAuthHeaders()
      },
      body: JSON.stringify({ horarios })
    });
    const json = await res.json();
    if (!res.ok) throw new Error(json.error || 'Erro ao salvar configurações');
    return json;
  },

  // ==========================================
  // PRODUTOS (VITRINE & ADMIN)
  // ==========================================
  async getProdutosPublicos() {
    const res = await fetch(`${API_BASE}/produtos`);
    const json = await res.json();
    if (!res.ok) throw new Error(json.error || 'Erro ao carregar produtos');
    return json;
  },

  async getProdutosAdmin(filtros = {}) {
    const params = new URLSearchParams();
    if (filtros.categoria) params.append('categoria', filtros.categoria);
    if (filtros.busca) params.append('busca', filtros.busca);
    if (filtros.em_promocao !== undefined) params.append('em_promocao', String(filtros.em_promocao));

    const res = await fetch(`${API_BASE}/admin/produtos?${params.toString()}`, {
      headers: getAuthHeaders()
    });
    const json = await res.json();
    if (!res.ok) throw new Error(json.error || 'Erro ao carregar produtos no admin');
    return json;
  },

  async criarProdutoAdmin(dados) {
    const res = await fetch(`${API_BASE}/admin/produtos`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        ...getAuthHeaders()
      },
      body: JSON.stringify(dados)
    });
    const json = await res.json();
    if (!res.ok) throw new Error(json.error || 'Erro ao cadastrar produto');
    return json;
  },

  async atualizarProdutoAdmin(id, dados) {
    const res = await fetch(`${API_BASE}/admin/produtos/${id}`, {
      method: 'PUT',
      headers: {
        'Content-Type': 'application/json',
        ...getAuthHeaders()
      },
      body: JSON.stringify(dados)
    });
    const json = await res.json();
    if (!res.ok) throw new Error(json.error || 'Erro ao atualizar produto');
    return json;
  },

  async deletarProdutoAdmin(id) {
    const res = await fetch(`${API_BASE}/admin/produtos/${id}`, {
      method: 'DELETE',
      headers: getAuthHeaders()
    });
    const json = await res.json();
    if (!res.ok) throw new Error(json.error || 'Erro ao excluir produto');
    return json;
  }
};
