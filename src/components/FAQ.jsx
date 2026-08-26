import React, { useState } from 'react';
import { ChevronDown, HelpCircle } from 'lucide-react';

export const FAQ_ITEMS = [
  {
    id: 1,
    pergunta: 'Quais são as formas de pagamento aceitas?',
    resposta: 'Aceitamos Pix, Cartões de Débito/Crédito e Dinheiro à vista no momento do atendimento. O pagamento é realizado diretamente na barbearia após o serviço.'
  },
  {
    id: 2,
    pergunta: 'Como faço para cancelar ou reagendar um horário?',
    resposta: 'Basta acessar a aba "Meus Agendamentos" aqui no site, digitar o número do seu WhatsApp e clicar em "Cancelar Agendamento". O horário será liberado no sistema e uma mensagem será enviada ao barbeiro.'
  },
  {
    id: 3,
    pergunta: 'Existe tolerância para atrasos?',
    resposta: 'Sim, oferecemos uma tolerância de até 10 minutos de cortesia. Para atrasos maiores, pedimos que nos avise com antecedência via WhatsApp para que possamos verificar a melhor forma de atendê-lo sem prejudicar o próximo cliente.'
  },
  {
    id: 4,
    pergunta: 'Preciso agendar com antecedência ou atendem por ordem de chegada?',
    resposta: 'Trabalhamos com agendamento prévio pelo site para garantir pontualidade e evitar filas. Caso haja horários livres no mesmo dia, você pode agendar até minutos antes de comparecer.'
  },
  {
    id: 5,
    pergunta: 'Qual é o tempo médio de duração dos serviços?',
    resposta: 'Cada corte leva em média de 30 a 45 minutos. Nossos barbeiros prezam pela máxima atenção a cada detalhe, acabamento e alinhamento do seu estilo.'
  },
  {
    id: 6,
    pergunta: 'Onde a barbearia está localizada e há estacionamento?',
    resposta: 'Estamos localizados na Rua Monsenhor Carlos Olímpio, 31, no Centro de Barrocas - BA (próximo à praça principal), com vagas de estacionamento em frente e na via pública.'
  }
];

export function FAQ() {
  const [itemAberto, setItemAberto] = useState(null);

  const toggleItem = (id) => {
    setItemAberto(itemAberto === id ? null : id);
  };

  return (
    <section className="secao-faq-container">
      <div className="faq-cabecalho-secao">
        <div className="badge-secao-tag">
          <HelpCircle size={16} />
          <span>Tire Suas Dúvidas</span>
        </div>
        <h2 className="titulo-secao-principal">Dúvidas Frequentes</h2>
        <p className="subtitulo-secao-principal">
          Tudo o que você precisa saber sobre nosso atendimento, pagamentos e agendamentos.
        </p>
      </div>

      <div className="faq-lista-acordeao">
        {FAQ_ITEMS.map((item) => {
          const aberto = itemAberto === item.id;
          return (
            <div 
              key={item.id} 
              className={`faq-item-card ${aberto ? 'aberto' : ''}`}
            >
              <button
                className="faq-pergunta-btn"
                onClick={() => toggleItem(item.id)}
                aria-expanded={aberto}
              >
                <span className="faq-pergunta-texto">{item.pergunta}</span>
                <span className={`faq-icone-seta ${aberto ? 'girar' : ''}`}>
                  <ChevronDown size={20} />
                </span>
              </button>

              {aberto && (
                <div className="faq-resposta-container fade-in">
                  <p className="faq-resposta-texto">{item.resposta}</p>
                </div>
              )}
            </div>
          );
        })}
      </div>
    </section>
  );
}
