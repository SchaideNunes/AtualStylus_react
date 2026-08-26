import React from 'react';
import { render, screen, fireEvent } from '@testing-library/react';
import { describe, it, expect } from 'vitest';
import { FAQ } from '../components/FAQ';

describe('FAQ Component (TDD)', () => {
  it('deve renderizar o título da seção de Perguntas Frequentes', () => {
    render(<FAQ />);
    expect(screen.getByText(/Dúvidas Frequentes/i)).toBeInTheDocument();
  });

  it('deve listar as perguntas padrão', () => {
    render(<FAQ />);
    expect(screen.getByText(/Quais são as formas de pagamento aceitas/i)).toBeInTheDocument();
    expect(screen.getByText(/Como faço para cancelar ou reagendar um horário/i)).toBeInTheDocument();
    expect(screen.getByText(/Existe tolerância para atrasos/i)).toBeInTheDocument();
    expect(screen.getByText(/Preciso agendar com antecedência/i)).toBeInTheDocument();
  });

  it('deve expandir e recolher a resposta ao clicar em uma pergunta', () => {
    render(<FAQ />);
    const pergunta = screen.getByText(/Quais são as formas de pagamento aceitas\?/i);
    
    // Inicialmente a resposta não está visível
    expect(screen.queryByText(/Aceitamos Pix, Cartões de Débito\/Crédito e Dinheiro/i)).not.toBeInTheDocument();

    // Clica para abrir
    fireEvent.click(pergunta);
    expect(screen.getByText(/Aceitamos Pix, Cartões de Débito\/Crédito e Dinheiro/i)).toBeInTheDocument();

    // Clica novamente para fechar
    fireEvent.click(pergunta);
    expect(screen.queryByText(/Aceitamos Pix, Cartões de Débito\/Crédito e Dinheiro/i)).not.toBeInTheDocument();
  });
});
