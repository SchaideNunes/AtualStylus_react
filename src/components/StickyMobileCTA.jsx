import React, { useState, useEffect } from 'react';
import { Scissors } from 'lucide-react';

export function StickyMobileCTA({ onAgendar, paginaAtiva }) {
  const [visivel, setVisivel] = useState(false);

  // Páginas onde o botão NÃO deve aparecer
  const desativado = paginaAtiva === 'agendamento' || paginaAtiva === 'admin' || paginaAtiva === 'login';

  useEffect(() => {
    if (desativado) return;

    const handleScroll = () => {
      // Exibe o botão após 150px de rolagem
      if (window.scrollY > 150) {
        setVisivel(true);
      } else {
        setVisivel(false);
      }
    };

    window.addEventListener('scroll', handleScroll, { passive: true });
    handleScroll(); // Checagem inicial
    return () => window.removeEventListener('scroll', handleScroll);
  }, [desativado]);

  if (desativado) {
    return null;
  }

  return (
    <div className={`sticky-mobile-cta-wrapper ${visivel ? 'visivel' : ''}`}>
      <button 
        onClick={onAgendar}
        className="btn-sticky-mobile pulse"
        aria-label="Agendar Horário Agora"
      >
        <Scissors size={20} className="icone-sticky-tesoura" />
        <span className="texto-sticky-cta">✂️ Agendar Horário</span>
      </button>
    </div>
  );
}
