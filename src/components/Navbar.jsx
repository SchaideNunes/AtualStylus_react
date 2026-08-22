import React, { useState, useEffect } from 'react';
import { Menu, X, Calendar, UserCheck, Home, Info, ShoppingBag } from 'lucide-react';

export function Navbar({ paginaAtiva, onNavegar }) {
  const [menuAberto, setMenuAberto] = useState(false);

  // Bloqueia o scroll da página quando a gaveta mobile estiver aberta
  useEffect(() => {
    if (menuAberto) {
      document.body.style.overflow = 'hidden';
      document.body.style.touchAction = 'none';
    } else {
      document.body.style.overflow = '';
      document.body.style.touchAction = '';
    }
    return () => {
      document.body.style.overflow = '';
      document.body.style.touchAction = '';
    };
  }, [menuAberto]);

  // Fecha o menu ao pressionar Escape ou redimensionar para desktop
  useEffect(() => {
    const handleKeyDown = (e) => {
      if (e.key === 'Escape') setMenuAberto(false);
    };
    const handleResize = () => {
      if (window.innerWidth >= 768) setMenuAberto(false);
    };

    window.addEventListener('keydown', handleKeyDown);
    window.addEventListener('resize', handleResize);
    return () => {
      window.removeEventListener('keydown', handleKeyDown);
      window.removeEventListener('resize', handleResize);
    };
  }, []);

  const handleNavegar = (pagina) => {
    onNavegar(pagina);
    setMenuAberto(false);
    window.scrollTo({ top: 0, behavior: 'smooth' });
  };

  return (
    <header className="cabecalho">
      <div className="container-cabecalho">
        <div className="barra-navegacao">
          <div className="logo-link" onClick={() => handleNavegar('inicio')} role="button" tabIndex={0}>
            <img 
              src="/assets/logo sem fundo.webp" 
              alt="AtualEstilo Barbearia" 
              className="imagem-logo-cabecalho" 
            />
          </div>

          {/* Botão Hamburger com Animação */}
          <button 
            className={`botao-menu-mobile ${menuAberto ? 'aberto' : ''}`}
            onClick={() => setMenuAberto(!menuAberto)}
            aria-label="Abrir Menu"
            aria-expanded={menuAberto}
          >
            <span className="hamburger-linha linha-1" />
            <span className="hamburger-linha linha-2" />
            <span className="hamburger-linha linha-3" />
          </button>

          {/* Menu Desktop */}
          <nav className="menu-desktop">
            <button 
              onClick={() => handleNavegar('inicio')} 
              className={`link-menu ${paginaAtiva === 'inicio' ? 'ativo' : ''}`}
            >
              Início
            </button>
            <button 
              onClick={() => handleNavegar('agendamento')} 
              className={`link-menu ${paginaAtiva === 'agendamento' ? 'ativo' : ''}`}
            >
              Agendar
            </button>
            <button 
              onClick={() => handleNavegar('produtos')} 
              className={`link-menu ${paginaAtiva === 'produtos' ? 'ativo' : ''}`}
            >
              Produtos
            </button>
            <button 
              onClick={() => handleNavegar('sobre')} 
              className={`link-menu ${paginaAtiva === 'sobre' ? 'ativo' : ''}`}
            >
              Sobre Nós
            </button>
            <button 
              onClick={() => handleNavegar('meusAgendamentos')} 
              className={`link-menu ${paginaAtiva === 'meusAgendamentos' ? 'ativo' : ''}`}
            >
              Meus Agendamentos
            </button>
          </nav>
        </div>
      </div>

      {/* ========================================================================= */}
      {/* GAVETA LATERAL DIREITA MOBILE (DRAWER) */}
      {/* ========================================================================= */}
      <div 
        className={`drawer-backdrop ${menuAberto ? 'ativo' : ''}`} 
        onClick={() => setMenuAberto(false)} 
      />

      <aside 
        data-testid="drawer-mobile"
        className={`drawer-mobile-painel ${menuAberto ? 'aberto' : ''}`}
        aria-hidden={!menuAberto}
      >
        <div className="drawer-header">
          <span className="drawer-titulo">Menu</span>
          <button 
            className="drawer-btn-fechar"
            onClick={() => setMenuAberto(false)}
            aria-label="Fechar Menu"
          >
            <X size={22} />
          </button>
        </div>

        <nav className="drawer-lista-links">
          <button 
            onClick={() => handleNavegar('inicio')} 
            className={`item-drawer-mobile ${paginaAtiva === 'inicio' ? 'ativo' : ''}`}
          >
            <Home size={18} className="icone-drawer" />
            Início
          </button>

          <button 
            onClick={() => handleNavegar('agendamento')} 
            className={`item-drawer-mobile ${paginaAtiva === 'agendamento' ? 'ativo' : ''}`}
          >
            <Calendar size={18} className="icone-drawer" />
            Agendar
          </button>

          <button 
            onClick={() => handleNavegar('produtos')} 
            className={`item-drawer-mobile ${paginaAtiva === 'produtos' ? 'ativo' : ''}`}
          >
            <ShoppingBag size={18} className="icone-drawer" />
            Produtos
          </button>

          <button 
            onClick={() => handleNavegar('sobre')} 
            className={`item-drawer-mobile ${paginaAtiva === 'sobre' ? 'ativo' : ''}`}
          >
            <Info size={18} className="icone-drawer" />
            Sobre Nós
          </button>

          <button 
            onClick={() => handleNavegar('meusAgendamentos')} 
            className={`item-drawer-mobile ${paginaAtiva === 'meusAgendamentos' ? 'ativo' : ''}`}
          >
            <UserCheck size={18} className="icone-drawer" />
            Meus Agendamentos
          </button>
        </nav>

        <div className="drawer-footer">
          <button 
            onClick={() => handleNavegar('agendamento')} 
            className="drawer-cta-btn"
          >
            ✂️ Agendar Agora
          </button>
        </div>
      </aside>
    </header>
  );
}
