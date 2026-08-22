import React, { useState, useEffect } from 'react';
import { ShoppingBag, Search, Sparkles, Filter, RefreshCw, MessageSquare } from 'lucide-react';
import { api } from '../services/api';
import { ProductCard } from '../components/ProductCard';
import { WhatsAppIcon } from '../components/Icons';

export function Produtos() {
  const [produtos, setProdutos] = useState([]);
  const [carregando, setCarregando] = useState(true);
  const [erro, setErro] = useState(null);
  const [categoriaAtiva, setCategoriaAtiva] = useState('Todos');
  const [busca, setBusca] = useState('');

  const carregarProdutos = async () => {
    setCarregando(true);
    setErro(null);
    try {
      const data = await api.getProdutosPublicos();
      setProdutos(data || []);
    } catch (err) {
      setErro('Não foi possível carregar o catálogo de produtos no momento.');
    } finally {
      setCarregando(false);
    }
  };

  useEffect(() => {
    carregarProdutos();
  }, []);

  // Extrair categorias existentes dinamicamente
  const categoriasDisponiveis = ['Todos', '🔥 Promoções', ...new Set(produtos.map(p => p.categoria).filter(Boolean))];

  // Filtragem
  const produtosFiltrados = produtos.filter(p => {
    // Filtro por Categoria
    if (categoriaAtiva === '🔥 Promoções' && !p.em_promocao) return false;
    if (categoriaAtiva !== 'Todos' && categoriaAtiva !== '🔥 Promoções' && p.categoria !== categoriaAtiva) return false;

    // Filtro por Busca
    if (busca.trim()) {
      const q = busca.toLowerCase();
      const matchNome = p.nome?.toLowerCase().includes(q);
      const matchDesc = p.descricao?.toLowerCase().includes(q);
      const matchCat = p.categoria?.toLowerCase().includes(q);
      if (!matchNome && !matchDesc && !matchCat) return false;
    }

    return true;
  });

  return (
    <div className="pagina-produtos-vitrine fade-in">
      {/* 1. Hero da Vitrine */}
      <section className="hero-vitrine-produtos">
        <div className="badge-topo-vitrine">
          <Sparkles size={14} color="#ffffff" />
          <span>PRODUTOS EXCLUSIVOS ATUALESTILO</span>
        </div>
        <h1 className="titulo-hero-vitrine">
          Vitrine & Cuidados Masculinos
        </h1>
        <p className="subtitulo-hero-vitrine">
          Pomadas modeladoras, óleos nutritivos e tratamentos selecionados para valorizar o seu corte no dia a dia.
        </p>

        {/* Barra de Busca & Filtros */}
        <div className="controles-busca-vitrine">
          <div className="caixa-busca-produto">
            <Search size={18} className="icone-busca-vitrine" />
            <input 
              type="text"
              value={busca}
              onChange={(e) => setBusca(e.target.value)}
              placeholder="Buscar pomadas, óleos, shampoos..."
              className="input-busca-vitrine"
              aria-label="Buscar produtos"
            />
            {busca && (
              <button 
                onClick={() => setBusca('')} 
                className="btn-limpar-busca-vitrine"
                aria-label="Limpar busca"
              >
                ✕
              </button>
            )}
          </div>

          {/* Categorias Pills */}
          <div className="carrossel-filtros-categorias">
            {categoriasDisponiveis.map(cat => (
              <button
                key={cat}
                onClick={() => setCategoriaAtiva(cat)}
                className={`chip-categoria-vitrine ${categoriaAtiva === cat ? 'ativo' : ''}`}
              >
                {cat}
              </button>
            ))}
          </div>
        </div>
      </section>

      {/* 2. Grid de Produtos */}
      <main className="secao-catalogo-produtos">
        {carregando ? (
          <div className="estado-carregando-produtos">
            <RefreshCw size={28} className="anim-girar" />
            <p>Carregando produtos da loja...</p>
          </div>
        ) : erro ? (
          <div className="estado-erro-produtos">
            <p>{erro}</p>
            <button onClick={carregarProdutos} className="btn-tentar-novamente">
              <RefreshCw size={16} /> Tentar Novamente
            </button>
          </div>
        ) : produtosFiltrados.length === 0 ? (
          <div className="estado-vazio-produtos">
            <ShoppingBag size={42} color="#555555" />
            <h3>Nenhum produto encontrado</h3>
            <p>Tente buscar por outro termo ou selecione a categoria "Todos".</p>
            {(busca || categoriaAtiva !== 'Todos') && (
              <button 
                onClick={() => { setBusca(''); setCategoriaAtiva('Todos'); }}
                className="btn-limpar-filtros-vitrine"
              >
                Ver Todos os Produtos
              </button>
            )}
          </div>
        ) : (
          <div className="grid-produtos-vitrine">
            {produtosFiltrados.map(produto => (
              <ProductCard key={produto.id} produto={produto} />
            ))}
          </div>
        )}
      </main>

      {/* 3. Dúvidas & Atendimento WhatsApp */}
      <section className="card-duvidas-produtos hover-lift">
        <div className="icone-duvidas-box">
          <MessageSquare size={24} color="#ffffff" />
        </div>
        <h3>Precisa de ajuda para escolher o produto ideal?</h3>
        <p>Fale diretamente com os barbeiros e tire suas dúvidas sobre fixação, hidratação ou fragrância.</p>
        <a 
          href="https://wa.me/5575991309594?text=Ol%C3%A1!%20Gostaria%20de%20tirar%20uma%20d%C3%BAvida%20sobre%20os%20produtos%20da%20AtualEstilo."
          target="_blank"
          rel="noopener noreferrer"
          className="btn-falar-especialista-whats"
        >
          <WhatsAppIcon size={16} /> Consultar Especialista
        </a>
      </section>
    </div>
  );
}
