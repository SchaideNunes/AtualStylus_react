import { describe, it, expect } from 'vitest';
import { 
  gerarLinkWhatsAppAgendamento, 
  gerarLinkWhatsAppCancelamento,
  obterTelefoneBarbeiro
} from '../utils/whatsapp';

describe('WhatsApp Integration (TDD)', () => {
  it('deve retornar o telefone correto para cada barbeiro', () => {
    expect(obterTelefoneBarbeiro('Geilson')).toBe('5575991309594');
    expect(obterTelefoneBarbeiro(1)).toBe('5575991309594');
    expect(obterTelefoneBarbeiro('Denilson')).toBe('5575991073283');
    expect(obterTelefoneBarbeiro(2)).toBe('5575991073283');
  });

  it('deve gerar link de agendamento com mensagem completa formatada', () => {
    const agendamento = {
      nome: 'João Silva',
      telefone: '(75) 99999-8888',
      barbeiroNome: 'Geilson',
      data: '2026-08-22',
      horario: '14:30',
      servico: 'Corte e Barba - R$ 35',
      valor: 35
    };
    const url = gerarLinkWhatsAppAgendamento(agendamento);
    expect(url).toContain('https://wa.me/5575991309594');
    expect(url).toContain(encodeURIComponent('João Silva'));
    expect(url).toContain(encodeURIComponent('22/08/2026'));
    expect(url).toContain(encodeURIComponent('14:30'));
    expect(url).toContain(encodeURIComponent('Corte e Barba - R$ 35'));
  });

  it('deve gerar link de cancelamento para o barbeiro correto', () => {
    const agendamento = {
      nome: 'Carlos',
      barbeiro_nome: 'Denilson',
      data_agendamento: '2026-08-22',
      horario: '10:00',
      servico: 'Degradê - R$ 25'
    };
    const url = gerarLinkWhatsAppCancelamento(agendamento);
    expect(url).toContain('https://wa.me/5575991073283');
    expect(url).toContain(encodeURIComponent('AGENDAMENTO CANCELADO'));
  });
});
