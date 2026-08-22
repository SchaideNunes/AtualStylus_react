import React, { useState, useEffect } from 'react';
import { X, Tag, DollarSign, Percent, Image, AlignLeft, Check, AlertCircle, Eye, Sparkles } from 'lucide-react';

const CATEGORIAS_PADRAO = [
  'Cabelo & Penteado',
  'Barba & Cuidados',
  'Shampoos & Tratamentos',
  'Acessórios',
  'Geral'
];

const PRESETS_FOTOS = [
  { label: 'Degradê', url: '/assets/degrade.webp' },
  { label: 'Barba', url: '/assets/corte-barba.webp' },
  { label: 'Navalhado', url: '/assets/navalhado.webp' },
  { label: 'Pezinho', url: '/assets/barba-pezinho.webp' },
  { label: 'Social', url: '/assets/corte-social.webp' },
  { label: 'Logo', url: '/assets/Logo.webp' }
];

export function ModalProduto({ produto, aoSalvar, aoFechar }) {
  const isEdicao = Boolean(produto && produto.id);

  const [nome, setNome] = useState(produto?.nome || '');
  const [descricao, setDescricao] = useState(produto?.descricao || '');
  const [preco, setPreco] = useState(produto?.preco !== undefined ? String(produto.preco) : '');
  const [emPromocao, setEmPromocao] = useState(Boolean(produto?.em_promocao));
  const [porcentagemDesconto, setPorcentagemDesconto] = useState(
    produto?.porcentagem_desconto !== undefined ? Number(produto.porcentagem_desconto) : 0
  );
  const [foto, setFoto] = useState(produto?.foto || '/assets/degrade.webp');
  const [categoria, setCategoria] = useState(produto?.categoria || 'Cabelo & Penteado');
  const [ativo, setAtivo] = useState(produto?.ativo !== undefined ? Boolean(produto.ativo) : true);

  const [salvando, setSalvando] = useState(false);
  const [erro, setErro] = useState('');

  // Bloquear scroll do body enquanto o modal estiver aberto
  useEffect(() => {
    document.body.style.overflow = 'hidden';
    document.body.style.touchAction = 'none';
    return () => {
      document.body.style.overflow = '';
      document.body.style.touchAction = '';
    };
  }, []);

  // Fechar com tecla ESC
  useEffect(() => {
    const handleKeyDown = (e) => {
      if (e.key === 'Escape') aoFechar();
    };
    window.addEventListener('keydown', handleKeyDown);
    return () => window.removeEventListener('keydown', handleKeyDown);
  }, [aoFechar]);

  // Cálculo automático do preço promocional baseado no preço base e na porcentagem
  const precoNum = parseFloat(preco) || 0;
  const pctNum = Math.max(0, Math.min(100, Number(porcentagemDesconto) || 0));
  
  const precoPromocionalCalculado = (emPromocao && pctNum > 0 && precoNum > 0)
    ? Number((precoNum * (1 - pctNum / 100)).toFixed(2))
    : null;

  const valorEconomia = (emPromocao && precoPromocionalCalculado)
    ? (precoNum - precoPromocionalCalculado).toFixed(2)
    : '0.00';

  const aplicarPresetDesconto = (pct) => {
    setPorcentagemDesconto(pct);
    if (!emPromocao) {
      setEmPromocao(true);
    }
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    setErro('');

    if (!nome.trim()) {
      setErro('Por favor, informe o nome do produto.');
      return;
    }

    if (precoNum <= 0) {
      setErro('Por favor, informe um preço válido maior que zero.');
      return;
    }

    setSalvando(true);
    try {
      await aoSalvar({
        ...(produto?.id ? { id: produto.id } : {}),
        nome: nome.trim(),
        descricao: descricao.trim(),
        preco: precoNum,
        em_promocao: emPromocao,
        porcentagem_desconto: emPromocao ? pctNum : 0,
        preco_promocional: emPromocao ? precoPromocionalCalculado : null,
        foto: foto.trim() || '/assets/Logo.webp',
        categoria: categoria.trim() || 'Geral',
        ativo
      });
      aoFechar();
    } catch (err) {
      setErro(err.message || 'Erro ao salvar produto');
    } finally {
      setSalvando(false);
    }
  };

  return (
    <div className="modal-overlay-produtos" onClick={aoFechar}>
      <div className="modal-container-produto" onClick={(e) => e.stopPropagation()}>
        {/* Cabeçalho */}
        <div className="modal-header-produto">
          <div className="titulo-box-modal">
            <Tag size={18} color="#ffffff" />
            <h2>{isEdicao ? 'Editar Produto' : 'Novo Produto'}</h2>
          </div>
          <button onClick={aoFechar} className="btn-fechar-modal-x" aria-label="Fechar modal">
            <X size={18} />
          </button>
        </div>

        {/* Formulário Compacto */}
        <form onSubmit={handleSubmit} className="form-modal-produto">
          {erro && (
            <div className="banner-alerta-erro">
              <AlertCircle size={15} />
              <span>{erro}</span>
            </div>
          )}

          {/* Linha 1: Nome do Produto + Categoria */}
          <div className="grid-dois-campos-modal">
            <div className="grupo-campo-modal" style={{ flex: '1.6 1 200px' }}>
              <label className="label-campo-modal">NOME DO PRODUTO *</label>
              <input 
                type="text"
                value={nome}
                onChange={(e) => setNome(e.target.value)}
                placeholder="Ex: Pomada Modeladora Efeito Matte"
                className="input-modal-produto"
                required
              />
            </div>

            <div className="grupo-campo-modal" style={{ flex: '1.2 1 150px' }}>
              <label className="label-campo-modal">CATEGORIA</label>
              <select 
                value={categoria}
                onChange={(e) => setCategoria(e.target.value)}
                className="select-modal-produto"
              >
                {CATEGORIAS_PADRAO.map(cat => (
                  <option key={cat} value={cat}>{cat}</option>
                ))}
              </select>
            </div>
          </div>

          {/* Linha 2: Preço Normal */}
          <div className="grid-dois-campos-modal">
            <div className="grupo-campo-modal">
              <label className="label-campo-modal">PREÇO NORMAL (R$) *</label>
              <div className="input-com-icone-preco">
                <span className="prefixo-moeda">R$</span>
                <input 
                  type="number"
                  step="0.50"
                  min="0"
                  value={preco}
                  onChange={(e) => setPreco(e.target.value)}
                  placeholder="35.00"
                  className="input-modal-produto input-com-prefixo"
                  required
                />
              </div>
            </div>

            <div className="grupo-campo-modal" style={{ justifyContent: 'center' }}>
              <label className="label-campo-modal">PROMOÇÃO</label>
              <div 
                className={`switch-promo-pill ${emPromocao ? 'ativo' : ''}`}
                onClick={() => setEmPromocao(!emPromocao)}
                role="button"
                tabIndex={0}
              >
                <span>🔥 {emPromocao ? 'Promoção Ativa' : 'Sem Promoção'}</span>
                <div className="indicador-dot" />
              </div>
            </div>
          </div>

          {/* Bloco de Desconto e Promoção Automática */}
          {emPromocao && (
            <div className="box-config-promocao ativa fade-in">
              <div className="linha-promo-controles-compact">
                <div className="campo-pct-box">
                  <span className="label-campo-modal">DESCONTO</span>
                  <div className="input-com-sufixo-pct">
                    <input 
                      type="number"
                      min="1"
                      max="99"
                      value={porcentagemDesconto || ''}
                      onChange={(e) => setPorcentagemDesconto(Math.min(99, Math.max(0, parseInt(e.target.value) || 0)))}
                      placeholder="20"
                      className="input-modal-produto input-pct"
                    />
                    <span className="sufixo-pct">%</span>
                  </div>
                </div>

                <div className="chips-presets-desconto">
                  {[10, 15, 20, 25, 30, 50].map((pct) => (
                    <button
                      type="button"
                      key={pct}
                      onClick={() => aplicarPresetDesconto(pct)}
                      className={`chip-preset-pct ${porcentagemDesconto === pct ? 'ativo' : ''}`}
                    >
                      {pct}%
                    </button>
                  ))}
                </div>
              </div>

              {precoNum > 0 && precoPromocionalCalculado && (
                <div className="card-preview-calculo-promo-compact">
                  <span className="label-calc">
                    Preço Final com <b>{pctNum}% OFF</b>: <b style={{ color: '#22c55e', fontSize: '1rem' }}>R$ {precoPromocionalCalculado.toFixed(2)}</b>
                  </span>
                  <span className="badge-economia">
                    Economia: R$ {valorEconomia}
                  </span>
                </div>
              )}
            </div>
          )}

          {/* Imagem / Foto do Produto */}
          <div className="grupo-campo-modal">
            <div className="linha-topo-label-presets">
              <label className="label-campo-modal">IMAGEM DO PRODUTO</label>
              <div className="grid-botoes-presets-foto-compact">
                {PRESETS_FOTOS.map((preset) => (
                  <button
                    type="button"
                    key={preset.label}
                    onClick={() => setFoto(preset.url)}
                    className={`btn-preset-foto ${foto === preset.url ? 'ativo' : ''}`}
                  >
                    {preset.label}
                  </button>
                ))}
              </div>
            </div>
            <input 
              type="text"
              value={foto}
              onChange={(e) => setFoto(e.target.value)}
              placeholder="URL da imagem (ex: /assets/degrade.webp)"
              className="input-modal-produto"
            />
          </div>

          {/* Descrição */}
          <div className="grupo-campo-modal">
            <label className="label-campo-modal">DESCRIÇÃO & BENEFÍCIOS</label>
            <textarea 
              value={descricao}
              onChange={(e) => setDescricao(e.target.value)}
              placeholder="Descreva as características e modo de uso..."
              rows={2}
              className="textarea-modal-produto"
            />
          </div>

          {/* Rodapé: Switch Ativo + Botões de Ação */}
          <div className="linha-rodape-modal-produto">
            <label className="label-switch-compact">
              <input 
                type="checkbox"
                checked={ativo}
                onChange={(e) => setAtivo(e.target.checked)}
              />
              <span>{ativo ? '🟢 Visível na Loja' : '⚪ Oculto'}</span>
            </label>

            <div className="botoes-acoes-direita">
              <button 
                type="button"
                onClick={aoFechar}
                className="btn-cancelar-modal-produto"
                disabled={salvando}
              >
                Cancelar
              </button>
              <button 
                type="submit"
                className="btn-salvar-modal-produto"
                disabled={salvando}
              >
                {salvando ? 'Salvando...' : '✓ Salvar Produto'}
              </button>
            </div>
          </div>
        </form>
      </div>
    </div>
  );
}
