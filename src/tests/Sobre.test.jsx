import React from 'react';
import { render, screen, fireEvent } from '@testing-library/react';
import { describe, it, expect, vi } from 'vitest';
import { Sobre } from '../pages/Sobre';

describe('Sobre Component Revamp (TDD)', () => {
  it('deve renderizar a história, estatísticas e os dois barbeiros', () => {
    const onNavegar = vi.fn();
    render(<Sobre onNavegar={onNavegar} />);

    expect(screen.getByText(/TRADIÇÃO, PRECISÃO & ESTILO/i)).toBeInTheDocument();
    expect(screen.getByText('Geilson')).toBeInTheDocument();
    expect(screen.getByText('Denilson')).toBeInTheDocument();
    expect(screen.getByText(/Atendimentos Realizados/i)).toBeInTheDocument();
    expect(screen.getAllByText(/Pontualidade/i).length).toBeGreaterThan(0);
  });

  it('deve navegar para a tela de agendamento ao clicar no CTA de agendamento', () => {
    const onNavegar = vi.fn();
    render(<Sobre onNavegar={onNavegar} />);

    const btnAgendar = screen.getByRole('button', { name: /Agendar Atendimento/i });
    fireEvent.click(btnAgendar);

    expect(onNavegar).toHaveBeenCalledWith('agendamento');
  });
});
