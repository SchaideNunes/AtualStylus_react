import React, { useState, useEffect } from 'react';
import { api } from '../services/api';
import { formatarTelefone, isTelefoneValido } from '../utils/phoneMask';
import { isDomingo, getDataHojeString } from '../utils/dateUtils';
import { gerarLinkWhatsAppAgendamento } from '../utils/whatsapp';

export const BARBEIROS_DEFAULT = [
  { id: 1, nome: 'Geilson', foto: '/assets/Geilson.jpg' },
  { id: 2, nome: 'Denilson', foto: '/assets/Denilson.jpg' }
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
        setHorariosDisponiveis(slots);
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
    if (isFormValido) return 'Confirmar Agendamento';
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

      // Re-validação atômica e inserção no banco SQL
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

      // Salva dados no localStorage para agilizar próximas reservas
      localStorage.setItem('dadosClienteBarbearia', JSON.stringify({ nome, telefone }));

      // Abre link do WhatsApp com a mensagem formatada
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
      // Recarrega horários caso tenha havido concorrência
      try {
        const slots = await api.getHorariosDisponiveis(data, barbeiroId);
        setHorariosDisponiveis(slots);
      } catch (e) {}
    } finally {
      setSalvando(false);
    }
  };

  return (
    <div className="container-agendamento fade-in">
      <div className="header-agendamento-sticky">
        <h2 className="titulo-agendamento">Agende seu Horário</h2>
      </div>

      <div className="formulario-agendamento">
        {/* 1. Barbeiro */}
        <div className="campo-formulario slide-up">
          <label className="label-campo">1. Escolha seu Barbeiro</label>
          <div className="grid-barbeiros">
            {BARBEIROS_DEFAULT.map((b) => (
              <label 
                key={b.id} 
                className={`cartao-barbeiro ${barbeiroId === b.id ? 'selecionado' : ''}`}
              >
                <input 
                  type="radio" 
                  name="barbeiro" 
                  value={b.id} 
                  checked={barbeiroId === b.id}
                  onChange={() => setBarbeiroId(b.id)}
                  className="input-radio-barbeiro"
                />
                <img src={b.foto} alt={b.nome} className="foto-barbeiro" />
                <span className="nome-barbeiro-card">{b.nome}</span>
              </label>
            ))}
          </div>
        </div>

        {/* 2. Data */}
        <div className="campo-formulario slide-up">
          <label htmlFor="campoData" className="label-campo">2. Data</label>
          <input 
            type="date" 
            id="campoData"
            min={getDataHojeString()}
            value={data}
            onChange={handleDataChange}
            className="input-campo"
          />
        </div>

        {/* 3. Horário */}
        <div className="campo-formulario slide-up">
          <label htmlFor="campoHorario" className="label-campo">
            3. Horário <span style={{ fontSize: '0.8rem', color: '#9ca3af', fontWeight: 'normal', marginLeft: '8px' }}>*Variam por barbeiro</span>
          </label>
          <select 
            id="campoHorario"
            value={horario}
            onChange={(e) => setHorario(e.target.value)}
            disabled={!data || !barbeiroId || carregandoHorarios}
            className="select-campo"
          >
            {!barbeiroId || !data ? (
              <option value="">Primeiro selecione data e barbeiro</option>
            ) : carregandoHorarios ? (
              <option value="">Carregando horários...</option>
            ) : horariosDisponiveis.length === 0 ? (
              <option value="">Dia cheio! Sem horários disponíveis</option>
            ) : (
              <>
                <option value="">Selecione um horário</option>
                {horariosDisponiveis.map((h) => (
                  <option key={h} value={h}>{h}</option>
                ))}
              </>
            )}
          </select>
        </div>

        {/* 4. Serviço */}
        <div className="campo-formulario slide-up">
          <label htmlFor="campoServico" className="label-campo">4. Serviço</label>
          <select 
            id="campoServico"
            value={servico}
            onChange={(e) => setServico(e.target.value)}
            className="select-campo"
          >
            <option value="">Selecione o serviço...</option>
            <option value="Corte e Barba - R$ 35">Corte e Barba - R$ 35,00</option>
            <option value="Corte Social - R$ 25">Corte Social - R$ 25,00</option>
            <option value="Degradê - R$ 25">Degradê - R$ 25,00</option>
            <option value="Navalhado - R$ 25">Navalhado - R$ 25,00</option>
            <option value="Corte Raspado - R$ 20">Corte Raspado - R$ 20,00</option>
            <option value="Barba e Pezinho - R$ 15">Barba e Pezinho - R$ 15,00</option>
          </select>
        </div>

        {/* 5. Nome */}
        <div className="campo-formulario slide-up">
          <label htmlFor="campoNome" className="label-campo">5. Nome Completo</label>
          <input 
            type="text" 
            id="campoNome"
            placeholder="Seu nome"
            value={nome}
            onChange={(e) => setNome(e.target.value)}
            className="input-campo"
          />
        </div>

        {/* 6. WhatsApp */}
        <div className="campo-formulario slide-up">
          <label htmlFor="campoTelefone" className="label-campo">6. WhatsApp</label>
          <input 
            type="tel" 
            id="campoTelefone"
            placeholder="(00) 00000-0000"
            maxLength={15}
            value={telefone}
            onChange={handleTelefoneChange}
            className="input-campo"
          />
        </div>

        {/* Botão de Confirmação */}
        <button 
          disabled={!isFormValido || salvando}
          onClick={handleConfirmar}
          className="botao-confirmar slide-up"
        >
          {getTextoBotao()}
        </button>
      </div>
    </div>
  );
}
