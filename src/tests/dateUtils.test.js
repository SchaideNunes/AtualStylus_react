import { describe, it, expect } from 'vitest';
import { 
  isDomingo, 
  getDataHojeString, 
  formatarDataBR, 
  filtrarHorariosPassadosSeHoje,
  normalizarDataISO,
  obterDetalhesData,
  formatarMesAno
} from '../utils/dateUtils';

describe('Date Utilities & Availability Rules (TDD)', () => {
  it('deve identificar corretamente se uma data é domingo', () => {
    // 2026-08-23 é um domingo
    expect(isDomingo('2026-08-23')).toBe(true);
    // 2026-08-22 é sábado
    expect(isDomingo('2026-08-22')).toBe(false);
    // 2026-08-24 é segunda
    expect(isDomingo('2026-08-24')).toBe(false);
  });

  it('deve formatar data YYYY-MM-DD para DD/MM/AAAA', () => {
    expect(formatarDataBR('2026-08-22')).toBe('22/08/2026');
    expect(formatarDataBR('2026-08-22T00:00:00.000Z')).toBe('22/08/2026');
  });

  it('deve normalizar qualquer formato de data para YYYY-MM-DD', () => {
    expect(normalizarDataISO('2026-08-22')).toBe('2026-08-22');
    expect(normalizarDataISO('2026-08-22T03:00:00.000Z')).toBe('2026-08-22');
    expect(normalizarDataISO(new Date(2026, 7, 22))).toBe('2026-08-22');
  });

  it('deve extrair dia da semana e data por extenso sem retornar Invalid Date', () => {
    const detalhes = obterDetalhesData('2026-08-22T00:00:00.000Z');
    expect(detalhes.diaSemana).toMatch(/sábado/i);
    expect(detalhes.dataExtenso).toMatch(/22 de agosto de 2026/i);
    expect(detalhes.dataBR).toBe('22/08/2026');
    expect(detalhes.dataISO).toBe('2026-08-22');
  });

  it('deve filtrar horários passados quando a data for hoje', () => {
    const slots = ['08:30', '10:00', '14:00', '17:30', '18:00'];
    // Simulando 14:15 como hora atual
    const horaAtual = 14;
    const minutoAtual = 15;
    const filtrados = filtrarHorariosPassadosSeHoje(slots, horaAtual, minutoAtual);
    expect(filtrados).toEqual(['17:30', '18:00']);
  });

  it('deve formatar mês e ano em português por extenso', () => {
    expect(formatarMesAno('2026-08')).toMatch(/agosto de 2026/i);
    expect(formatarMesAno('2026-01')).toMatch(/janeiro de 2026/i);
  });
});
