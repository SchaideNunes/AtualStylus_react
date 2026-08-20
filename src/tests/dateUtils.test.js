import { describe, it, expect } from 'vitest';
import { 
  isDomingo, 
  getDataHojeString, 
  formatarDataBR, 
  filtrarHorariosPassadosSeHoje 
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
  });

  it('deve filtrar horários passados quando a data for hoje', () => {
    const slots = ['08:30', '10:00', '14:00', '17:30', '18:00'];
    // Simulando 14:15 como hora atual
    const horaAtual = 14;
    const minutoAtual = 15;
    const filtrados = filtrarHorariosPassadosSeHoje(slots, horaAtual, minutoAtual);
    expect(filtrados).toEqual(['14:30', '15:30', '16:00', '17:30', '18:00'].filter(s => slots.includes(s)));
    expect(filtrados).toEqual(['17:30', '18:00']);
  });
});
