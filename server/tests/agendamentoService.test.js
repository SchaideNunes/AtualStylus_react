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
      data_agendamento: '2026-08-25',
      horario: '15:30',
      status: 'confirmado'
    });

    const agendamentos = await service.buscarPorTelefone('(75) 99111-2222', '2026-08-20');
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
      data_agendamento: '2026-08-25',
      horario: '15:30',
      status: 'confirmado'
    });

    await service.cancelarAgendamento(ag.id);

    const agendamentos = await service.buscarPorTelefone('(75) 99111-2222', '2026-08-20');
    expect(agendamentos.length).toBe(0);

    const horariosLivres = await service.verificarHorariosDisponiveis('2026-08-25', 2);
    expect(horariosLivres).toContain('15:30');
  });

  it('deve permitir criação de bloqueios em lote no painel admin', async () => {
    await service.criarBloqueioEmLote({
      barbeiro_id: 1,
      barbeiro_nome: 'Geilson',
      data_agendamento: '2026-08-26',
      horarios: ['08:30', '09:30', '10:00']
    });

    const horarios = await service.verificarHorariosDisponiveis('2026-08-26', 1);
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
});
