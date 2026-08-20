import React from 'react';
import { render, screen, fireEvent, waitFor } from '@testing-library/react';
import { describe, it, expect, vi, beforeEach } from 'vitest';
import { Agendamento } from '../pages/Agendamento';
import { api } from '../services/api';

vi.mock('../services/api', () => ({
  api: {
    getHorariosDisponiveis: vi.fn(),
    criarAgendamento: vi.fn()
  }
}));

describe('Agendamento Component (TDD)', () => {
  beforeEach(() => {
    vi.clearAllMocks();
    api.getHorariosDisponiveis.mockResolvedValue(['09:30', '10:00', '14:00']);
  });

  it('deve renderizar opções dos dois barbeiros e inputs do formulário', () => {
    render(<Agendamento />);

    expect(screen.getByText('Geilson')).toBeInTheDocument();
    expect(screen.getByText('Denilson')).toBeInTheDocument();
    expect(screen.getByLabelText(/Data do Agendamento/i)).toBeInTheDocument();
    expect(screen.getByPlaceholderText(/Digite seu nome completo/i)).toBeInTheDocument();
    expect(screen.getByPlaceholderText(/\(00\) 00000-0000/i)).toBeInTheDocument();
  });

  it('deve formatar o WhatsApp automaticamente enquanto o usuário digita', () => {
    render(<Agendamento />);
    const inputTel = screen.getByPlaceholderText(/\(00\) 00000-0000/i);

    fireEvent.change(inputTel, { target: { value: '75991309594' } });
    expect(inputTel.value).toBe('(75) 99130-9594');
  });

  it('deve manter o botão de confirmação desabilitado enquanto o formulário estiver incompleto', () => {
    render(<Agendamento />);
    const botao = screen.getByRole('button', { name: /1\. Escolha o profissional acima/i });
    expect(botao).toBeDisabled();
  });

  it('deve buscar horários disponíveis ao selecionar um barbeiro', async () => {
    render(<Agendamento />);
    const radioGeilson = screen.getByLabelText(/Geilson/i);

    fireEvent.click(radioGeilson);

    await waitFor(() => {
      expect(api.getHorariosDisponiveis).toHaveBeenCalled();
    });
  });
});
