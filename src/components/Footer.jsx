import React from 'react';
import { Phone, Mail, MapPin, Instagram } from 'lucide-react';

export function Footer({ onNavegar }) {
  return (
    <footer className="rodape">
      <div className="container-rodape">
        <div className="grid-rodape">
          <div className="coluna-rodape">
            <h3>AtualEstilo</h3>
            <p className="texto-coluna">
              Tradição e estilo em cada corte. Sua barbearia de confiança com atendimento de excelência e profissionais dedicados.
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
            </ul>
          </div>

          <div className="coluna-rodape">
            <h3>Contato</h3>
            <ul className="lista-contato">
              <li className="item-contato">
                <Phone className="icone-contato" size={18} />
                <span>(75) 99130-9594</span>
              </li>
              <li className="item-contato">
                <Mail className="icone-contato" size={18} />
                <span>contato@atualestilo.com.br</span>
              </li>
              <li className="item-contato">
                <MapPin className="icone-contato" size={18} />
                <span>Rua Monsenhor Carlos Olimpio, 31, Barrocas-BA 48705-000</span>
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
                className="icone-rede-social"
                aria-label="WhatsApp"
              >
                <Phone size={22} />
              </a>
            </div>
          </div>
        </div>
      </div>
    </footer>
  );
}
