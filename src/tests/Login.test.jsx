import React from 'react';
import { render, screen, fireEvent, waitFor } from '@testing-library/react';
import { describe, it, expect, vi, beforeEach } from 'vitest';
import { Login } from '../pages/Login';
import { api } from '../services/api';

vi.mock('../services/api', () => ({
  api: {
    login: vi.fn()
  }
}));

describe('Login Component Revamp (TDD)', () => {
  beforeEach(() => {
    vi.clearAllMocks();
  });

  it('deve renderizar campos de email, senha e botão de entrar', () => {
    render(<Login />);
    expect(screen.getByPlaceholderText(/seu-email@gmail.com/i)).toBeInTheDocument();
    expect(screen.getByPlaceholderText(/••••••••/i)).toBeInTheDocument();
    expect(screen.getByRole('button', { name: /Entrar no Painel/i })).toBeInTheDocument();
  });

  it('deve chamar a API de login com as credenciais corretas', async () => {
    api.login.mockResolvedValue({
      token: 'fake_jwt_token',
      user: { id: 1, email: 'schaidenunes.dev@gmail.com' }
    });

    const onLoginSucesso = vi.fn();
    render(<Login onLoginSucesso={onLoginSucesso} />);

    const inputEmail = screen.getByPlaceholderText(/seu-email@gmail.com/i);
    const inputSenha = screen.getByPlaceholderText(/••••••••/i);
    const btnEntrar = screen.getByRole('button', { name: /Entrar no Painel/i });

    fireEvent.change(inputEmail, { target: { value: 'schaidenunes.dev@gmail.com' } });
    fireEvent.change(inputSenha, { target: { value: 'schaide134679852' } });
    fireEvent.click(btnEntrar);

    await waitFor(() => {
      expect(api.login).toHaveBeenCalledWith('schaidenunes.dev@gmail.com', 'schaide134679852');
      expect(onLoginSucesso).toHaveBeenCalled();
    });
  });

  it('deve exibir mensagem de erro se o login falhar', async () => {
    api.login.mockRejectedValue(new Error('Credenciais inválidas'));

    render(<Login />);
    const inputEmail = screen.getByPlaceholderText(/seu-email@gmail.com/i);
    const inputSenha = screen.getByPlaceholderText(/••••••••/i);
    const btnEntrar = screen.getByRole('button', { name: /Entrar no Painel/i });

    fireEvent.change(inputEmail, { target: { value: 'schaidenunes.dev@gmail.com' } });
    fireEvent.change(inputSenha, { target: { value: 'senhaerrada' } });
    fireEvent.click(btnEntrar);

    await waitFor(() => {
      expect(screen.getByText(/Email ou senha incorretos/i)).toBeInTheDocument();
    });
  });
});
