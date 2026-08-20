import { describe, it, expect } from 'vitest';
import { formatarTelefone, extrairApenasNumeros, isTelefoneValido } from '../utils/phoneMask';

describe('Phone Mask Utilities (TDD)', () => {
  it('deve formatar número completo de 11 dígitos com máscara (XX) XXXXX-XXXX', () => {
    expect(formatarTelefone('75991309594')).toBe('(75) 99130-9594');
  });

  it('deve formatar número parcial corretamente conforme o usuário digita', () => {
    expect(formatarTelefone('75')).toBe('75');
    expect(formatarTelefone('759')).toBe('(75) 9');
    expect(formatarTelefone('7599130')).toBe('(75) 99130');
    expect(formatarTelefone('75991309594')).toBe('(75) 99130-9594');
  });

  it('deve remover caracteres não numéricos e limitar a 11 dígitos', () => {
    expect(formatarTelefone('(75) 99130-9594123')).toBe('(75) 99130-9594');
    expect(extrairApenasNumeros('(75) 99130-9594')).toBe('75991309594');
  });

  it('deve validar se o telefone possui 15 caracteres formatados (11 dígitos numéricos)', () => {
    expect(isTelefoneValido('(75) 99130-9594')).toBe(true);
    expect(isTelefoneValido('(75) 9913-9594')).toBe(false);
    expect(isTelefoneValido('')).toBe(false);
    expect(isTelefoneValido('75991309594')).toBe(false); // precisa estar formatado
  });
});
