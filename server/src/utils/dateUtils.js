/**
 * Funções utilitárias de Data e Horários para o Servidor
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

export function isDomingo(dataStr) {
  if (!dataStr) return false;
  const dataLimpa = normalizarDataISO(dataStr);
  const [ano, mes, dia] = dataLimpa.split('-').map(Number);
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
  const dataLimpa = normalizarDataISO(dataStr);
  const partes = dataLimpa.split('-');
  if (partes.length === 3) {
    return `${partes[2]}/${partes[1]}/${partes[0]}`;
  }
  return dataStr;
}

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
    return hSlot > horaAtual || (hSlot === horaAtual && mSlot > minutoAtual);
  });
}
