import React, { useState, useEffect } from 'react';
import { 
  Calendar, 
  Clock, 
  Scissors, 
  User, 
  Phone, 
  Check 
} from 'lucide-react';
import { api } from '../services/api';
import { formatarTelefone, isTelefoneValido } from '../utils/phoneMask';
import { isDomingo, getDataHojeString } from '../utils/dateUtils';
import { gerarLinkWhatsAppAgendamento } from '../utils/whatsapp';

export const BARBEIROS_DEFAULT = [
  { id: 1, nome: 'Geilson', foto: '/assets/Geilson.webp' },
  { id: 2, nome: 'Denilson', foto: '/assets/Denilson.webp' }
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
    <div className="container-agendamento-limpo fade-in">
      <div className="cartao-formulario-limpo">
        <h1 className="titulo-agendamento-limpo">Agendar Horário</h1>

        {/* 1. Barbeiro */}
        <div className="secao-barbeiros-limpa">
          <div className="grid-barbeiros-limpo">
            {BARBEIROS_DEFAULT.map((b) => {
              const selecionado = barbeiroId === b.id;
              return (
                <div 
                  key={b.id} 
                  role="button"
                  tabIndex={0}
                  aria-label={b.nome}
                  onClick={() => setBarbeiroId(b.id)}
                  onKeyDown={(e) => { if (e.key === 'Enter' || e.key === ' ') setBarbeiroId(b.id); }}
                  className={`card-barbeiro-limpo ${selecionado ? 'selecionado' : ''}`}
                >
                  <div className="container-foto-barbeiro-limpa">
                    <img 
                      src={b.foto} 
                      alt={b.nome} 
                      className="foto-barbeiro-limpa"
                      onError={(e) => { e.target.src = '/assets/Logo.webp'; }}
                    />
                    {selecionado && (
                      <div className="badge-check-barbeiro">
                        <Check size={16} strokeWidth={3} color="#000000" />
                      </div>
                    )}
                  </div>

                  <span className="nome-barbeiro-limpo">{b.nome}</span>
                </div>
              );
            })}
          </div>
        </div>

        {/* 2. Data */}
        <div className="campo-caixa-limpo">
          <span className="rotulo-campo-limpo">DATA</span>
          <div className="linha-input-limpo">
            <Calendar size={18} className="icone-input-limpo" />
            <input 
              type="date" 
              id="campoData"
              aria-label="Data"
              min={getDataHojeString()}
              value={data}
              onChange={handleDataChange}
              className="input-limpo"
            />
          </div>
        </div>

        {/* 3. Horário */}
        <div className="campo-caixa-limpo">
          <span className="rotulo-campo-limpo">HORÁRIO</span>
          <div className="linha-input-limpo">
            <Clock size={18} className="icone-input-limpo" />
            <select 
              id="campoHorario"
              aria-label="Horário"
              value={horario}
              onChange={(e) => setHorario(e.target.value)}
              disabled={!data || !barbeiroId || carregandoHorarios}
              className="select-limpo"
            >
              {!barbeiroId || !data ? (
                <option value="">Selecione o profissional e a data</option>
              ) : carregandoHorarios ? (
                <option value="">Carregando horários...</option>
              ) : horariosDisponiveis.length === 0 ? (
                <option value="">Dia cheio! Sem horários disponíveis</option>
              ) : (
                <>
                  <option value="">Escolha um horário</option>
                  {horariosDisponiveis.map((h) => (
                    <option key={h} value={h}>{h}</option>
                  ))}
                </>
              )}
            </select>
          </div>
        </div>

        {/* 4. Serviço */}
        <div className="campo-caixa-limpo">
          <span className="rotulo-campo-limpo">SERVIÇO</span>
          <div className="linha-input-limpo">
            <Scissors size={18} className="icone-input-limpo" />
            <select 
              id="campoServico"
              aria-label="Serviço"
              value={servico}
              onChange={(e) => setServico(e.target.value)}
              className="select-limpo"
            >
              <option value="">Selecione o serviço...</option>
              {OPCOES_SERVICOS.map((s) => (
                <option key={s.id} value={`${s.nome} - R$ ${s.valor}`}>
                  {s.nome} — R$ {s.valor},00
                </option>
              ))}
            </select>
          </div>
        </div>

        {/* 5. Nome */}
        <div className="campo-caixa-limpo">
          <span className="rotulo-campo-limpo">SEU NOME</span>
          <div className="linha-input-limpo">
            <User size={18} className="icone-input-limpo" />
            <input 
              type="text" 
              id="campoNome"
              aria-label="Seu Nome"
              value={nome}
              onChange={(e) => setNome(e.target.value)}
              placeholder="Digite seu nome"
              className="input-limpo"
            />
          </div>
        </div>

        {/* 6. WhatsApp */}
        <div className="campo-caixa-limpo">
          <span className="rotulo-campo-limpo">WHATSAPP</span>
          <div className="linha-input-limpo">
            <Phone size={18} className="icone-input-limpo" />
            <input 
              type="tel" 
              id="campoTelefone"
              aria-label="WhatsApp"
              value={telefone}
              onChange={handleTelefoneChange}
              placeholder="(00) 00000-0000"
              maxLength={15}
              className="input-limpo"
            />
          </div>
        </div>

        {/* Botão de Confirmação */}
        <button 
          onClick={handleConfirmar}
          disabled={!isFormValido || salvando}
          className={`botao-agendar-limpo ${isFormValido ? 'ativo' : ''}`}
        >
          {salvando ? 'Confirmando...' : 'Confirmar Agendamento'}
        </button>
      </div>
    </div>
  );
}
