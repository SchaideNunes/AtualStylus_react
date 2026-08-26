import React from 'react';
import { render, screen, fireEvent } from '@testing-library/react';
import { describe, it, expect, vi } from 'vitest';
import { ModalConfirmacaoAgendamento } from '../components/ModalConfirmacaoAgendamento';

describe('ModalConfirmacaoAgendamento Component (TDD)', () => {
  const mockDados = {
    nome: 'Carlos Eduardo',
    telefone: '(75) 99130-9594',
    barbeiroNome: 'Geilson',
    data: '2029-08-25',
    horario: '14:00',
    servico: 'Corte e Barba - R$ 35',
    valor: 35,
    urlWhatsApp: 'https://wa.me/5575991309594?text=Teste'
  };

  it('deve renderizar o resumo do agendamento e instruções de pontualidade', () => {
    render(
      <ModalConfirmacaoAgendamento 
        isOpen={true} 
        dados={mockDados} 
        onConcluir={vi.fn()} 
        onIrParaMeusAgendamentos={vi.fn()} 
      />
    );

    expect(screen.getByText(/Agendamento Confirmado!/i)).toBeInTheDocument();
    expect(screen.getByText('Carlos Eduardo')).toBeInTheDocument();
    expect(screen.getByText(/Geilson/i)).toBeInTheDocument();
    expect(screen.getByText('14:00')).toBeInTheDocument();
    expect(screen.getByText(/5 minutos de antecedência/i)).toBeInTheDocument();
  });

  it('deve conter o link para abrir o WhatsApp do barbeiro', () => {
    render(
      <ModalConfirmacaoAgendamento 
        isOpen={true} 
        dados={mockDados} 
        onConcluir={vi.fn()} 
        onIrParaMeusAgendamentos={vi.fn()} 
      />
    );

    const btnWhats = screen.getByRole('link', { name: /WhatsApp/i });
    expect(btnWhats).toHaveAttribute('href', mockDados.urlWhatsApp);
  });

  it('não deve renderizar quando isOpen for false', () => {
    const { container } = render(
      <ModalConfirmacaoAgendamento 
        isOpen={false} 
        dados={mockDados} 
        onConcluir={vi.fn()} 
        onIrParaMeusAgendamentos={vi.fn()} 
      />
    );
    expect(container).toBeEmptyDOMElement();
  });
});
