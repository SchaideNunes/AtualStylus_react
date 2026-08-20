import React from 'react';
import { render, screen, fireEvent, waitFor } from '@testing-library/react';
import { describe, it, expect, vi, beforeEach } from 'vitest';
import { MeusAgendamentos } from '../pages/MeusAgendamentos';
import { api } from '../services/api';

vi.mock('../services/api', () => ({
  api: {
    getMeusAgendamentos: vi.fn(),
    cancelarAgendamentoCliente: vi.fn()
  }
}));

describe('MeusAgendamentos Component (TDD)', () => {
  beforeEach(() => {
    vi.clearAllMocks();
  });

  it('deve renderizar campo de telefone com máscara e botão de busca', () => {
    render(<MeusAgendamentos />);
    expect(screen.getByPlaceholderText(/\(00\) 00000-0000/i)).toBeInTheDocument();
    expect(screen.getByRole('button', { name: /Buscar Agendamentos/i })).toBeInTheDocument();
  });

  it('deve buscar e exibir agendamentos retornados pela API', async () => {
    api.getMeusAgendamentos.mockResolvedValue([
      {
        id: 1,
        nome: 'Lucas',
        servico: 'Degradê - R$ 25',
        data_agendamento: '2026-08-25',
        horario: '14:30',
        barbeiro_nome: 'Geilson'
      }
    ]);

    render(<MeusAgendamentos />);
    const input = screen.getByPlaceholderText(/\(00\) 00000-0000/i);
    fireEvent.change(input, { target: { value: '75991309594' } });

    const btnBuscar = screen.getByRole('button', { name: /Buscar Agendamentos/i });
    fireEvent.click(btnBuscar);

    await waitFor(() => {
      expect(screen.getByText('Degradê - R$ 25')).toBeInTheDocument();
      expect(screen.getByText(/25\/08\/2026/i)).toBeInTheDocument();
      expect(screen.getByText('Geilson')).toBeInTheDocument();
      expect(screen.getByRole('button', { name: /Cancelar Agendamento/i })).toBeInTheDocument();
    });
  });
});
