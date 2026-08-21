/**
 * Funções utilitárias de Data e Horários para o Servidor
 */

export function isDomingo(dataStr) {
  if (!dataStr) return false;
  const [ano, mes, dia] = dataStr.split('-').map(Number);
  const data = new Date(ano, mes - 1, dia);
  return data.getDay() === 0;
}

export function getDataHojeString() {
  const d = new Date();
  const formatoBR = d.toLocaleDateString('pt-BR', { timeZone: 'America/Sao_Paulo', year: 'numeric', month: '2-digit', day: '2-digit' });
  const [dia, mes, ano] = formatoBR.split('/');
  return `${ano}-${mes}-${dia}`;
}

export function formatarDataBR(dataStr) {
  if (!dataStr) return '';
  const dataLimpa = String(dataStr).split('T')[0];
  const partes = dataLimpa.split('-');
  if (partes.length === 3) {
    return `${partes[2]}/${partes[1]}/${partes[0]}`;
  }
  return dataStr;
}

export function filtrarHorariosPassadosSeHoje(horarios, horaAtual, minutoAtual) {
  if (!horarios || !Array.isArray(horarios)) return [];
  
  if (horaAtual === undefined || minutoAtual === undefined) {
    const agora = new Date();
    horaAtual = agora.getHours();
    minutoAtual = agora.getMinutes();
  }

  return horarios.filter((h) => {
    const [hSlot, mSlot] = h.split(':').map(Number);
    return hSlot > horaAtual || (hSlot === horaAtual && mSlot > minutoAtual);
  });
}
