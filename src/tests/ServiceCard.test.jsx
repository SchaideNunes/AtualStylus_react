import React from 'react';
import { render, screen, fireEvent } from '@testing-library/react';
import { describe, it, expect, vi } from 'vitest';
import { ServiceCard } from '../components/ServiceCard';

describe('ServiceCard Component (TDD)', () => {
  const mockServico = {
    id: 1,
    nome: 'Corte e Barba',
    valor: 35,
    foto: '/assets/corte-barba.jpg'
  };

  it('deve renderizar título do serviço, preço e imagem', () => {
    const onAgendar = vi.fn();
    render(<ServiceCard servico={mockServico} onAgendar={onAgendar} />);

    expect(screen.getByText('Corte e Barba')).toBeInTheDocument();
    expect(screen.getByText('R$ 35,00')).toBeInTheDocument();
    const img = screen.getByRole('img');
    expect(img).toHaveAttribute('src', '/assets/corte-barba.jpg');
  });

  it('deve disparar onAgendar ao clicar no card', () => {
    const onAgendar = vi.fn();
    render(<ServiceCard servico={mockServico} onAgendar={onAgendar} />);

    fireEvent.click(screen.getByRole('button'));
    expect(onAgendar).toHaveBeenCalledWith(mockServico);
  });
});
