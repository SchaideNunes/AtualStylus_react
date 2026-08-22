import React from 'react';
import { render, screen, fireEvent, waitFor } from '@testing-library/react';
import { describe, it, expect, vi, beforeEach } from 'vitest';
import { Produtos } from '../pages/Produtos';
import { api } from '../services/api';

vi.mock('../services/api', () => ({
  api: {
    getProdutosPublicos: vi.fn()
  }
}));

const PRODUTOS_MOCK = [
  {
    id: 1,
    nome: 'Pomada Modeladora Efeito Matte',
    descricao: 'Alta fixação sem brilho',
    preco: 35.00,
    preco_promocional: 28.00,
    porcentagem_desconto: 20,
    em_promocao: true,
    foto: '/assets/degrade.webp',
    categoria: 'Cabelo & Penteado',
    ativo: true
  },
  {
    id: 2,
    nome: 'Óleo para Barba Hidratação Profunda',
    descricao: 'Fórmula nutritiva',
    preco: 40.00,
    preco_promocional: null,
    porcentagem_desconto: 0,
    em_promocao: false,
    foto: '/assets/corte-barba.webp',
    categoria: 'Barba & Cuidados',
    ativo: true
  }
];

describe('Produtos Showcase Component (TDD)', () => {
  beforeEach(() => {
    vi.clearAllMocks();
    api.getProdutosPublicos.mockResolvedValue(PRODUTOS_MOCK);
  });

  it('deve renderizar a vitrine pública de produtos com sucesso', async () => {
    render(<Produtos />);

    await waitFor(() => {
      expect(screen.getByText(/Vitrine & Cuidados Masculinos/i)).toBeInTheDocument();
      expect(screen.getByText('Pomada Modeladora Efeito Matte')).toBeInTheDocument();
      expect(screen.getByText('Óleo para Barba Hidratação Profunda')).toBeInTheDocument();
    });
  });

  it('deve exibir badge de promoção e preços promocionais corretamente', async () => {
    render(<Produtos />);

    await waitFor(() => {
      expect(screen.getByText(/-20% OFF/i)).toBeInTheDocument();
      expect(screen.getAllByText(/Reservar no WhatsApp/i).length).toBe(2);
    });
  });

  it('deve filtrar produtos pela busca textual', async () => {
    render(<Produtos />);

    await waitFor(() => {
      expect(screen.getByText('Pomada Modeladora Efeito Matte')).toBeInTheDocument();
    });

    const inputBusca = screen.getByPlaceholderText(/Buscar pomadas/i);
    fireEvent.change(inputBusca, { target: { value: 'Óleo' } });

    expect(screen.queryByText('Pomada Modeladora Efeito Matte')).not.toBeInTheDocument();
    expect(screen.getByText('Óleo para Barba Hidratação Profunda')).toBeInTheDocument();
  });
});
