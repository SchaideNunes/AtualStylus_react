import React from 'react';

export function Sobre() {
  return (
    <div className="container-sobre fade-in">
      <div className="caixa-sobre hover-lift">
        <h2 className="titulo-sobre">Sobre Nós</h2>
        <p className="texto-sobre">
          A <strong className="destaque-texto">AtualEstilo Barbearia</strong> nasceu com o propósito de resgatar a tradição das barbearias clássicas, combinando técnicas tradicionais com o melhor da modernidade.
        </p>
        <p className="texto-sobre">
          Nossa equipe é formada por profissionais altamente qualificados e apaixonados pela arte de cuidar da aparência masculina. Cada corte é executado com precisão e dedicação, garantindo que você saia daqui não apenas com um visual renovado, mas com a autoestima elevada.
        </p>
        <p className="texto-sobre">
          Venha nos visitar e descubra por que somos referência em estilo e qualidade na região de Barrocas e arredores!
        </p>

        <div className="fotos-sobre-nos">
          <div className="foto-sobre-card">
            <img src="/assets/Geilson.jpg" alt="Barbeiro Geilson" />
            <span>Geilson</span>
          </div>
          <div className="foto-sobre-card">
            <img src="/assets/Denilson.jpg" alt="Barbeiro Denilson" />
            <span>Denilson</span>
          </div>
        </div>
      </div>

      <div className="grid-valores">
        <div className="caixa-valor hover-lift">
          <h3 className="titulo-valor">Nossa Missão</h3>
          <p className="texto-valor">
            Proporcionar uma experiência única de cuidado pessoal, valorizando a tradição e o estilo autêntico de cada cliente com pontualidade e conforto.
          </p>
        </div>
        <div className="caixa-valor hover-lift">
          <h3 className="titulo-valor">Nossos Valores</h3>
          <p className="texto-valor">
            Qualidade impecável, respeito aos horários, tradição na tesoura e excelência no atendimento são os pilares inegociáveis do nosso trabalho.
          </p>
        </div>
      </div>
    </div>
  );
}
