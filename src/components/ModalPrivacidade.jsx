import React from 'react';
import { ShieldCheck, X, Lock, CheckCircle2 } from 'lucide-react';

export function ModalPrivacidade({ isOpen, onClose }) {
  if (!isOpen) return null;

  return (
    <div className="modal-backdrop-custom fade-in" onClick={onClose}>
      <div 
        className="modal-conteudo-custom scale-in modal-privacidade-box" 
        onClick={(e) => e.stopPropagation()}
      >
        <div className="modal-cabecalho-custom">
          <div className="titulo-com-icone-modal">
            <div className="icone-escudo-privacidade">
              <ShieldCheck size={24} color="#ffffff" />
            </div>
            <div>
              <h2 className="modal-titulo-texto">Política de Privacidade</h2>
              <span className="modal-subtitulo-texto">Em conformidade com a LGPD (Lei Nº 13.709/2018)</span>
            </div>
          </div>
          <button 
            className="btn-fechar-modal" 
            onClick={onClose}
            aria-label="Fechar Política de Privacidade"
          >
            <X size={20} />
          </button>
        </div>

        <div className="modal-corpo-scroll">
          <section className="bloco-privacidade">
            <h3 className="titulo-bloco-privacidade">
              <Lock size={16} /> 1. Coleta de Dados Mínima & Finalidade
            </h3>
            <p>
              Ao realizar um agendamento na <strong>AtualEstilo Barbearia</strong>, coletamos unicamente:
            </p>
            <ul className="lista-privacidade">
              <li><strong>Nome completo:</strong> Para identificação da sua reserva na recepção e atendimento pelo barbeiro selecionado.</li>
              <li><strong>Número de WhatsApp:</strong> Para envio imediato do comprovante de agendamento, lembrete de horário e consulta na aba de autoatendimento ("Meus Agendamentos").</li>
            </ul>
          </section>

          <section className="bloco-privacidade">
            <h3 className="titulo-bloco-privacidade">
              <CheckCircle2 size={16} /> 2. Não Compartilhamento & Zero Spam
            </h3>
            <p>
              Garantimos categoricamente que seus dados <strong>jamais serão vendidos, cedidos ou compartilhados com terceiros</strong> para fins comerciais ou publicitários. Não enviamos mensagens indesejadas (spam).
            </p>
          </section>

          <section className="bloco-privacidade">
            <h3 className="titulo-bloco-privacidade">
              <ShieldCheck size={16} /> 3. Armazenamento Seguro e Seus Direitos
            </h3>
            <p>
              Seus registros são protegidos em nosso banco de dados relacional seguro com criptografia e acesso restrito aos barbeiros responsáveis. Você tem o direito de solicitar a alteração ou exclusão definitiva dos seus dados a qualquer momento pelo nosso WhatsApp oficial.
            </p>
          </section>
        </div>

        <div className="modal-rodape-acoes">
          <button 
            onClick={onClose} 
            className="btn-confirmar-modal-acao full-width"
          >
            Entendi e Fechar
          </button>
        </div>
      </div>
    </div>
  );
}
