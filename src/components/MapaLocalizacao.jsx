import React, { useState } from 'react';
import { MapPin, Navigation, Copy, Check, ExternalLink } from 'lucide-react';

export function MapaLocalizacao() {
  const [copiado, setCopiado] = useState(false);
  const enderecoCompleto = 'Rua Monsenhor Carlos Olímpio, 31, Centro, Barrocas - BA, 48705-000';

  const handleCopiarEndereco = () => {
    navigator.clipboard.writeText(enderecoCompleto);
    setCopiado(true);
    setTimeout(() => setCopiado(false), 2500);
  };

  const urlGoogleMaps = 'https://www.google.com/maps/search/?api=1&query=Barbearia+atual+estilo+Barrocas+BA';
  const urlWaze = 'https://waze.com/ul?q=Rua+Monsenhor+Carlos+Olimpio+31+Barrocas+BA';

  return (
    <section className="secao-mapa-container">
      <div className="mapa-cabecalho">
        <div className="badge-secao-tag">
          <MapPin size={16} />
          <span>Fácil Acesso</span>
        </div>
        <h2 className="titulo-secao-principal">Nossa Localização</h2>
        <p className="subtitulo-secao-principal">
          Venha nos visitar no centro de Barrocas - BA com estacionamento fácil e ambiente climatizado.
        </p>
      </div>

      <div className="card-mapa-wrapper">
        {/* Iframe Responsivo do Google Maps */}
        <div className="container-iframe-mapa">
          <iframe
            title="Mapa de Localização AtualEstilo Barbearia"
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3902.973413998188!2d-39.00428!3d-11.5282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x7144e5900000001%3A0x0!2sBarrocas%2C%20BA!5e0!3m2!1spt-BR!2sbr!4v1700000000000"
            width="100%"
            height="380"
            style={{ border: 0 }}
            allowFullScreen=""
            loading="lazy"
            referrerPolicy="no-referrer-when-downgrade"
          />
        </div>

        {/* Painel de Informações & Rotas */}
        <div className="info-rotas-box">
          <div className="linha-endereco-destaque">
            <MapPin size={22} color="#ffffff" className="icone-mapa-destaque" />
            <div>
              <h3 className="titulo-local-mapa">AtualEstilo Barbearia</h3>
              <p className="texto-endereco-mapa">{enderecoCompleto}</p>
            </div>
          </div>

          <div className="grupo-botoes-rotas">
            <a 
              href={urlGoogleMaps} 
              target="_blank" 
              rel="noopener noreferrer" 
              className="btn-rota-mapa btn-google-maps"
              aria-label="Como Chegar pelo Google Maps"
            >
              <Navigation size={18} />
              <span>Como Chegar (Google Maps)</span>
              <ExternalLink size={14} className="icone-link-externo" />
            </a>

            <a 
              href={urlWaze} 
              target="_blank" 
              rel="noopener noreferrer" 
              className="btn-rota-mapa btn-waze"
              aria-label="Traçar Rota no Waze"
            >
              <Navigation size={18} />
              <span>Traçar Rota no Waze</span>
              <ExternalLink size={14} className="icone-link-externo" />
            </a>

            <button 
              onClick={handleCopiarEndereco} 
              className="btn-copiar-endereco"
              aria-label="Copiar endereço completo"
            >
              {copiado ? <Check size={16} color="#22c55e" /> : <Copy size={16} />}
              <span>{copiado ? 'Endereço Copiado!' : 'Copiar Endereço'}</span>
            </button>
          </div>
        </div>
      </div>
    </section>
  );
}
