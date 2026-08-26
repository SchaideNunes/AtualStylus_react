import React from 'react';
import { render, screen, fireEvent } from '@testing-library/react';
import { describe, it, expect, vi } from 'vitest';
import { StickyMobileCTA } from '../components/StickyMobileCTA';

describe('StickyMobileCTA Component (TDD)', () => {
  it('deve renderizar o botão flutuante para agendar', () => {
    const handleAgendar = vi.fn();
    render(<StickyMobileCTA onAgendar={handleAgendar} paginaAtiva="inicio" />);

    const btn = screen.getByRole('button', { name: /Agendar Horário/i });
    expect(btn).toBeInTheDocument();
  });

  it('deve disparar a navegação ao clicar no botão', () => {
    const handleAgendar = vi.fn();
    render(<StickyMobileCTA onAgendar={handleAgendar} paginaAtiva="inicio" />);

    const btn = screen.getByRole('button', { name: /Agendar Horário/i });
    fireEvent.click(btn);
    expect(handleAgendar).toHaveBeenCalled();
  });

  it('não deve renderizar quando estiver na página de agendamento ou admin', () => {
    const { container, rerender } = render(<StickyMobileCTA onAgendar={vi.fn()} paginaAtiva="agendamento" />);
    expect(container).toBeEmptyDOMElement();

    rerender(<StickyMobileCTA onAgendar={vi.fn()} paginaAtiva="admin" />);
    expect(container).toBeEmptyDOMElement();
  });
});
