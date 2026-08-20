export const WHATSAPP_BARBEARIA_GEILSON = '5575991309594';
export const WHATSAPP_BARBEARIA_DENILSON = '5575991073283';

/**
 * Retorna o número do WhatsApp do barbeiro pelo nome ou id
 * @param {string|number} barbeiro 
 * @returns {string}
 */
export function obterTelefoneBarbeiro(barbeiro) {
  if (barbeiro === 2 || barbeiro === '2' || (typeof barbeiro === 'string' && barbeiro.toLowerCase().includes('denilson'))) {
    return WHATSAPP_BARBEARIA_DENILSON;
  }
  return WHATSAPP_BARBEARIA_GEILSON;
}

/**
 * Gera a URL do WhatsApp para confirmação de agendamento
 * @param {Object} agendamento 
 * @returns {string}
 */
export function gerarLinkWhatsAppAgendamento(agendamento) {
  const dataFormatada = agendamento.data.includes('-') 
    ? agendamento.data.split('-').reverse().join('/') 
    : agendamento.data;

  const linkCancelamento = `${window?.location?.origin || 'https://atualestilo.com.br'}#meusAgendamentos`;

  const mensagem = `🔔 *NOVO AGENDAMENTO* 🔔

👤 *Cliente:* ${agendamento.nome}
📱 *Telefone:* ${agendamento.telefone}
👨‍💼 *Barbeiro:* ${agendamento.barbeiroNome}
📅 *Data:* ${dataFormatada}
🕐 *Horário:* ${agendamento.horario}
✂️ *Serviço:* ${agendamento.servico}
💰 *Valor:* R$ ${agendamento.valor},00

⚠️ *Precisa cancelar?*
Acesse: ${linkCancelamento}`;

  const numero = obterTelefoneBarbeiro(agendamento.barbeiroNome);
  return `https://wa.me/${numero}?text=${encodeURIComponent(mensagem)}`;
}

/**
 * Gera a URL do WhatsApp para notificação de cancelamento
 * @param {Object} agendamento 
 * @returns {string}
 */
export function gerarLinkWhatsAppCancelamento(agendamento) {
  const dataFormatada = agendamento.data_agendamento?.includes('-')
    ? agendamento.data_agendamento.split('-').reverse().join('/')
    : agendamento.data_agendamento || '';

  const mensagem = `❌ *AGENDAMENTO CANCELADO* ❌

Olá, acabei de cancelar o meu agendamento pelo site.

👤 *Cliente:* ${agendamento.nome}
👨‍💼 *Barbeiro:* ${agendamento.barbeiro_nome}
📅 *Data:* ${dataFormatada}
🕐 *Horário:* ${agendamento.horario}
✂️ *Serviço:* ${agendamento.servico}`;

  const numero = obterTelefoneBarbeiro(agendamento.barbeiro_nome);
  return `https://wa.me/${numero}?text=${encodeURIComponent(mensagem)}`;
}
