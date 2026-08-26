import React from 'react';
import { render, screen } from '@testing-library/react';
import { describe, it, expect } from 'vitest';
import { MapaLocalizacao } from '../components/MapaLocalizacao';

describe('MapaLocalizacao Component (TDD)', () => {
  it('deve renderizar o título da seção e o endereço', () => {
    render(<MapaLocalizacao />);
    expect(screen.getByText(/Nossa Localização/i)).toBeInTheDocument();
    expect(screen.getByText(/Rua Monsenhor Carlos Olímpio, 31/i)).toBeInTheDocument();
  });

  it('deve conter os links para rotas do Google Maps e Waze', () => {
    render(<MapaLocalizacao />);
    const linkMaps = screen.getByRole('link', { name: /Google Maps/i });
    const linkWaze = screen.getByRole('link', { name: /Waze/i });

    expect(linkMaps).toHaveAttribute('href', expect.stringContaining('google.com/maps'));
    expect(linkWaze).toHaveAttribute('href', expect.stringContaining('waze.com'));
  });

  it('deve renderizar o iframe do mapa com lazy loading', () => {
    render(<MapaLocalizacao />);
    const iframe = screen.getByTitle(/Mapa de Localização AtualEstilo Barbearia/i);
    expect(iframe).toBeInTheDocument();
    expect(iframe).toHaveAttribute('loading', 'lazy');
  });
});
