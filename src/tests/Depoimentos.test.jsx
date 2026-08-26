import React from 'react';
import { render, screen } from '@testing-library/react';
import { describe, it, expect } from 'vitest';
import { Depoimentos } from '../components/Depoimentos';

describe('Depoimentos Component (TDD)', () => {
  it('deve renderizar o título e a nota 5.0 do Google Reviews', () => {
    render(<Depoimentos />);
    expect(screen.getByText(/O Que Nossos Clientes Dizem/i)).toBeInTheDocument();
    expect(screen.getByText(/5,0/i)).toBeInTheDocument();
    expect(screen.getByText(/25 avaliações no Google/i)).toBeInTheDocument();
  });

  it('deve renderizar depoimentos reais extraídos do Google Maps', () => {
    render(<Depoimentos />);
    expect(screen.getByText('Jaedson Nascimento')).toBeInTheDocument();
    expect(screen.getByText(/Um bom atendimento, com profissionais top!/i)).toBeInTheDocument();
    expect(screen.getByText('Antonio Marcos Araújo')).toBeInTheDocument();
    expect(screen.getByText(/Excelente trabalho!/i)).toBeInTheDocument();
  });
});
