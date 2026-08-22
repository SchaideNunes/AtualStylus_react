import { filtrarHorariosPassadosSeHoje, getDataHojeString, normalizarDataISO } from '../utils/dateUtils.js';

export class AgendamentoService {
  constructor(db) {
    this.db = db;
  }

  async verificarHorariosDisponiveis(dataSelecionada, barbeiroId) {
    if (!dataSelecionada || !barbeiroId) return [];

    const id = parseInt(barbeiroId);
    const config = await this.db.getBarbeiroConfig(id);
    if (!config || !config.horarios) return [];

    const horariosDoBarbeiro = config.horarios;
    const ocupadosRows = await this.db.getAgendamentosOcupados(dataSelecionada, id);
    const ocupados = ocupadosRows.map(o => o.horario);

    let livres = horariosDoBarbeiro.filter(h => !ocupados.includes(h));

    const hoje = getDataHojeString();
    if (dataSelecionada === hoje) {
      livres = filtrarHorariosPassadosSeHoje(livres);
    }

    return livres;
  }

  async criarAgendamento(dados) {
    const {
      nome,
      telefone,
      servico,
      valor,
      barbeiro_id,
      barbeiro_nome,
      data_agendamento,
      horario
    } = dados;

    if (!nome || !servico || !barbeiro_id || !data_agendamento || !horario) {
      throw new Error('Preencha todos os campos obrigatórios');
    }

    // Validação de Concorrência
    const horariosLivres = await this.verificarHorariosDisponiveis(data_agendamento, barbeiro_id);
    if (!horariosLivres.includes(horario)) {
      throw new Error('Horário não disponível. Por favor, selecione outro.');
    }

    return await this.db.insertAgendamento({
      nome: String(nome).trim(),
      telefone: String(telefone || '').trim(),
      servico,
      valor: Number(valor) || 0,
      barbeiro_id: parseInt(barbeiro_id),
      barbeiro_nome: barbeiro_nome || (parseInt(barbeiro_id) === 1 ? 'Geilson' : 'Denilson'),
      data_agendamento,
      horario,
      status: 'confirmado'
    });
  }

  async buscarPorTelefone(telefone, dataMinima) {
    if (!telefone) return [];
    await this.concluirAgendamentosPassados();
    const min = dataMinima || getDataHojeString();
    return await this.db.getAgendamentosPorTelefone(telefone, min);
  }

  async cancelarAgendamento(id) {
    const ag = await this.db.getAgendamentoById(id);
    if (!ag) throw new Error('Agendamento não encontrado');
    return await this.db.updateAgendamentoStatus(id, 'cancelado');
  }

  async concluirAgendamento(id) {
    const ag = await this.db.getAgendamentoById(id);
    if (!ag) throw new Error('Agendamento não encontrado');
    return await this.db.updateAgendamentoStatus(id, 'concluido');
  }

  async deletarAgendamento(id) {
    const ag = await this.db.getAgendamentoById(id);
    if (!ag) throw new Error('Agendamento não encontrado');
    return await this.db.deleteAgendamento(id);
  }

  async concluirAgendamentosPassados(dataReferencia) {
    const hoje = dataReferencia || getDataHojeString();
    if (this.db.concluirAgendamentosPassados) {
      return await this.db.concluirAgendamentosPassados(hoje);
    }
    return 0;
  }

  async listarAdmin(filtros = {}) {
    await this.concluirAgendamentosPassados();
    const dataLimite = filtros.dataLimite;
    return await this.db.listAgendamentosAdmin({
      dataLimite,
      busca: filtros.busca,
      data: filtros.data,
      barbeiroId: filtros.barbeiroId
    });
  }

  async criarBloqueioEmLote({ barbeiro_id, barbeiro_nome, data_agendamento, horarios }) {
    if (!barbeiro_id || !data_agendamento || !horarios || horarios.length === 0) {
      throw new Error('Dados inválidos para bloqueio em lote');
    }

    const bId = parseInt(barbeiro_id);
    const bNome = barbeiro_nome || (bId === 1 ? 'Geilson' : 'Denilson');

    const lista = horarios.map(horario => ({
      nome: 'BLOQUEIO',
      telefone: '',
      servico: 'BLOQUEIO ADMIN',
      valor: 0,
      barbeiro_id: bId,
      barbeiro_nome: bNome,
      data_agendamento,
      horario,
      status: 'bloqueado'
    }));

    return await this.db.insertBatchAgendamentos(lista);
  }

  async criarClienteRecorrente(dados, totalRepeticoes) {
    const {
      nome,
      telefone,
      servico,
      valor,
      barbeiro_id,
      barbeiro_nome,
      data_inicial,
      data_agendamento,
      horario,
      frequencia = 'semanal'
    } = dados;

    const dataBase = normalizarDataISO(data_inicial || data_agendamento);
    if (!dataBase) {
      throw new Error('Data inicial é obrigatória para cliente recorrente');
    }

    const bId = parseInt(barbeiro_id) || 1;
    const bNome = barbeiro_nome || (bId === 1 ? 'Geilson' : 'Denilson');
    const inserts = [];

    const [ano, mes, dia] = dataBase.split('-').map(Number);
    let dataAtual = new Date(ano, mes - 1, dia);

    let repeticoes = totalRepeticoes;
    if (!repeticoes) {
      if (frequencia === 'quinzenal') repeticoes = 26;
      else if (frequencia === 'mensal') repeticoes = 12;
      else repeticoes = 52; // semanal
    }

    for (let i = 0; i < repeticoes; i++) {
      const y = dataAtual.getFullYear();
      const m = String(dataAtual.getMonth() + 1).padStart(2, '0');
      const d = String(dataAtual.getDate()).padStart(2, '0');
      const dataStr = `${y}-${m}-${d}`;

      inserts.push({
        nome: String(nome || 'CLIENTE FIXO').trim(),
        telefone: String(telefone || '').trim(),
        servico: servico || 'Corte e Barba - R$ 35',
        valor: Number(valor) || 0,
        barbeiro_id: bId,
        barbeiro_nome: bNome,
        data_agendamento: dataStr,
        horario,
        status: (nome === 'BLOQUEIO' || dados.status === 'bloqueado') ? 'bloqueado' : 'confirmado'
      });

      if (frequencia === 'quinzenal') {
        dataAtual.setDate(dataAtual.getDate() + 14);
      } else if (frequencia === 'mensal') {
        dataAtual = new Date(ano, mes - 1 + (i + 1), dia);
      } else {
        dataAtual.setDate(dataAtual.getDate() + 7);
      }
    }

    return await this.db.insertBatchAgendamentos(inserts);
  }

  async listarClientesFixos() {
    const hoje = getDataHojeString();
    await this.concluirAgendamentosPassados(hoje);

    const agendamentos = await this.db.listAgendamentosAdmin({ dataLimite: hoje });

    const grupos = {};
    for (const ag of agendamentos) {
      if (ag.status === 'cancelado' || ag.status === 'bloqueado' || ag.nome === 'BLOQUEIO') continue;
      const chave = `${ag.nome.toLowerCase().trim()}_${String(ag.telefone || '').replace(/\D/g, '')}_${ag.barbeiro_id}_${ag.horario}`;
      if (!grupos[chave]) {
        grupos[chave] = {
          chave,
          nome: ag.nome,
          telefone: ag.telefone,
          barbeiro_id: ag.barbeiro_id,
          barbeiro_nome: ag.barbeiro_nome,
          servico: ag.servico,
          horario: ag.horario,
          datas: []
        };
      }
      grupos[chave].datas.push({
        id: ag.id,
        data_agendamento: normalizarDataISO(ag.data_agendamento),
        horario: ag.horario,
        status: ag.status
      });
    }

    return Object.values(grupos).filter(g => g.datas.length >= 2 || g.nome.toUpperCase().includes('FIXO'));
  }

  async deletarLoteAgendamentos(ids) {
    if (!ids || !Array.isArray(ids) || ids.length === 0) return 0;
    let count = 0;
    for (const id of ids) {
      await this.db.deleteAgendamento(id);
      count++;
    }
    return count;
  }

  async obterConfigHorarios(barbeiroId) {
    return await this.db.getBarbeiroConfig(barbeiroId);
  }

  async obterTodosBarbeirosConfig() {
    return await this.db.getAllBarbeirosConfig();
  }

  async salvarConfigHorarios(barbeiroId, horarios) {
    if (!horarios || !Array.isArray(horarios)) {
      throw new Error('Horários inválidos');
    }
    const ordenados = [...horarios].sort();
    return await this.db.updateBarbeiroHorarios(barbeiroId, ordenados);
  }
}
