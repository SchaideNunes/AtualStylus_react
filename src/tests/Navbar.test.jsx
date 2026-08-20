import React from 'react';
import { render, screen, fireEvent } from '@testing-library/react';
import { describe, it, expect, vi } from 'vitest';
import { Navbar } from '../components/Navbar';

describe('Navbar Component (TDD)', () => {
  it('deve renderizar links de navegação e destacar a página ativa', () => {
    const onNavegar = vi.fn();
    render(<Navbar paginaAtiva="agendamento" onNavegar={onNavegar} />);

    expect(screen.getAllByText('Início')[0]).toBeInTheDocument();
    expect(screen.getAllByText('Agendar')[0]).toBeInTheDocument();
    expect(screen.getAllByText('Sobre Nós')[0]).toBeInTheDocument();
    expect(screen.getAllByText('Meus Agendamentos')[0]).toBeInTheDocument();

    const linkAgendar = screen.getAllByText('Agendar')[0];
    expect(linkAgendar).toHaveClass('ativo');
  });

  it('deve chamar onNavegar quando um link for clicado', () => {
    const onNavegar = vi.fn();
    render(<Navbar paginaAtiva="inicio" onNavegar={onNavegar} />);

    fireEvent.click(screen.getAllByText('Sobre Nós')[0]);
    expect(onNavegar).toHaveBeenCalledWith('sobre');
  });

  it('deve abrir e fechar a gaveta lateral (drawer) no mobile', () => {
    const onNavegar = vi.fn();
    render(<Navbar paginaAtiva="inicio" onNavegar={onNavegar} />);

    const botaoMenu = screen.getByLabelText(/Abrir Menu/i);
    fireEvent.click(botaoMenu);

    const gaveta = screen.getByTestId('drawer-mobile');
    expect(gaveta).toHaveClass('aberto');

    const linkMobile = screen.getAllByText('Meus Agendamentos')[1];
    fireEvent.click(linkMobile);
    expect(onNavegar).toHaveBeenCalledWith('meusAgendamentos');
  });
});
