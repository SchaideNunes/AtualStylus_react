import React from 'react';
import { ShoppingBag, Tag } from 'lucide-react';
import { WhatsAppIcon } from './Icons';

export function ProductCard({ produto, telefoneWhatsapp = '5575991309594' }) {
  if (!produto) return null;

  const precoFormatado = Number(produto.preco || 0).toLocaleString('pt-BR', {
    style: 'currency',
    currency: 'BRL'
  });

  const precoPromocionalFormatado = produto.preco_promocional 
    ? Number(produto.preco_promocional).toLocaleString('pt-BR', {
        style: 'currency',
        currency: 'BRL'
      })
    : null;

  const valorFinalFormatado = (produto.em_promocao && precoPromocionalFormatado) 
    ? precoPromocionalFormatado 
    : precoFormatado;

  const mensagemReserva = encodeURIComponent(
    `Olá! Gostaria de reservar o produto: *${produto.nome}* (${valorFinalFormatado}) na AtualEstilo Barbearia.`
  );

  const linkWhatsapp = `https://wa.me/${telefoneWhatsapp}?text=${mensagemReserva}`;

  return (
    <div className="card-produto-vitrine hover-lift">
      {/* Imagem com Badges */}
      <div className="foto-produto-wrapper">
        <img 
          src={produto.foto || '/assets/Logo.webp'} 
          alt={produto.nome}
          className="foto-produto-img"
          onError={(e) => { e.target.src = '/assets/Logo.webp'; }}
        />
        <div className="overlay-produto-gradiente" />

        {/* Badge de Promoção */}
        {produto.em_promocao && (
          <div className="badge-produto-promo">
            🔥 {produto.porcentagem_desconto > 0 ? `-${produto.porcentagem_desconto}% OFF` : 'PROMOÇÃO'}
          </div>
        )}

        {/* Badge de Categoria */}
        {produto.categoria && (
          <div className="badge-produto-categoria">
            <Tag size={12} /> {produto.categoria}
          </div>
        )}
      </div>

      {/* Conteúdo do Produto */}
      <div className="conteudo-produto-vitrine">
        <h3 className="titulo-produto-vitrine">{produto.nome}</h3>
        {produto.descricao && (
          <p className="descricao-produto-vitrine">{produto.descricao}</p>
        )}

        {/* Bloco de Preços */}
        <div className="bloco-precos-produto">
          {produto.em_promocao && precoPromocionalFormatado ? (
            <div className="precos-promo-container">
              <span className="preco-antigo-riscado">{precoFormatado}</span>
              <span className="preco-destaque-promocional">{precoPromocionalFormatado}</span>
            </div>
          ) : (
            <span className="preco-destaque-normal">{precoFormatado}</span>
          )}
        </div>

        {/* Botão de Reserva */}
        <a 
          href={linkWhatsapp}
          target="_blank"
          rel="noopener noreferrer"
          className="btn-reservar-produto"
          id={`btn-reservar-${produto.id}`}
        >
          <WhatsAppIcon size={16} /> Reservar no WhatsApp
        </a>
      </div>
    </div>
  );
}
