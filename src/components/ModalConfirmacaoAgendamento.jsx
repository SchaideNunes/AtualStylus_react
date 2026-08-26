import React from 'react';
import { CheckCircle2, MessageCircle, Calendar, Clock, User, Scissors, ArrowRight } from 'lucide-react';
import { obterDetalhesData } from '../utils/dateUtils';

export function ModalConfirmacaoAgendamento({ 
  isOpen, 
  dados, 
  onConcluir, 
  onIrParaMeusAgendamentos 
}) {
  if (!isOpen || !dados) return null;

  const dataFormatadaObj = obterDetalhesData(dados.data);
  const dataExibicao = `${dataFormatadaObj.diaSemana}, ${dataFormatadaObj.dataExtenso}`;

  return (
    <div className="modal-backdrop-custom fade-in">
      <div className="modal-conteudo-custom scale-in modal-confirmacao-box">
        {/* Topo com Ícone Animado de Sucesso */}
        <div className="topo-sucesso-animado">
          <div className="circulo-icone-sucesso scale-in">
            <CheckCircle2 size={44} color="#22c55e" />
          </div>
          <h2 className="titulo-sucesso-agendamento">Agendamento Confirmado!</h2>
          <p className="subtitulo-sucesso-agendamento">
            Seu horário foi reservado com sucesso no nosso sistema.
          </p>
        </div>

        {/* Card Resumo do Agendamento */}
        <div className="card-resumo-detalhado">
          <div className="item-resumo-linha">
            <User size={18} className="icone-resumo" />
            <div className="resumo-coluna">
              <span className="resumo-label">Cliente</span>
              <strong className="resumo-valor">{dados.nome}</strong>
            </div>
          </div>

          <div className="item-resumo-linha">
            <Scissors size={18} className="icone-resumo" />
            <div className="resumo-coluna">
              <span className="resumo-label">Barbeiro & Serviço</span>
              <strong className="resumo-valor">{dados.barbeiroNome} • {dados.servico}</strong>
            </div>
          </div>

          <div className="item-resumo-linha">
            <Calendar size={18} className="icone-resumo" />
            <div className="resumo-coluna">
              <span className="resumo-label">Data</span>
              <strong className="resumo-valor">{dataExibicao}</strong>
            </div>
          </div>

          <div className="item-resumo-linha">
            <Clock size={18} className="icone-resumo" />
            <div className="resumo-coluna">
              <span className="resumo-label">Horário Marcado</span>
              <strong className="resumo-valor destaque-horario">{dados.horario}</strong>
            </div>
          </div>
        </div>

        {/* Dicas & Orientações de Pontualidade */}
        <div className="bloco-orientacoes-atendimento">
          <div className="linha-dica-orientacao">
            <span className="ponto-dica-verde">✓</span>
            <span>Chegue com <strong>5 minutos de antecedência</strong> para garantir o melhor atendimento.</span>
          </div>
          <div className="linha-dica-orientacao">
            <span className="ponto-dica-verde">✓</span>
            <span>Tolerância de até <strong>10 minutos</strong> para imprevistos.</span>
          </div>
          <div className="linha-dica-orientacao">
            <span className="ponto-dica-verde">✓</span>
            <span>Precisa cancelar? Você pode liberar seu horário na aba <strong>Meus Agendamentos</strong>.</span>
          </div>
        </div>

        {/* Botões de Ação */}
        <div className="grupo-botoes-confirmacao-modal">
          <a
            href={dados.urlWhatsApp}
            target="_blank"
            rel="noopener noreferrer"
            onClick={onConcluir}
            className="btn-whatsapp-confirmacao-modal pulse"
            aria-label="Enviar no WhatsApp do Barbeiro"
          >
            <MessageCircle size={22} />
            <span>💬 Enviar no WhatsApp do Barbeiro</span>
          </a>

          <div className="linha-botoes-secundarios-modal">
            <button
              onClick={onIrParaMeusAgendamentos}
              className="btn-secundario-modal-link"
            >
              Ver Meus Agendamentos <ArrowRight size={16} />
            </button>

            <button
              onClick={onConcluir}
              className="btn-fechar-modal-discreto"
            >
              Voltar ao Início
            </button>
          </div>
        </div>
      </div>
    </div>
  );
}
