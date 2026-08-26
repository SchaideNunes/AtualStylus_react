import { describe, it, expect, beforeEach } from 'vitest';
import { AgendamentoService } from '../src/services/agendamentoService.js';
import { InMemoryDatabase } from '../src/db/inMemoryDb.js';

describe('Agendamento Service & SQL Business Rules (TDD)', () => {
  let db;
  let service;

  beforeEach(() => {
    db = new InMemoryDatabase();
    service = new AgendamentoService(db);
  });

  it('deve retornar horários padrão configurados para o barbeiro quando não houver agendamentos', async () => {
    const horarios = await service.verificarHorariosDisponiveis('2026-08-25', 1);
    expect(horarios).toContain('08:30');
    expect(horarios).toContain('14:00');
    expect(horarios).toContain('18:30');
  });

  it('deve subtrair horários já ocupados para a data e barbeiro', async () => {
    await service.criarAgendamento({
      nome: 'Cliente Teste',
      telefone: '(75) 99999-1111',
      servico: 'Degradê - R$ 25',
      valor: 25,
      barbeiro_id: 1,
      barbeiro_nome: 'Geilson',
      data_agendamento: '2026-08-25',
      horario: '10:00',
      status: 'confirmado'
    });

    const horarios = await service.verificarHorariosDisponiveis('2026-08-25', 1);
    expect(horarios).not.toContain('10:00');
    expect(horarios).toContain('08:30');
  });

  it('deve impedir criação de agendamento se o horário acabou de ser ocupado (Prevenção de Concorrência)', async () => {
    await service.criarAgendamento({
      nome: 'Primeiro Cliente',
      telefone: '(75) 99999-1111',
      servico: 'Corte e Barba - R$ 35',
      valor: 35,
      barbeiro_id: 1,
      barbeiro_nome: 'Geilson',
      data_agendamento: '2026-08-25',
      horario: '14:00',
      status: 'confirmado'
    });

    // Tentativa concorrente no mesmo horário
    await expect(service.criarAgendamento({
      nome: 'Segundo Cliente',
      telefone: '(75) 98888-2222',
      servico: 'Corte Social - R$ 25',
      valor: 25,
      barbeiro_id: 1,
      barbeiro_nome: 'Geilson',
      data_agendamento: '2026-08-25',
      horario: '14:00',
      status: 'confirmado'
    })).rejects.toThrow('Horário não disponível');
  });

  it('deve permitir que o cliente busque seus agendamentos pendentes por telefone', async () => {
    await service.criarAgendamento({
      nome: 'Marcos',
      telefone: '(75) 99111-2222',
      servico: 'Navalhado - R$ 25',
      valor: 25,
      barbeiro_id: 2,
      barbeiro_nome: 'Denilson',
      data_agendamento: '2029-08-25',
      horario: '15:30',
      status: 'confirmado'
    });

    const agendamentos = await service.buscarPorTelefone('(75) 99111-2222', '2020-01-01');
    expect(agendamentos.length).toBe(1);
    expect(agendamentos[0].nome).toBe('Marcos');
    expect(agendamentos[0].horario).toBe('15:30');
  });

  it('deve cancelar agendamento e liberar o horário imediatamente', async () => {
    const ag = await service.criarAgendamento({
      nome: 'Marcos',
      telefone: '(75) 99111-2222',
      servico: 'Navalhado - R$ 25',
      valor: 25,
      barbeiro_id: 2,
      barbeiro_nome: 'Denilson',
      data_agendamento: '2029-08-25',
      horario: '15:30',
      status: 'confirmado'
    });

    const cancelado = await service.cancelarAgendamento(ag.id);
    expect(cancelado.status).toBe('cancelado');

    const disponiveis = await service.verificarHorariosDisponiveis('2029-08-25', 2);
    expect(disponiveis).toContain('15:30');
  });

  it('deve permitir criação de bloqueios em lote no painel admin', async () => {
    await service.criarBloqueioEmLote({
      barbeiro_id: 1,
      barbeiro_nome: 'Geilson',
      data_agendamento: '2029-08-26',
      horarios: ['08:30', '09:30', '10:00']
    });

    const horarios = await service.verificarHorariosDisponiveis('2029-08-26', 1);
    expect(horarios).not.toContain('08:30');
    expect(horarios).not.toContain('09:30');
    expect(horarios).not.toContain('10:00');
  });

  it('deve permitir salvar nova lista de horários de atendimento do barbeiro', async () => {
    const novosHorarios = ['09:00', '10:00', '11:00', '15:00', '16:00'];
    await service.salvarConfigHorarios(1, novosHorarios);

    const config = await service.obterConfigHorarios(1);
    expect(config.horarios).toEqual(novosHorarios);
  });

  it('deve filtrar agendamentos por barbeiro e busca de texto no admin', async () => {
    await service.criarAgendamento({
      nome: 'Gabriel Santos',
      telefone: '(75) 98888-1111',
      servico: 'Corte Social - R$ 25',
      valor: 25,
      barbeiro_id: 1,
      barbeiro_nome: 'Geilson',
      data_agendamento: '2029-08-25',
      horario: '17:00',
      status: 'confirmado'
    });

    const resBarbeiro = await service.listarAdmin({ barbeiroId: 1 });
    expect(resBarbeiro.some(a => a.nome === 'Gabriel Santos')).toBe(true);

    const resBusca = await service.listarAdmin({ busca: 'Gabriel' });
    expect(resBusca.length).toBe(1);
    expect(resBusca[0].nome).toBe('Gabriel Santos');
  });

  it('deve concluir automaticamente agendamentos de dias que já passaram', async () => {
    await db.insertAgendamento({
      nome: 'Cliente Passado',
      telefone: '(75) 99999-0000',
      servico: 'Corte Social - R$ 25',
      valor: 25,
      barbeiro_id: 1,
      barbeiro_nome: 'Geilson',
      data_agendamento: '2020-08-20',
      horario: '10:00',
      status: 'confirmado'
    });

    await db.insertAgendamento({
      nome: 'Cliente Futuro',
      telefone: '(75) 99999-1111',
      servico: 'Degradê - R$ 25',
      valor: 25,
      barbeiro_id: 1,
      barbeiro_nome: 'Geilson',
      data_agendamento: '2029-08-25',
      horario: '14:00',
      status: 'confirmado'
    });

    await service.concluirAgendamentosPassados('2025-01-01');

    const listaAdmin = await service.listarAdmin({});
    const agPassado = listaAdmin.find(a => a.nome === 'Cliente Passado');
    const agFuturo = listaAdmin.find(a => a.nome === 'Cliente Futuro');

    expect(agPassado.status).toBe('concluido');
    expect(agFuturo.status).toBe('confirmado');
  });

  it('deve criar 52 agendamentos semanais para cliente fixo anual', async () => {
    const criados = await service.criarClienteRecorrente({
      nome: 'Cliente Semanal',
      telefone: '(75) 99999-8888',
      servico: 'Corte e Barba - R$ 35',
      valor: 35,
      barbeiro_id: 1,
      barbeiro_nome: 'Geilson',
      data_agendamento: '2029-08-25',
      horario: '08:30',
      frequencia: 'semanal'
    });

    expect(criados.length).toBe(52);
    expect(criados[0].data_agendamento).toBe('2029-08-25');
    expect(criados[1].data_agendamento).toBe('2029-09-01');
    expect(criados[51].horario).toBe('08:30');
  });

  it('deve criar 26 agendamentos quinzenais (de 15 em 15 dias)', async () => {
    const criados = await service.criarClienteRecorrente({
      nome: 'Cliente Quinzenal',
      telefone: '(75) 99999-7777',
      servico: 'Degradê - R$ 25',
      valor: 25,
      barbeiro_id: 2,
      barbeiro_nome: 'Denilson',
      data_agendamento: '2029-08-25',
      horario: '10:00',
      frequencia: 'quinzenal'
    });

    expect(criados.length).toBe(26);
    expect(criados[0].data_agendamento).toBe('2029-08-25');
    expect(criados[1].data_agendamento).toBe('2029-09-08'); // +14 dias (2 semanas exatas)
  });

  it('deve criar 12 agendamentos mensais (1 vez no mês)', async () => {
    const criados = await service.criarClienteRecorrente({
      nome: 'Cliente Mensal',
      telefone: '(75) 99999-6666',
      servico: 'Corte Social - R$ 25',
      valor: 25,
      barbeiro_id: 1,
      barbeiro_nome: 'Geilson',
      data_agendamento: '2029-08-25',
      horario: '14:00',
      frequencia: 'mensal'
    });

    expect(criados.length).toBe(12);
    expect(criados[0].data_agendamento).toBe('2029-08-25');
    expect(criados[1].data_agendamento).toBe('2029-09-25');
    expect(criados[2].data_agendamento).toBe('2029-10-25');
  });

  it('deve listar clientes fixos agrupados e permitir ver os dias ocupados', async () => {
    await service.criarClienteRecorrente({
      nome: 'Lucas Silva',
      telefone: '(75) 99123-4567',
      servico: 'Corte e Barba - R$ 35',
      valor: 35,
      barbeiro_id: 1,
      barbeiro_nome: 'Geilson',
      data_agendamento: '2029-08-25',
      horario: '09:30',
      frequencia: 'quinzenal'
    });

    const fixos = await service.listarClientesFixos();
    expect(fixos.length).toBeGreaterThanOrEqual(1);

    const lucas = fixos.find(f => f.nome === 'Lucas Silva');
    expect(lucas).toBeDefined();
    expect(lucas.telefone).toBe('(75) 99123-4567');
    expect(lucas.horario).toBe('09:30');
    expect(lucas.datas.length).toBe(26);
  });
});
