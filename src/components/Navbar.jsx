import React, { useState } from 'react';
import { Menu, X } from 'lucide-react';

export function Navbar({ paginaAtiva, onNavegar }) {
  const [menuAberto, setMenuAberto] = useState(false);

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
              src="/assets/logo sem fundo.png" 
              alt="Logo AtualEstilo" 
              className="imagem-logo-cabecalho" 
            />
          </div>

          <button 
            className="botao-menu-mobile" 
            onClick={() => setMenuAberto(!menuAberto)}
            aria-label="Abrir Menu"
          >
            {menuAberto ? <X size={28} /> : <Menu size={28} />}
          </button>

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

        {menuAberto && (
          <nav className="menu-mobile">
            <button 
              onClick={() => handleNavegar('inicio')} 
              className={`item-menu-mobile ${paginaAtiva === 'inicio' ? 'ativo' : ''}`}
            >
              Início
            </button>
            <button 
              onClick={() => handleNavegar('agendamento')} 
              className={`item-menu-mobile ${paginaAtiva === 'agendamento' ? 'ativo' : ''}`}
            >
              Agendar
            </button>
            <button 
              onClick={() => handleNavegar('sobre')} 
              className={`item-menu-mobile ${paginaAtiva === 'sobre' ? 'ativo' : ''}`}
            >
              Sobre Nós
            </button>
            <button 
              onClick={() => handleNavegar('meusAgendamentos')} 
              className={`item-menu-mobile ${paginaAtiva === 'meusAgendamentos' ? 'ativo' : ''}`}
            >
              Meus Agendamentos
            </button>
          </nav>
        )}
      </div>
    </header>
  );
}
