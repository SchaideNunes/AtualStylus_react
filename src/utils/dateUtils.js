/**
 * Verifica se a data fornecida é domingo (dia 0 da semana)
 * @param {string} dataStr - Formato YYYY-MM-DD
 * @returns {boolean}
 */
export function isDomingo(dataStr) {
  if (!dataStr) return false;
  const [ano, mes, dia] = dataStr.split('-').map(Number);
  const data = new Date(ano, mes - 1, dia);
  return data.getDay() === 0;
}

/**
 * Retorna a data atual no formato YYYY-MM-DD local
 * @returns {string}
 */
export function getDataHojeString() {
  const d = new Date();
  const ano = d.getFullYear();
  const mes = String(d.getMonth() + 1).padStart(2, '0');
  const dia = String(d.getDate()).padStart(2, '0');
  return `${ano}-${mes}-${dia}`;
}

/**
 * Formata data YYYY-MM-DD para DD/MM/AAAA
 * @param {string} dataStr 
 * @returns {string}
 */
export function formatarDataBR(dataStr) {
  if (!dataStr) return '';
  const partes = dataStr.split('-');
  if (partes.length === 3) {
    return `${partes[2]}/${partes[1]}/${partes[0]}`;
  }
  return dataStr;
}

/**
 * Filtra horários que já passaram se o agendamento for para hoje
 * @param {string[]} horarios 
 * @param {number} [horaAtual] 
 * @param {number} [minutoAtual] 
 * @returns {string[]}
 */
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
