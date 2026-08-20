import React from 'react';
import { render, screen, fireEvent } from '@testing-library/react';
import { describe, it, expect, vi } from 'vitest';
import { Home } from '../pages/Home';

describe('Home Component Revamp (TDD)', () => {
  it('deve renderizar a logo, badge de status e informações de funcionamento', () => {
    const onNavegar = vi.fn();
    const onSelecionarServico = vi.fn();

    render(<Home onNavegar={onNavegar} onSelecionarServico={onSelecionarServico} />);

    expect(screen.getByAltText(/Logo AtualEstilo/i)).toBeInTheDocument();
    expect(screen.getByText(/ESTILO & PRECISÃO/i)).toBeInTheDocument();
    expect(screen.getByText(/08:30 às 18:30/i)).toBeInTheDocument();
    expect(screen.getByText(/Barrocas - BA/i)).toBeInTheDocument();
  });

  it('deve navegar para a tela de agendamento ao clicar no botão CTA principal', () => {
    const onNavegar = vi.fn();
    render(<Home onNavegar={onNavegar} />);

    const botaoAgendar = screen.getByTestId('btn-hero-agendar');
    fireEvent.click(botaoAgendar);

    expect(onNavegar).toHaveBeenCalledWith('agendamento');
  });

  it('deve permitir agendar a partir de um card de serviço com serviço pré-selecionado', () => {
    const onNavegar = vi.fn();
    const onSelecionarServico = vi.fn();

    render(<Home onNavegar={onNavegar} onSelecionarServico={onSelecionarServico} />);

    const servicoCard = screen.getByText('Corte e Barba');
    fireEvent.click(servicoCard);

    expect(onSelecionarServico).toHaveBeenCalledWith('Corte e Barba - R$ 35');
    expect(onNavegar).toHaveBeenCalledWith('agendamento');
  });
});
