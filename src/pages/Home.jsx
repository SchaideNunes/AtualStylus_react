import React, { useMemo } from 'react';
import { Clock, MapPin, Scissors, ChevronDown, CheckCircle2 } from 'lucide-react';
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
  const statusFuncionamento = useMemo(() => {
    const agora = new Date();
    const diaSemana = agora.getDay(); // 0 = Domingo, 1 = Segunda, ..., 6 = Sábado
    const hora = agora.getHours();
    const minuto = agora.getMinutes();
    const minutosAtuais = hora * 60 + minuto;
    const aberturaMin = 8 * 60 + 30; // 08:30
    const fechamentoMin = 18 * 60 + 30; // 18:30

    if (diaSemana === 0) {
      return {
        aberto: false,
        texto: 'Fechado hoje (Domingo) • Reabre Segunda às 08:30',
        classe: 'status-fechado'
      };
    }

    if (minutosAtuais >= aberturaMin && minutosAtuais < fechamentoMin) {
      return {
        aberto: true,
        texto: 'Aberto agora • Atendimento até 18:30',
        classe: 'status-aberto'
      };
    } else if (minutosAtuais < aberturaMin) {
      return {
        aberto: false,
        texto: 'Fechado no momento • Abre hoje às 08:30',
        classe: 'status-fechado'
      };
    } else {
      return {
        aberto: false,
        texto: 'Fechado • Reabre amanhã às 08:30',
        classe: 'status-fechado'
      };
    }
  }, []);

  const handleAgendarServico = (servico) => {
    if (onSelecionarServico) {
      onSelecionarServico(`${servico.nome} - R$ ${servico.valor}`);
    }
    onNavegar('agendamento');
  };

  const handleScrollParaServicos = () => {
    const secao = document.getElementById('secao-servicos-catalogo');
    if (secao) {
      secao.scrollIntoView({ behavior: 'smooth' });
    }
  };

  return (
    <div className="fade-in">
      {/* ========================================================================= */}
      {/* HERO UNIFICADO & EDITORIAL */}
      {/* ========================================================================= */}
      <section className="hero-editorial-container">
        <div className="hero-editorial-card">
          {/* Badge de Status Dinâmico */}
          <div className={`badge-status-funcionamento ${statusFuncionamento.classe} scale-in`}>
            <span className="ponto-pulsante" />
            <span className="texto-status">{statusFuncionamento.texto}</span>
          </div>

          {/* Logo Centralizada em Destaque */}
          <div className="container-logo-editorial scale-in">
            <img 
              src="/assets/logo sem fundo.png" 
              alt="Logo AtualEstilo" 
              className="imagem-logo-editorial" 
            />
          </div>

          {/* Título & Headline Editorial */}
          <h1 className="titulo-hero-editorial">
            ESTILO & PRECISÃO <br />
            <span className="subtitulo-destaque">EM CADA DETALHE</span>
          </h1>

          <p className="descricao-hero-editorial">
            A experiência definitiva em barbearia clássica e moderna. Atendimento exclusivo, técnicas refinadas e pontualidade máxima para valorizar a sua melhor versão.
          </p>

          {/* Botões de Ação */}
          <div className="grupo-botoes-hero">
            <button 
              data-testid="btn-hero-agendar"
              onClick={() => onNavegar('agendamento')} 
              className="botao-cta-hero"
            >
              ✂️ Agendar Meu Horário
            </button>

            <button 
              onClick={handleScrollParaServicos}
              className="botao-secundario-hero"
            >
              Ver Serviços <ChevronDown size={18} style={{ marginLeft: '4px' }} />
            </button>
          </div>
        </div>

        {/* ========================================================================= */}
        {/* CARDS DE INFORMAÇÕES RÁPIDAS & HORÁRIOS */}
        {/* ========================================================================= */}
        <div className="grid-info-rapidas">
          <div className="card-info-rapida hover-lift">
            <div className="icone-info-wrapper">
              <Clock size={24} color="#ffffff" />
            </div>
            <div className="conteudo-info-rapida">
              <h4>Horário de Atendimento</h4>
              <p className="destaque-info">08:30 às 18:30</p>
              <span className="sub-info">Segunda a Sábado • Domingo Fechado</span>
            </div>
          </div>

          <div className="card-info-rapida hover-lift">
            <div className="icone-info-wrapper">
              <MapPin size={24} color="#ffffff" />
            </div>
            <div className="conteudo-info-rapida">
              <h4>Localização</h4>
              <p className="destaque-info">Barrocas - BA</p>
              <span className="sub-info">Rua Monsenhor Carlos Olímpio, 31</span>
            </div>
          </div>

          <div className="card-info-rapida hover-lift">
            <div className="icone-info-wrapper">
              <Scissors size={24} color="#ffffff" />
            </div>
            <div className="conteudo-info-rapida">
              <h4>Barbeiros Experts</h4>
              <p className="destaque-info">Geilson & Denilson</p>
              <span className="sub-info">Cortes clássicos, degradês e barba</span>
            </div>
          </div>
        </div>
      </section>

      {/* ========================================================================= */}
      {/* CATÁLOGO DE SERVIÇOS */}
      {/* ========================================================================= */}
      <section id="secao-servicos-catalogo" className="secao-servicos">
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
