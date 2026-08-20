/**
 * Formata um número de telefone com a máscara (XX) XXXXX-XXXX
 * @param {string} valor 
 * @returns {string}
 */
export function formatarTelefone(valor) {
  if (!valor) return '';
  let limpo = valor.replace(/\D/g, '');
  if (limpo.length > 11) {
    limpo = limpo.slice(0, 11);
  }

  if (limpo.length <= 2) {
    return limpo;
  }
  if (limpo.length <= 7) {
    return `(${limpo.slice(0, 2)}) ${limpo.slice(2)}`;
  }
  return `(${limpo.slice(0, 2)}) ${limpo.slice(2, 7)}-${limpo.slice(7)}`;
}

/**
 * Remove todos os caracteres não numéricos
 * @param {string} valor 
 * @returns {string}
 */
export function extrairApenasNumeros(valor) {
  if (!valor) return '';
  return valor.replace(/\D/g, '');
}

/**
 * Valida se o telefone tem exatamente 15 caracteres formatados "(XX) XXXXX-XXXX"
 * @param {string} telefone 
 * @returns {boolean}
 */
export function isTelefoneValido(telefone) {
  if (!telefone) return false;
  return telefone.length === 15 && /^\(\d{2}\) \d{5}-\d{4}$/.test(telefone);
}
