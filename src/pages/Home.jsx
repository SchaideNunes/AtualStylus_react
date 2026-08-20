import React from 'react';
import { Clock } from 'lucide-react';
import { ServiceCard } from '../components/ServiceCard';

export const SERVICOS_LISTA = [
  { id: 1, nome: 'Corte e Barba', valor: 35, foto: '/assets/corte-barba.jpg' },
  { id: 2, nome: 'Corte Social', valor: 25, foto: '/assets/corte-social.jpg' },
  { id: 3, nome: 'Degradê', valor: 25, foto: '/assets/degrade.jpg' },
  { id: 4, nome: 'Navalhado', valor: 25, foto: '/assets/navalhado.jpg' },
  { id: 5, nome: 'Corte Raspado', valor: 20, foto: '/assets/corte-raspado.jpg' },
  { id: 6, nome: 'Barba e Pezinho', valor: 15, foto: '/assets/barba-pezinho.jpg' }
];

export function Home({ onNavegar, onSelecionarServico }) {
  const handleAgendarServico = (servico) => {
    if (onSelecionarServico) {
      onSelecionarServico(`${servico.nome} - R$ ${servico.valor}`);
    }
    onNavegar('agendamento');
  };

  return (
    <div className="fade-in">
      <section className="secao-hero-dividida">
        <div className="coluna-hero-texto hover-lift">
          <div className="circulo-icone scale-in">
            <img 
              src="/assets/logo sem fundo.png" 
              alt="Logo AtualEstilo" 
              className="imagem-logo-hero" 
            />
          </div>
          <p className="subtitulo-hero">
            Estilo e tradição em cada corte. Venha viver a experiência de uma barbearia moderna com atendimento excepcional e profissionais experientes.
          </p>
        </div>

        <div className="coluna-hero-horario hover-lift">
          <Clock className="icone-relogio-hero pulse" />
          <h3 className="titulo-horario-hero">Horário de Funcionamento</h3>
          
          <div className="lista-horarios-hero">
            <div className="item-horario-hero">
              <span className="dia-semana-hero">Segunda - Sexta</span>
              <span className="hora-funcionamento-hero">08:30 - 18:30</span>
            </div>
            <div className="item-horario-hero">
              <span className="dia-semana-hero">Sábado</span>
              <span className="hora-funcionamento-hero">08:30 - 18:30</span>
            </div>
            <div className="item-horario-hero">
              <span className="dia-semana-hero">Domingo</span>
              <span className="hora-funcionamento-hero" style={{ color: '#ef4444' }}>Fechado</span>
            </div>
          </div>

          <button 
            onClick={() => onNavegar('agendamento')} 
            className="botao-agendar-hero"
          >
            ✂️ Agende Seu Horário
          </button>
        </div>
      </section>

      <section className="secao-servicos">
        <h3 className="titulo-secao">Nossos Serviços</h3>
        <div className="grid-servicos">
          {SERVICOS_LISTA.map((servico) => (
            <ServiceCard 
              key={servico.id} 
              servico={servico} 
              onAgendar={handleAgendarServico} 
            />
          ))}
        </div>

        <div className="container-botao-servicos">
          <button 
            onClick={() => onNavegar('agendamento')} 
            className="botao-agendar-servicos pulse"
          >
            ✂️ Agendar Agora
          </button>
        </div>
      </section>
    </div>
  );
}
