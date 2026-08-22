import React from 'react';
import { render, screen, fireEvent, waitFor } from '@testing-library/react';
import { describe, it, expect, vi, beforeEach } from 'vitest';
import { Admin } from '../pages/Admin';
import { api } from '../services/api';

vi.mock('../services/api', () => ({
  api: {
    getAgendamentosAdmin: vi.fn(),
    getHorariosDisponiveis: vi.fn(),
    getConfigHorariosBarbeiro: vi.fn(),
    salvarConfigHorariosBarbeiro: vi.fn(),
    criarAgendamentoAdmin: vi.fn(),
    criarBloqueioLote: vi.fn(),
    concluirAgendamentoAdmin: vi.fn(),
    deletarAgendamentoAdmin: vi.fn(),
    getClientesFixos: vi.fn(),
    deletarLoteClientesFixos: vi.fn()
  }
}));

describe('Admin Component Revamp (TDD)', () => {
  beforeEach(() => {
    vi.clearAllMocks();
    api.getAgendamentosAdmin.mockResolvedValue([
      {
        id: 1,
        nome: 'Carlos Eduardo',
        telefone: '(75) 99130-9594',
        servico: 'Corte e Barba - R$ 35',
        valor: 35,
        barbeiro_id: 1,
        barbeiro_nome: 'Geilson',
        data_agendamento: '2026-08-25',
        horario: '14:00',
        status: 'confirmado'
      }
    ]);
    api.getHorariosDisponiveis.mockResolvedValue(['08:30', '14:00', '16:00']);
    api.getClientesFixos.mockResolvedValue([
      {
        chave: 'carlos_75991309594_1_14:00',
        nome: 'Carlos Eduardo',
        telefone: '(75) 99130-9594',
        barbeiro_id: 1,
        barbeiro_nome: 'Geilson',
        servico: 'Corte e Barba - R$ 35',
        horario: '14:00',
        datas: [
          { id: 1, data_agendamento: '2026-08-25', horario: '14:00', status: 'confirmado' },
          { id: 2, data_agendamento: '2026-09-01', horario: '14:00', status: 'confirmado' }
        ]
      }
    ]);
  });

  it('deve renderizar o cabeçalho, abas e ações rápidas com design renovado', async () => {
    render(<Admin onLogout={vi.fn()} />);

    expect(screen.getByText(/Painel Administrativo/i)).toBeInTheDocument();
    expect(screen.getByRole('button', { name: /Pendentes/i })).toBeInTheDocument();
    expect(screen.getByRole('button', { name: /Concluídos/i })).toBeInTheDocument();
    expect(screen.getByRole('button', { name: /Bloqueios/i })).toBeInTheDocument();
    expect(screen.getByRole('button', { name: /Configuração/i })).toBeInTheDocument();
    expect(screen.getByText(/^Ações$/i)).toBeInTheDocument();

    expect(screen.getByRole('button', { name: /Novo Agendamento/i })).toBeInTheDocument();
    expect(screen.getByRole('button', { name: /Clientes Fixos/i })).toBeInTheDocument();
    expect(screen.getByRole('button', { name: /Bloqueio em Lote/i })).toBeInTheDocument();
    expect(screen.getByRole('button', { name: /Bloqueio Unitário/i })).toBeInTheDocument();

    await waitFor(() => {
      expect(screen.getByText('Carlos Eduardo')).toBeInTheDocument();
    });
  });

  it('deve abrir o modal de Novo Agendamento ao clicar no botão correspondente', async () => {
    render(<Admin onLogout={vi.fn()} />);

    const btnNovo = screen.getByRole('button', { name: /Novo Agendamento/i });
    fireEvent.click(btnNovo);

    expect(screen.getByText('NOME DO CLIENTE')).toBeInTheDocument();
    expect(screen.getByText(/Confirmar Agendamento/i)).toBeInTheDocument();
  });

  it('deve abrir o modal de Gestão de Clientes Fixos ao clicar em Clientes Fixos', async () => {
    render(<Admin onLogout={vi.fn()} />);

    const btnFixos = screen.getByRole('button', { name: /Clientes Fixos/i });
    fireEvent.click(btnFixos);

    expect(screen.getByText(/Gestão de Clientes Fixos/i)).toBeInTheDocument();
    await waitFor(() => {
      expect(screen.getByText(/Cadastrados/i)).toBeInTheDocument();
    });
  });

  it('deve alternar para a aba de Configuração e listar horários', async () => {
    api.getConfigHorariosBarbeiro.mockResolvedValue({
      horarios: ['08:30', '09:30', '10:00']
    });

    render(<Admin onLogout={vi.fn()} />);
    const btnConfig = screen.getByRole('button', { name: /Configuração/i });
    fireEvent.click(btnConfig);

    await waitFor(() => {
      expect(screen.getByText(/Configurar Horários de Atendimento/i)).toBeInTheDocument();
      expect(screen.getByText('✕ 08:30')).toBeInTheDocument();
      expect(screen.getByText('✕ 09:30')).toBeInTheDocument();
    });
  });
});
