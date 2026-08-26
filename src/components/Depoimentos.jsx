import React from 'react';
import { Star, MessageSquareQuote, CheckCircle2 } from 'lucide-react';

export const DEPOIMENTOS_REAIS = [
  {
    id: 1,
    nome: 'Jaedson Nascimento',
    tempo: 'Cliente Fiel',
    estrelas: 5,
    foto: 'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?w=100&auto=format&fit=crop&q=80',
    texto: 'Um bom atendimento, com profissionais top! Pontualidade e atenção nos detalhes.',
    badge: 'Local Guide'
  },
  {
    id: 2,
    nome: 'Antonio Marcos Araújo',
    tempo: 'Cliente Verificado',
    estrelas: 5,
    foto: 'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?w=100&auto=format&fit=crop&q=80',
    texto: 'Excelente trabalho! Profissional muito dedicado, ambiente climatizado e corte de alto nível.',
    badge: 'Local Guide'
  },
  {
    id: 3,
    nome: 'Marcos Rodrigues',
    tempo: 'Cliente Verificado',
    estrelas: 5,
    foto: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=100&auto=format&fit=crop&q=80',
    texto: 'Atendimento top! Sempre saio satisfeito com a qualidade do degradê e da barba.',
    badge: 'Avaliação Google'
  },
  {
    id: 4,
    nome: 'Matheus Teles',
    tempo: 'Cliente Verificado',
    estrelas: 5,
    foto: 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=100&auto=format&fit=crop&q=80',
    texto: 'Excelente! O agendamento pelo site facilitou demais, cheguei no meu horário e fui atendido na hora.',
    badge: 'Avaliação Google'
  },
  {
    id: 5,
    nome: 'Ciel Premol',
    tempo: 'Cliente Fiel',
    estrelas: 5,
    foto: 'https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?w=100&auto=format&fit=crop&q=80',
    texto: 'Trabalha com muita dedicação e qualidade. Recomendo para toda a região de Barrocas.',
    badge: 'Local Guide'
  },
  {
    id: 6,
    nome: 'Kekeu',
    tempo: 'Cliente Verificado',
    estrelas: 5,
    foto: 'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?w=100&auto=format&fit=crop&q=80',
    texto: 'Ótimo barbeiro, excelente precisão no navalhado e tesoura.',
    badge: 'Avaliação Google'
  }
];

export function Depoimentos() {
  return (
    <section className="secao-depoimentos-container">
      {/* Cabeçalho de Destaque Google Reviews */}
      <div className="depoimentos-cabecalho">
        <div className="badge-secao-tag">
          <MessageSquareQuote size={16} />
          <span>Avaliações Reais</span>
        </div>
        <h2 className="titulo-secao-principal">O Que Nossos Clientes Dizem</h2>
        <p className="subtitulo-secao-principal">
          A confiança de quem já viveu a experiência AtualEstilo Barbearia.
        </p>

        {/* Card Score do Google */}
        <div className="card-score-google scale-in">
          <div className="google-logo-wrapper">
            <svg viewBox="0 0 24 24" width="28" height="28">
              <path fill="#4285F4" d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z"/>
              <path fill="#34A853" d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z"/>
              <path fill="#FBBC05" d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.06H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.94l2.85-2.22.81-.63z"/>
              <path fill="#EA4335" d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.06l3.66 2.84c.87-2.6 3.3-4.52 6.16-4.52z"/>
            </svg>
            <div className="info-google-score">
              <div className="linha-score-estrelas">
                <span className="numero-score">5,0</span>
                <div className="estrelas-score">
                  {[...Array(5)].map((_, i) => (
                    <Star key={i} size={18} fill="#FBBC05" color="#FBBC05" />
                  ))}
                </div>
              </div>
              <span className="subtexto-score">25 avaliações no Google • Excelente</span>
            </div>
          </div>
        </div>
      </div>

      {/* Grid de Depoimentos */}
      <div className="grid-cards-depoimentos">
        {DEPOIMENTOS_REAIS.map((item) => (
          <div key={item.id} className="card-depoimento-individual hover-lift">
            <div className="card-depoimento-topo">
              <div className="avatar-cliente-wrapper">
                <img 
                  src={item.foto} 
                  alt={item.nome} 
                  className="avatar-cliente-foto"
                  loading="lazy" 
                />
                <div>
                  <h4 className="nome-cliente-depoimento">{item.nome}</h4>
                  <span className="status-cliente-depoimento">
                    <CheckCircle2 size={12} color="#22c55e" /> {item.tempo}
                  </span>
                </div>
              </div>
              <span className="badge-tag-depoimento">{item.badge}</span>
            </div>

            <div className="estrelas-card-depoimento">
              {[...Array(item.estrelas)].map((_, i) => (
                <Star key={i} size={15} fill="#FBBC05" color="#FBBC05" />
              ))}
            </div>

            <p className="texto-depoimento-cliente">"{item.texto}"</p>
          </div>
        ))}
      </div>
    </section>
  );
}
