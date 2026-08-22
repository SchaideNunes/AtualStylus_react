/**
 * Normaliza qualquer formato de data (Date, timestamp ISO, YYYY-MM-DD...) para YYYY-MM-DD
 * @param {string|Date} data 
 * @returns {string}
 */
export function normalizarDataISO(data) {
  if (!data) return '';
  if (data instanceof Date) {
    const ano = data.getFullYear();
    const mes = String(data.getMonth() + 1).padStart(2, '0');
    const dia = String(data.getDate()).padStart(2, '0');
    return `${ano}-${mes}-${dia}`;
  }
  return String(data).split('T')[0].trim();
}

/**
 * Extrai dia da semana, data por extenso e formato BR a partir de qualquer string de data
 * @param {string|Date} dataStr 
 * @returns {{ diaSemana: string, dataExtenso: string, dataBR: string, dataISO: string }}
 */
export function obterDetalhesData(dataStr) {
  const dataLimpa = normalizarDataISO(dataStr);
  if (!dataLimpa) return { diaSemana: '', dataExtenso: '', dataBR: '', dataISO: '' };

  const [ano, mes, dia] = dataLimpa.split('-').map(Number);
  if (isNaN(ano) || isNaN(mes) || isNaN(dia)) {
    return { diaSemana: '', dataExtenso: dataLimpa, dataBR: dataLimpa, dataISO: dataLimpa };
  }

  const dataObj = new Date(ano, mes - 1, dia);
  const diaSemana = dataObj.toLocaleDateString('pt-BR', { weekday: 'long' });
  const dataExtenso = dataObj.toLocaleDateString('pt-BR', { day: '2-digit', month: 'long', year: 'numeric' });
  const dataBR = `${String(dia).padStart(2, '0')}/${String(mes).padStart(2, '0')}/${ano}`;

  return { diaSemana, dataExtenso, dataBR, dataISO: dataLimpa };
}

/**
 * Verifica se a data fornecida é domingo (dia 0 da semana)
 * @param {string} dataStr - Formato YYYY-MM-DD
 * @returns {boolean}
 */
export function isDomingo(dataStr) {
  if (!dataStr) return false;
  const dataLimpa = normalizarDataISO(dataStr);
  const [ano, mes, dia] = dataLimpa.split('-').map(Number);
  const data = new Date(ano, mes - 1, dia);
  return data.getDay() === 0;
}

/**
 * Retorna a data atual no formato YYYY-MM-DD local
 * @returns {string}
 */
export function getDataHojeString() {
  const d = new Date();
  const formatoBR = d.toLocaleDateString('pt-BR', { timeZone: 'America/Sao_Paulo', year: 'numeric', month: '2-digit', day: '2-digit' });
  const [dia, mes, ano] = formatoBR.split('/');
  return `${ano}-${mes}-${dia}`;
}

/**
 * Formata data YYYY-MM-DD para DD/MM/AAAA
 * @param {string} dataStr 
 * @returns {string}
 */
export function formatarDataBR(dataStr) {
  if (!dataStr) return '';
  const dataLimpa = normalizarDataISO(dataStr);
  const partes = dataLimpa.split('-');
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
    const agoraFormatada = new Intl.DateTimeFormat('pt-BR', {
      timeZone: 'America/Sao_Paulo',
      hour: 'numeric',
      minute: 'numeric',
      hour12: false
    }).format(new Date());

    const [hStr, mStr] = agoraFormatada.split(':');
    horaAtual = Number(hStr);
    minutoAtual = Number(mStr);
  }

  return horarios.filter((h) => {
    const [hSlot, mSlot] = h.split(':').map(Number);
    if (hSlot > horaAtual) return true;
    if (hSlot === horaAtual && mSlot > minutoAtual) return true;
    return false;
  });
}

/**
 * Retorna o nome formatado do mês e ano (ex: "Agosto de 2026")
 * @param {string} mesAnoStr - Formato YYYY-MM
 * @returns {string}
 */
export function formatarMesAno(mesAnoStr) {
  if (!mesAnoStr) return '';
  const [ano, mes] = mesAnoStr.split('-').map(Number);
  if (!ano || !mes) return mesAnoStr;
  const d = new Date(ano, mes - 1, 1);
  return d.toLocaleDateString('pt-BR', { month: 'long', year: 'numeric' });
}

/**
 * Adiciona ou subtrai meses de uma string YYYY-MM
 * @param {string} mesAnoStr - Formato YYYY-MM
 * @param {number} delta - Quantidade de meses a somar/subtrair
 * @returns {string} Formato YYYY-MM
 */
export function adicionarMeses(mesAnoStr, delta = 0) {
  if (!mesAnoStr) return '';
  const [ano, mes] = mesAnoStr.split('-').map(Number);
  if (!ano || !mes) return mesAnoStr;
  const d = new Date(ano, (mes - 1) + delta, 1);
  const novoAno = d.getFullYear();
  const novoMes = String(d.getMonth() + 1).padStart(2, '0');
  return `${novoAno}-${novoMes}`;
}
