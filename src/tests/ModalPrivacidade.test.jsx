import React from 'react';
import { render, screen, fireEvent } from '@testing-library/react';
import { describe, it, expect, vi } from 'vitest';
import { ModalPrivacidade } from '../components/ModalPrivacidade';

describe('ModalPrivacidade Component (TDD)', () => {
  it('deve renderizar o título e os termos de proteção de dados', () => {
    render(<ModalPrivacidade isOpen={true} onClose={vi.fn()} />);
    expect(screen.getByText(/Política de Privacidade/i)).toBeInTheDocument();
    expect(screen.getByText(/LGPD/i)).toBeInTheDocument();
    expect(screen.getByText(/Coleta de Dados/i)).toBeInTheDocument();
  });

  it('não deve renderizar quando isOpen for false', () => {
    const { container } = render(<ModalPrivacidade isOpen={false} onClose={vi.fn()} />);
    expect(container).toBeEmptyDOMElement();
  });

  it('deve chamar onClose ao clicar no botão de fechar ou no backdrop', () => {
    const handleClose = vi.fn();
    render(<ModalPrivacidade isOpen={true} onClose={handleClose} />);

    const btnFechar = screen.getByRole('button', { name: /Entendi e Fechar/i });
    fireEvent.click(btnFechar);
    expect(handleClose).toHaveBeenCalled();
  });
});
