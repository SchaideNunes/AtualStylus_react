import React from 'react';
import { 
  ShieldCheck, 
  Award, 
  Sparkles, 
  Clock, 
  MapPin, 
  Scissors, 
  MessageCircle, 
  CheckCircle2 
} from 'lucide-react';

function WhatsAppIcon({ size = 16 }) {
  return (
    <svg width={size} height={size} viewBox="0 0 24 24" fill="currentColor">
      <path d="M12.04 2c-5.46 0-9.91 4.45-9.91 9.91 0 1.75.46 3.45 1.32 4.95L2.05 22l5.25-1.38c1.45.79 3.08 1.21 4.74 1.21 5.46 0 9.91-4.45 9.91-9.91 0-2.65-1.03-5.14-2.9-7.01A9.816 9.816 0 0 0 12.04 2zm.01 1.67c2.2 0 4.26.86 5.82 2.42a8.225 8.225 0 0 1 2.41 5.83c0 4.54-3.7 8.24-8.24 8.24-1.48 0-2.93-.4-4.2-1.15l-.3-.18-3.12.82.83-3.04-.2-.31a8.186 8.186 0 0 1-1.26-4.38c0-4.54 3.7-8.24 8.24-8.24zm4.52 11.66c-.25-.13-1.47-.72-1.7-.81-.23-.08-.39-.13-.56.13-.17.25-.64.81-.79.97-.14.17-.29.19-.54.06-.25-.13-1.06-.39-2.02-1.25-.75-.67-1.26-1.5-1.4-1.75-.15-.25-.02-.39.11-.51.11-.11.25-.29.37-.43.13-.15.17-.25.25-.42.08-.17.04-.32-.02-.45-.06-.13-.56-1.35-.77-1.85-.2-.49-.41-.42-.56-.43-.14-.01-.31-.01-.48-.01-.17 0-.45.06-.68.32-.24.25-.9.88-.9 2.15s.92 2.49 1.05 2.67c.13.17 1.81 2.76 4.38 3.87.61.26 1.09.42 1.46.54.62.2 1.18.17 1.62.1.5-.07 1.47-.6 1.68-1.18.21-.58.21-1.07.15-1.18-.07-.1-.23-.17-.48-.29z" />
    </svg>
  );
}

export function Sobre({ onNavegar }) {
  return (
    <div className="container-sobre-revamp fade-in">
      {/* 1. Header Editorial */}
      <section className="sobre-hero-card scale-in">
        <span className="badge-sobre-tag">SOBRE NÓS</span>
        <h1 className="titulo-sobre-hero">
          TRADIÇÃO, PRECISÃO & ESTILO
        </h1>
        <p className="subtitulo-sobre-hero">
          A <strong style={{ color: '#ffffff' }}>AtualEstilo Barbearia</strong> nasceu com o compromisso de oferecer um padrão superior em estética masculina em Barrocas-BA, unindo a clássica arte da barbearia às tendências mais modernas do mercado.
        </p>

        {/* Estatísticas / Conquistas */}
        <div className="grid-estatisticas-sobre">
          <div className="item-estatistica">
            <span className="numero-estatistica">+3.000</span>
            <span className="rotulo-estatistica">Atendimentos Realizados</span>
          </div>
          <div className="item-estatistica">
            <span className="numero-estatistica">100%</span>
            <span className="rotulo-estatistica">Pontualidade & Compromisso</span>
          </div>
          <div className="item-estatistica">
            <span className="numero-estatistica">2</span>
            <span className="rotulo-estatistica">Barbeiros Especialistas</span>
          </div>
          <div className="item-estatistica">
            <span className="numero-estatistica">5.0 ★</span>
            <span className="rotulo-estatistica">Avaliação dos Clientes</span>
          </div>
        </div>
      </section>

      {/* 2. Nossos Barbeiros Experts */}
      <section className="secao-barbeiros-sobre">
        <h2 className="titulo-secao-sobre">Profissionais Especialistas</h2>
        <p className="subtitulo-secao-sobre">Conheça quem cuida do seu estilo com maestria e dedicação</p>

        <div className="grid-barbeiros-sobre">
          {/* Card Geilson */}
          <div className="card-barbeiro-perfil hover-lift">
            <div className="foto-perfil-wrapper">
              <img 
                src="/assets/Geilson.webp" 
                alt="Geilson" 
                className="foto-perfil-img"
                onError={(e) => { e.target.src = '/assets/Logo.webp'; }}
              />
              <div className="overlay-foto-perfil" />
            </div>
            <div className="conteudo-perfil-barbeiro">
              <h3 className="nome-perfil">Geilson</h3>
              <a 
                href="https://wa.me/5575991309594" 
                target="_blank" 
                rel="noopener noreferrer"
                className="btn-falar-barbeiro"
              >
                <WhatsAppIcon size={16} /> Falar no WhatsApp
              </a>
            </div>
          </div>

          {/* Card Denilson */}
          <div className="card-barbeiro-perfil hover-lift">
            <div className="foto-perfil-wrapper">
              <img 
                src="/assets/Denilson.webp" 
                alt="Denilson" 
                className="foto-perfil-img"
                onError={(e) => { e.target.src = '/assets/Logo.webp'; }}
              />
              <div className="overlay-foto-perfil" />
            </div>
            <div className="conteudo-perfil-barbeiro">
              <h3 className="nome-perfil">Denilson</h3>
              <a 
                href="https://wa.me/5575991073283" 
                target="_blank" 
                rel="noopener noreferrer"
                className="btn-falar-barbeiro"
              >
                <WhatsAppIcon size={16} /> Falar no WhatsApp
              </a>
            </div>
          </div>
        </div>
      </section>

      {/* 3. Pilares e Diferenciais */}
      <section className="secao-pilares-sobre">
        <h2 className="titulo-secao-sobre">Por que escolher a AtualEstilo?</h2>
        
        <div className="grid-pilares-sobre">
          <div className="card-pilar-sobre hover-lift">
            <div className="icone-pilar-box">
              <ShieldCheck size={26} color="#ffffff" />
            </div>
            <h4>Compromisso & Pontualidade</h4>
            <p>Seu tempo é prioridade. Trabalhamos estritamente com hora marcada para você não perder tempo em filas.</p>
          </div>

          <div className="card-pilar-sobre hover-lift">
            <div className="icone-pilar-box">
              <Award size={26} color="#ffffff" />
            </div>
            <h4>Técnicas de Alto Padrão</h4>
            <p>Produtos selecionados de primeira linha, equipamentos esterilizados e precisão em cada detalhe do corte.</p>
          </div>

          <div className="card-pilar-sobre hover-lift">
            <div className="icone-pilar-box">
              <Sparkles size={26} color="#ffffff" />
            </div>
            <h4>Ambiente Exclusivo</h4>
            <p>Espaço climatizado, atendimento acolhedor e a atmosfera ideal para você relaxar e renovar o visual.</p>
          </div>
        </div>
      </section>

      {/* 4. Card de Localização & CTA Final */}
      <section className="card-cta-sobre hover-lift">
        <div className="conteudo-cta-sobre">
          <div className="icone-local-sobre">
            <MapPin size={28} color="#ffffff" />
          </div>
          <h3>Venha nos Fazer uma Visita</h3>
          <p className="endereco-cta-sobre">
            Rua Monsenhor Carlos Olímpio, 31 • Centro, Barrocas - BA
          </p>
          <button 
            onClick={() => onNavegar && onNavegar('agendamento')}
            className="btn-agendar-cta-sobre hover-lift"
          >
            ✂️ Agendar Atendimento
          </button>
        </div>
      </section>
    </div>
  );
}
