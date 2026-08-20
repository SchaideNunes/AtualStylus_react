import React, { useState, useEffect } from 'react';
import { 
  Calendar, 
  Clock, 
  Scissors, 
  User, 
  Phone, 
  CheckCircle2, 
  AlertCircle,
  Sparkles 
} from 'lucide-react';
import { api } from '../services/api';
import { formatarTelefone, isTelefoneValido } from '../utils/phoneMask';
import { isDomingo, getDataHojeString } from '../utils/dateUtils';
import { gerarLinkWhatsAppAgendamento } from '../utils/whatsapp';

export const BARBEIROS_DEFAULT = [
  { 
    id: 1, 
    nome: 'Geilson', 
    especialidade: 'Fade, Barba & Social',
    foto: '/assets/Geilson.jpg' 
  },
  { 
    id: 2, 
    nome: 'Denilson', 
    especialidade: 'Degradê, Navalhado & Barba',
    foto: '/assets/Denilson.jpg' 
  }
];

export const OPCOES_SERVICOS = [
  { id: 1, nome: 'Corte e Barba', valor: 35 },
  { id: 2, nome: 'Corte Social', valor: 25 },
  { id: 3, nome: 'Degradê', valor: 25 },
  { id: 4, nome: 'Navalhado', valor: 25 },
  { id: 5, nome: 'Corte Raspado', valor: 20 },
  { id: 6, nome: 'Barba e Pezinho', valor: 15 }
];

export function Agendamento({ servicoPreSelecionado, onAgendamentoConcluido }) {
  const [barbeiroId, setBarbeiroId] = useState(null);
  const [data, setData] = useState(getDataHojeString());
  const [horario, setHorario] = useState('');
  const [servico, setServico] = useState(servicoPreSelecionado || '');
  const [nome, setNome] = useState('');
  const [telefone, setTelefone] = useState('');

  const [horariosDisponiveis, setHorariosDisponiveis] = useState([]);
  const [carregandoHorarios, setCarregandoHorarios] = useState(false);
  const [salvando, setSalvando] = useState(false);

  // Carregar dados salvos no localStorage
  useEffect(() => {
    try {
      const salvo = localStorage.getItem('dadosClienteBarbearia');
      if (salvo) {
        const cliente = JSON.parse(salvo);
        if (cliente.nome) setNome(cliente.nome);
        if (cliente.telefone) setTelefone(cliente.telefone);
      }
    } catch (e) {
      console.warn('Erro ao ler localStorage', e);
    }
  }, []);

  // Atualizar serviço se passado por prop
  useEffect(() => {
    if (servicoPreSelecionado) {
      setServico(servicoPreSelecionado);
    }
  }, [servicoPreSelecionado]);

  // Carregar horários disponíveis quando data ou barbeiro mudarem
  useEffect(() => {
    async function carregarHorarios() {
      if (!data || !barbeiroId) {
        setHorariosDisponiveis([]);
        setHorario('');
        return;
      }

      if (isDomingo(data)) {
        alert('A barbearia não funciona aos domingos. Por favor, escolha outra data.');
        setData('');
        setHorariosDisponiveis([]);
        setHorario('');
        return;
      }

      try {
        setCarregandoHorarios(true);
        const slots = await api.getHorariosDisponiveis(data, barbeiroId);
        setHorariosDisponiveis(slots || []);
        setHorario('');
      } catch (err) {
        console.error('Erro ao carregar horários:', err);
        setHorariosDisponiveis([]);
      } finally {
        setCarregandoHorarios(false);
      }
    }

    carregarHorarios();
  }, [data, barbeiroId]);

  const handleDataChange = (e) => {
    const novaData = e.target.value;
    if (isDomingo(novaData)) {
      alert('A barbearia não funciona aos domingos. Por favor, escolha outra data.');
      setData('');
      return;
    }
    setData(novaData);
  };

  const handleTelefoneChange = (e) => {
    setTelefone(formatarTelefone(e.target.value));
  };

  const isFormValido = Boolean(
    barbeiroId &&
    data &&
    horario &&
    servico &&
    nome.trim().length > 0 &&
    isTelefoneValido(telefone)
  );

  const getTextoBotao = () => {
    if (salvando) return 'Confirmando agendamento...';
    if (isFormValido) return '✂️ Confirmar Agendamento';
    if (!barbeiroId) return '1. Escolha o profissional acima';
    if (!data) return '2. Selecione a data';
    if (!horario) return '3. Escolha o horário de atendimento';
    if (!servico) return '4. Selecione o serviço desejado';
    if (!nome.trim()) return '5. Digite seu nome completo';
    if (telefone && telefone.length > 0 && !isTelefoneValido(telefone)) {
      return 'Digite o WhatsApp completo com DDD';
    }
    return 'Preencha tudo para confirmar';
  };

  const handleConfirmar = async () => {
    if (!isFormValido) {
      alert('Por favor, preencha todos os campos corretamente.');
      return;
    }

    const b = BARBEIROS_DEFAULT.find(x => x.id === parseInt(barbeiroId));
    const barbeiroNome = b ? b.nome : 'Barbeiro';

    const valorMatch = servico.match(/R\$ (\d+)/);
    const valor = valorMatch ? parseInt(valorMatch[1]) : 0;

    try {
      setSalvando(true);

      const novoAgendamento = await api.criarAgendamento({
        nome: nome.trim(),
        telefone,
        servico,
        valor,
        barbeiro_id: parseInt(barbeiroId),
        barbeiro_nome: barbeiroNome,
        data_agendamento: data,
        horario
      });

      localStorage.setItem('dadosClienteBarbearia', JSON.stringify({ nome, telefone }));

      const urlWhats = gerarLinkWhatsAppAgendamento({
        nome,
        telefone,
        barbeiroNome,
        data,
        horario,
        servico,
        valor
      });

      alert('✅ Agendamento realizado com sucesso!');
      window.location.href = urlWhats;

      if (onAgendamentoConcluido) {
        onAgendamentoConcluido(novoAgendamento);
      }
    } catch (err) {
      alert('Erro ao agendar: ' + err.message);
      try {
        const slots = await api.getHorariosDisponiveis(data, barbeiroId);
        setHorariosDisponiveis(slots || []);
      } catch (e) {}
    } finally {
      setSalvando(false);
    }
  };

  return (
    <div className="container-agendamento-revamp fade-in">
      {/* Header da Página de Agendamento */}
      <div className="header-agendamento-card scale-in">
        <div className="icone-header-agendamento">
          <Sparkles size={24} color="#ffffff" />
        </div>
        <h2 className="titulo-agendamento-revamp">Agende seu Atendimento</h2>
        <p className="subtitulo-agendamento-revamp">
          Escolha o profissional, selecione o melhor horário e garanta sua vaga em poucos segundos.
        </p>
      </div>

      <div className="formulario-agendamento-revamp">
        {/* ========================================================================= */}
        {/* 1. SELEÇÃO VISUAL DE BARBEIRO (CARDS RETRATO COM FOTOS) */}
        {/* ========================================================================= */}
        <div className="bloco-etapa-agendamento slide-up">
          <div className="cabecalho-etapa-interna">
            <span className="badge-numero-etapa">ETAPA 1</span>
            <span className="titulo-etapa-texto">Escolha seu Barbeiro</span>
          </div>

          <div className="grid-barbeiros-visual">
            {BARBEIROS_DEFAULT.map((b) => {
              const selecionado = barbeiroId === b.id;
              return (
                <label 
                  key={b.id} 
                  className={`card-barbeiro-visual ${selecionado ? 'selecionado' : ''}`}
                >
                  <input 
                    type="radio" 
                    name="barbeiro" 
                    value={b.id} 
                    checked={selecionado}
                    onChange={() => setBarbeiroId(b.id)}
                    className="radio-barbeiro-escondido"
                    aria-label={b.nome}
                  />

                  <div className="container-foto-barbeiro">
                    <img 
                      src={b.foto} 
                      alt={b.nome} 
                      className="foto-barbeiro-retrato"
                      onError={(e) => { e.target.src = '/assets/Logo.jpg'; }}
                    />
                    <div className="overlay-gradiente-barbeiro" />
                    
                    {/* Badge de Seleção com Checkmark */}
                    <div className={`indicador-selecao-barbeiro ${selecionado ? 'ativo' : ''}`}>
                      {selecionado ? (
                        <CheckCircle2 size={20} color="#000000" />
                      ) : (
                        <span className="ponto-vazio-selecao" />
                      )}
                    </div>
                  </div>

                  <div className="info-barbeiro-card">
                    <h3 className="nome-barbeiro-destaque">{b.nome}</h3>
                    <span className="especialidade-barbeiro">{b.especialidade}</span>
                  </div>
                </label>
              );
            })}
          </div>
        </div>

        {/* ========================================================================= */}
        {/* 2. DATA (CAIXA COM TÍTULO INTERNO) */}
        {/* ========================================================================= */}
        <div className="bloco-etapa-agendamento slide-up">
          <div className="caixa-campo-interna">
            <div className="cabecalho-campo-interno">
              <span className="tag-etapa-interna">ETAPA 2 • DATA DO AGENDAMENTO</span>
              <span className="dica-campo-interna">Segunda a Sábado</span>
            </div>
            
            <div className="conteudo-input-com-icone">
              <Calendar size={20} className="icone-campo-interno" />
              <input 
                type="date" 
                id="campoData"
                aria-label="Data do Agendamento"
                min={getDataHojeString()}
                value={data}
                onChange={handleDataChange}
                className="input-campo-interno"
              />
            </div>
          </div>
        </div>

        {/* ========================================================================= */}
        {/* 3. HORÁRIO REATIVO (CAIXA COM TÍTULO INTERNO) */}
        {/* ========================================================================= */}
        <div className="bloco-etapa-agendamento slide-up">
          <div className="caixa-campo-interna">
            <div className="cabecalho-campo-interno">
              <span className="tag-etapa-interna">ETAPA 3 • HORÁRIO DISPONÍVEL</span>
              <span className="dica-campo-interna">
                {carregandoHorarios ? 'Carregando vagas...' : 'Horários livres hoje/amanhã'}
              </span>
            </div>

            <div className="conteudo-input-com-icone">
              <Clock size={20} className="icone-campo-interno" />
              <select 
                id="campoHorario"
                aria-label="Horário de Atendimento"
                value={horario}
                onChange={(e) => setHorario(e.target.value)}
                disabled={!data || !barbeiroId || carregandoHorarios}
                className="select-campo-interno"
              >
                {!barbeiroId || !data ? (
                  <option value="">Primeiro selecione o barbeiro e a data</option>
                ) : carregandoHorarios ? (
                  <option value="">Consultando horários no banco...</option>
                ) : horariosDisponiveis.length === 0 ? (
                  <option value="">Dia cheio! Sem horários disponíveis</option>
                ) : (
                  <>
                    <option value="">Selecione um horário livre</option>
                    {horariosDisponiveis.map((h) => (
                      <option key={h} value={h}>{h} - Disponível</option>
                    ))}
                  </>
                )}
              </select>
            </div>
          </div>
        </div>

        {/* ========================================================================= */}
        {/* 4. SERVIÇO (CAIXA COM TÍTULO INTERNO) */}
        {/* ========================================================================= */}
        <div className="bloco-etapa-agendamento slide-up">
          <div className="caixa-campo-interna">
            <div className="cabecalho-campo-interno">
              <span className="tag-etapa-interna">ETAPA 4 • SERVIÇO DESEJADO</span>
              <span className="dica-campo-interna">Tabela de valores</span>
            </div>

            <div className="conteudo-input-com-icone">
              <Scissors size={20} className="icone-campo-interno" />
              <select 
                id="campoServico"
                aria-label="Serviço Desejado"
                value={servico}
                onChange={(e) => setServico(e.target.value)}
                className="select-campo-interno"
              >
                <option value="">Selecione o serviço...</option>
                {OPCOES_SERVICOS.map((s) => (
                  <option key={s.id} value={`${s.nome} - R$ ${s.valor}`}>
                    {s.nome} - R$ {s.valor},00
                  </option>
                ))}
              </select>
            </div>
          </div>
        </div>

        {/* ========================================================================= */}
        {/* 5. NOME COMPLETO (CAIXA COM TÍTULO INTERNO) */}
        {/* ========================================================================= */}
        <div className="bloco-etapa-agendamento slide-up">
          <div className="caixa-campo-interna">
            <div className="cabecalho-campo-interno">
              <span className="tag-etapa-interna">ETAPA 5 • SEU NOME COMPLETO</span>
              <span className="dica-campo-interna">Identificação na barbearia</span>
            </div>

            <div className="conteudo-input-com-icone">
              <User size={20} className="icone-campo-interno" />
              <input 
                type="text" 
                id="campoNome"
                aria-label="Seu Nome Completo"
                value={nome}
                onChange={(e) => setNome(e.target.value)}
                placeholder="Digite seu nome completo"
                className="input-campo-interno"
              />
            </div>
          </div>
        </div>

        {/* ========================================================================= */}
        {/* 6. WHATSAPP (CAIXA COM TÍTULO INTERNO) */}
        {/* ========================================================================= */}
        <div className="bloco-etapa-agendamento slide-up">
          <div className="caixa-campo-interna">
            <div className="cabecalho-campo-interno">
              <span className="tag-etapa-interna">ETAPA 6 • SEU WHATSAPP</span>
              <span className="dica-campo-interna">Com DDD (Ex: 75 99999-9999)</span>
            </div>

            <div className="conteudo-input-com-icone">
              <Phone size={20} className="icone-campo-interno" />
              <input 
                type="tel" 
                id="campoTelefone"
                aria-label="WhatsApp com DDD"
                value={telefone}
                onChange={handleTelefoneChange}
                placeholder="(00) 00000-0000"
                maxLength={15}
                className="input-campo-interno"
              />
            </div>
          </div>
        </div>

        {/* ========================================================================= */}
        {/* BOTÃO DE CONFIRMAÇÃO */}
        {/* ========================================================================= */}
        <button 
          onClick={handleConfirmar}
          disabled={!isFormValido || salvando}
          className={`botao-confirmar-revamp ${isFormValido ? 'ativo pulse' : ''}`}
        >
          {getTextoBotao()}
        </button>
      </div>
    </div>
  );
}
