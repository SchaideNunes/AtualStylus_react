import React from 'react';
import { Mail, MapPin, Instagram } from 'lucide-react';

function WhatsAppLogo({ size = 20 }) {
  return (
    <svg 
      width={size} 
      height={size} 
      viewBox="0 0 24 24" 
      fill="currentColor"
      aria-hidden="true"
    >
      <path d="M12.04 2c-5.46 0-9.91 4.45-9.91 9.91 0 1.75.46 3.45 1.32 4.95L2.05 22l5.25-1.38c1.45.79 3.08 1.21 4.74 1.21 5.46 0 9.91-4.45 9.91-9.91 0-2.65-1.03-5.14-2.9-7.01A9.816 9.816 0 0 0 12.04 2zm.01 1.67c2.2 0 4.26.86 5.82 2.42a8.225 8.225 0 0 1 2.41 5.83c0 4.54-3.7 8.24-8.24 8.24-1.48 0-2.93-.4-4.2-1.15l-.3-.18-3.12.82.83-3.04-.2-.31a8.186 8.186 0 0 1-1.26-4.38c0-4.54 3.7-8.24 8.24-8.24zm4.52 11.66c-.25-.13-1.47-.72-1.7-.81-.23-.08-.39-.13-.56.13-.17.25-.64.81-.79.97-.14.17-.29.19-.54.06-.25-.13-1.06-.39-2.02-1.25-.75-.67-1.26-1.5-1.4-1.75-.15-.25-.02-.39.11-.51.11-.11.25-.29.37-.43.13-.15.17-.25.25-.42.08-.17.04-.32-.02-.45-.06-.13-.56-1.35-.77-1.85-.2-.49-.41-.42-.56-.43-.14-.01-.31-.01-.48-.01-.17 0-.45.06-.68.32-.24.25-.9.88-.9 2.15s.92 2.49 1.05 2.67c.13.17 1.81 2.76 4.38 3.87.61.26 1.09.42 1.46.54.62.2 1.18.17 1.62.1.5-.07 1.47-.6 1.68-1.18.21-.58.21-1.07.15-1.18-.07-.1-.23-.17-.48-.29z" />
    </svg>
  );
}

export function Footer({ onNavegar, onAbrirPrivacidade }) {
  return (
    <footer className="rodape">
      <div className="container-rodape">
        <div className="grid-rodape">
          <div className="coluna-rodape">
            <h3>AtualEstilo</h3>
            <p className="texto-coluna">
              Tradição e estilo em cada corte. Sua barbearia de confiança com atendimento de excelência e profissionais dedicados em Barrocas - BA.
            </p>
          </div>

          <div className="coluna-rodape">
            <h3>Links Rápidos</h3>
            <ul className="lista-links">
              <li>
                <button onClick={() => onNavegar('inicio')} className="link-rodape">Início</button>
              </li>
              <li>
                <button onClick={() => onNavegar('agendamento')} className="link-rodape">Agendar</button>
              </li>
              <li>
                <button onClick={() => onNavegar('sobre')} className="link-rodape">Sobre Nós</button>
              </li>
              <li>
                <button onClick={() => onNavegar('meusAgendamentos')} className="link-rodape">Meus Agendamentos</button>
              </li>
              {onAbrirPrivacidade && (
                <li>
                  <button onClick={onAbrirPrivacidade} className="link-rodape">Política de Privacidade (LGPD)</button>
                </li>
              )}
            </ul>
          </div>

          <div className="coluna-rodape">
            <h3>Contato & WhatsApp</h3>
            <ul className="lista-contato">
              <li className="item-contato">
                <a 
                  href="https://wa.me/5575991309594" 
                  target="_blank" 
                  rel="noopener noreferrer" 
                  className="link-contato-whatsapp"
                  aria-label="WhatsApp Geilson: (75) 99130-9594"
                >
                  <WhatsAppLogo size={18} />
                  <span>Geilson: (75) 99130-9594</span>
                </a>
              </li>
              <li className="item-contato">
                <a 
                  href="https://wa.me/5575991073283" 
                  target="_blank" 
                  rel="noopener noreferrer" 
                  className="link-contato-whatsapp"
                  aria-label="WhatsApp Denilson: (75) 99107-3283"
                >
                  <WhatsAppLogo size={18} />
                  <span>Denilson: (75) 99107-3283</span>
                </a>
              </li>
              <li className="item-contato">
                <Mail className="icone-contato" size={18} />
                <span>contato@atualestilo.com.br</span>
              </li>
              <li className="item-contato">
                <a 
                  href="https://www.google.com/maps/search/?api=1&query=Barbearia+atual+estilo+Barrocas+BA"
                  target="_blank"
                  rel="noopener noreferrer"
                  className="link-endereco-rodape"
                >
                  <MapPin className="icone-contato" size={18} />
                  <span>Rua Monsenhor Carlos Olímpio, 31, Barrocas-BA</span>
                </a>
              </li>
            </ul>
          </div>

          <div className="coluna-rodape">
            <h3>Horário de Funcionamento</h3>
            <ul className="lista-horario-rodape">
              <li className="item-horario">
                <span>Segunda - Sexta:</span>
                <span>08:30 - 18:30</span>
              </li>
              <li className="item-horario">
                <span>Sábado:</span>
                <span>08:30 - 18:30</span>
              </li>
              <li className="item-horario">
                <span>Domingo:</span>
                <span className="hora-fechado">Fechado</span>
              </li>
            </ul>
          </div>
        </div>

        <div className="divisoria-rodape">
          <div className="container-copyright">
            <p className="texto-copyright">© {new Date().getFullYear()} AtualEstilo Barbearia. Todos os direitos reservados.</p>
            <div className="redes-sociais">
              <a 
                href="https://www.instagram.com/atualstyllus/" 
                target="_blank" 
                rel="noopener noreferrer" 
                className="icone-rede-social"
                aria-label="Instagram"
              >
                <Instagram size={22} />
              </a>
              <a 
                href="https://wa.me/5575991309594" 
                target="_blank" 
                rel="noopener noreferrer" 
                className="icone-rede-social icone-whatsapp-destaque"
                aria-label="WhatsApp Barbearia"
              >
                <WhatsAppLogo size={22} />
              </a>
            </div>
          </div>
        </div>
      </div>
    </footer>
  );
}
