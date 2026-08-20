import React from 'react';

export function ServiceCard({ servico, onAgendar }) {
  return (
    <div 
      className="cartao-servico hover-lift"
      onClick={() => onAgendar(servico)}
      role="button"
      tabIndex={0}
    >
      <div className="imagem-servico">
        <img 
          src={servico.foto} 
          alt={servico.nome} 
          className="foto-servico"
          loading="lazy"
        />
      </div>
      <div className="info-servico">
        <h3 className="nome-servico">{servico.nome}</h3>
        <p className="preco-servico">R$ {servico.valor},00</p>
        <span className="botao-card-agendar">
          ✂️ Agendar Serviço
        </span>
      </div>
    </div>
  );
}
