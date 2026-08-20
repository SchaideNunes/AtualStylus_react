import React from 'react';
import { render, screen } from '@testing-library/react';
import { describe, it, expect, vi } from 'vitest';
import { Footer } from '../components/Footer';

describe('Footer Component (TDD)', () => {
  it('deve conter o link e ícone do WhatsApp oficial no rodapé', () => {
    const onNavegar = vi.fn();
    render(<Footer onNavegar={onNavegar} />);

    const whatsappLinks = screen.getAllByRole('link', { name: /WhatsApp/i });
    expect(whatsappLinks.length).toBeGreaterThan(0);
    expect(whatsappLinks[0]).toHaveAttribute('href', expect.stringContaining('wa.me/5575991309594'));
  });

  it('deve conter o link do Instagram', () => {
    const onNavegar = vi.fn();
    render(<Footer onNavegar={onNavegar} />);

    const instagramLink = screen.getByRole('link', { name: /Instagram/i });
    expect(instagramLink).toHaveAttribute('href', 'https://www.instagram.com/atualstyllus/');
  });
});
