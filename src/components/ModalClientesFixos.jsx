import React, { useState, useEffect } from 'react';
import { createPortal } from 'react-dom';
import { 
  X, 
  Repeat, 
  Plus, 
  Users, 
  Calendar, 
  Clock, 
  Scissors, 
  User, 
  Phone, 
  Trash2, 
  Check, 
  AlertCircle, 
  CalendarDays,
  ChevronRight,
  ArrowLeft
} from 'lucide-react';
import { api } from '../services/api';
import { getDataHojeString, formatarDataBR, isDomingo } from '../utils/dateUtils';
import { formatarTelefone } from '../utils/phoneMask';

export function ModalClientesFixos({ isOpen, onClose, onAtualizarGeral }) {
  const [subAba, setSubAba] = useState('lista'); // 'lista' | 'novo'
  const [clientesFixos, setClientesFixos] = useState([]);
  const [clienteSelecionado, setClienteSelecionado] = useState(null);
  const [carregandoLista, setCarregandoLista] = useState(false);

  // Formulário de Novo Fixo
  const [nome, setNome] = useState('');
  const [telefone, setTelefone] = useState('');
  const [dataInicio, setDataInicio] = useState(getDataHojeString());
  const [barbeiroId, setBarbeiroId] = useState('1');
  const [horario, setHorario] = useState('');
  const [servico, setServico] = useState('Corte e Barba - R$ 35');
  const [frequencia, setFrequencia] = useState('semanal'); // 'semanal' | 'quinzenal' | 'mensal'

  const [horariosLivres, setHorariosLivres] = useState([]);
  const [carregandoHorarios, setCarregandoHorarios] = useState(false);
  const [salvando, setSalvando] = useState(false);
  const [erro, setErro] = useState('');

  // Lock de scroll e reset
  useEffect(() => {
    if (isOpen) {
      document.body.classList.add('modal-aberto');
      document.documentElement.classList.add('modal-aberto');
      document.body.style.overflow = 'hidden';
      document.documentElement.style.overflow = 'hidden';
      setErro('');
      setClienteSelecionado(null);
      carregarListaFixos();
    } else {
      document.body.classList.remove('modal-aberto');
      document.documentElement.classList.remove('modal-aberto');
      document.body.style.overflow = '';
      document.documentElement.style.overflow = '';
    }
    return () => {
      document.body.classList.remove('modal-aberto');
      document.documentElement.classList.remove('modal-aberto');
      document.body.style.overflow = '';
      document.documentElement.style.overflow = '';
    };
  }, [isOpen]);

  const carregarListaFixos = async () => {
    try {
      setCarregandoLista(true);
      const lista = await api.getClientesFixos();
      setClientesFixos(lista || []);
      setClienteSelecionado(prev => {
        if (!prev) return null;
        const atualizado = lista?.find(c => c.chave === prev.chave);
        return atualizado || null;
      });
    } catch (e) {
      console.error(e);
    } finally {
      setCarregandoLista(false);
    }
  };

  // Carregar slots para o dia de início
  useEffect(() => {
    async function carregarSlots() {
      if (!isOpen || !dataInicio || !barbeiroId) {
        setHorariosLivres([]);
        return;
      }
      if (isDomingo(dataInicio)) {
        setErro('A barbearia não funciona aos domingos.');
        setHorariosLivres([]);
        return;
      }
      setErro('');

      try {
        setCarregandoHorarios(true);
        const slots = await api.getHorariosDisponiveis(dataInicio, barbeiroId);
        setHorariosLivres(slots || []);
        if (slots && !slots.includes(horario)) {
          setHorario(slots[0] || '');
        }
      } catch (e) {
        setHorariosLivres([]);
      } finally {
        setCarregandoHorarios(false);
      }
    }

    if (subAba === 'novo') {
      carregarSlots();
    }
  }, [isOpen, subAba, dataInicio, barbeiroId]);

  if (!isOpen) return null;

  const handleSalvarNovoFixo = async (e) => {
    e.preventDefault();
    setErro('');

    if (!nome.trim()) {
      setErro('Por favor, informe o nome do cliente.');
      return;
    }
    if (!dataInicio) {
      setErro('Por favor, selecione a data de início.');
      return;
    }
    if (!horario) {
      setErro('Por favor, selecione um horário disponível.');
      return;
    }

    const valorMatch = servico.match(/R\$ (\d+)/);
    const valor = valorMatch ? parseInt(valorMatch[1]) : 0;
    const barbeiroNome = barbeiroId === '1' ? 'Geilson' : 'Denilson';

    try {
      setSalvando(true);
      await api.criarAgendamentoAdmin({
        nome: nome.trim(),
        telefone: telefone.trim() || 'Sem telefone',
        servico,
        valor,
        barbeiro_id: parseInt(barbeiroId),
        barbeiro_nome: barbeiroNome,
        data_agendamento: dataInicio,
        horario,
        recorrente: true,
        frequencia
      });

      alert('✅ Cliente fixo cadastrado com sucesso!');
      setNome('');
      setTelefone('');
      setSubAba('lista');
      setClienteSelecionado(null);
      await carregarListaFixos();
      if (onAtualizarGeral) await onAtualizarGeral();
    } catch (err) {
      setErro('Erro ao cadastrar cliente fixo: ' + err.message);
    } finally {
      setSalvando(false);
    }
  };

  const handleExcluirRecorrenciaCompleta = async (cliente) => {
    if (!confirm(`Deseja cancelar e liberar todos os ${cliente.datas.length} agendamentos futuros de ${cliente.nome}?`)) {
      return;
    }

    try {
      const ids = cliente.datas.map(d => d.id);
      await api.deletarLoteClientesFixos(ids);
      alert('✅ Todos os horários recorrentes foram cancelados e liberados!');
      setClienteSelecionado(null);
      await carregarListaFixos();
      if (onAtualizarGeral) await onAtualizarGeral();
    } catch (err) {
      alert('Erro ao excluir recorrências: ' + err.message);
    }
  };

  const handleExcluirDataUnica = async (agendamentoId, dataFormatada) => {
    if (!confirm(`Liberar este horário específico de ${dataFormatada}?`)) {
      return;
    }

    try {
      await api.deletarAgendamentoAdmin(agendamentoId);
      await carregarListaFixos();
      if (onAtualizarGeral) await onAtualizarGeral();
    } catch (err) {
      alert('Erro ao liberar horário: ' + err.message);
    }
  };

  const modalJSX = (
    <div className="modal-overlay" onClick={onClose}>
      <div 
        className="modal-card scale-in" 
        onClick={e => e.stopPropagation()} 
        style={{ borderRadius: '24px', background: '#141414', border: '1px solid #2e2e2e', maxWidth: '680px', maxHeight: '90vh', overflowY: 'auto' }}
      >
        {/* Header */}
        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '18px', borderBottom: '1px solid #242424', paddingBottom: '14px', gap: '10px' }}>
          <h3 style={{ color: '#ffffff', fontSize: 'clamp(0.92rem, 3.8vw, 1.2rem)', fontWeight: '800', display: 'flex', alignItems: 'center', gap: '8px', margin: 0, textTransform: 'uppercase', whiteSpace: 'nowrap' }}>
            <Repeat color="#ffffff" size={18} /> Gestão de Clientes Fixos
          </h3>
          <button 
            onClick={onClose}
            style={{ background: '#202020', border: '1px solid #383838', color: '#9ca3af', cursor: 'pointer', borderRadius: '50%', width: '32px', height: '32px', display: 'flex', alignItems: 'center', justifyContent: 'center', flexShrink: 0 }}
            aria-label="Fechar modal"
          >
            <X size={18} />
          </button>
        </div>

        {/* Sub-Abas Segmentadas com Alto Contraste */}
        <div style={{ display: 'grid', gridTemplateColumns: 'repeat(2, 1fr)', gap: '6px', background: '#0a0a0a', padding: '5px', borderRadius: '14px', border: '1px solid #242424', marginBottom: '18px' }}>
          <button
            onClick={() => { setSubAba('lista'); setClienteSelecionado(null); }}
            style={{
              padding: '8px 12px',
              borderRadius: '10px',
              border: subAba === 'lista' ? '1px solid #ffffff' : '1px solid #262626',
              cursor: 'pointer',
              fontWeight: '800',
              fontSize: '0.82rem',
              display: 'flex',
              alignItems: 'center',
              justifyContent: 'center',
              gap: '6px',
              background: subAba === 'lista' ? '#ffffff' : '#141414',
              color: subAba === 'lista' ? '#000000' : '#d1d5db',
              transition: 'all 0.15s ease',
              whiteSpace: 'nowrap',
              minHeight: '40px'
            }}
          >
            <Users size={15} /> <span>Cadastrados</span> <span style={{ background: subAba === 'lista' ? '#000000' : '#262626', color: '#ffffff', padding: '1px 6px', borderRadius: '5px', fontSize: '0.72rem', fontWeight: '900' }}>{clientesFixos.length}</span>
          </button>

          <button
            onClick={() => { setSubAba('novo'); setClienteSelecionado(null); }}
            style={{
              padding: '8px 12px',
              borderRadius: '10px',
              border: subAba === 'novo' ? '1px solid #ffffff' : '1px solid #262626',
              cursor: 'pointer',
              fontWeight: '800',
              fontSize: '0.82rem',
              display: 'flex',
              alignItems: 'center',
              justifyContent: 'center',
              gap: '6px',
              background: subAba === 'novo' ? '#ffffff' : '#141414',
              color: subAba === 'novo' ? '#000000' : '#d1d5db',
              transition: 'all 0.15s ease',
              whiteSpace: 'nowrap',
              minHeight: '40px'
            }}
          >
            <Plus size={15} strokeWidth={3} /> <span>Novo Fixo</span>
          </button>
        </div>

        {erro && (
          <div className="alerta-erro-login" style={{ marginBottom: '16px' }}>
            <AlertCircle size={18} style={{ flexShrink: 0 }} />
            <span>{erro}</span>
          </div>
        )}

        {/* ABA 1: LISTAGEM E DIAS OCUPADOS (DRILL-DOWN MASTER-DETAIL) */}
        {subAba === 'lista' && (
          <div>
            {carregandoLista ? (
              <p style={{ color: '#9ca3af', textAlign: 'center', padding: '40px 0' }}>Carregando clientes fixos...</p>
            ) : clientesFixos.length === 0 ? (
              <div style={{ textAlign: 'center', padding: '40px 20px', background: '#0d0d0d', borderRadius: '16px', border: '1px solid #222222' }}>
                <Users size={36} color="#6b7280" style={{ margin: '0 auto 12px' }} />
                <h4 style={{ color: '#ffffff', margin: '0 0 6px', fontSize: '1.05rem' }}>Nenhum Cliente Fixo Encontrado</h4>
                <p style={{ color: '#9ca3af', fontSize: '0.9rem', marginBottom: '16px' }}>
                  Cadastre clientes semanais, quinzenais ou mensais para reservar horários automaticamente por até 1 ano.
                </p>
                <button
                  onClick={() => setSubAba('novo')}
                  className="btn-acao-rapida btn-cadastrar-principal"
                  style={{ display: 'inline-flex', alignItems: 'center', gap: '6px', margin: 'auto' }}
                >
                  <Plus size={16} strokeWidth={3} /> Cadastrar Primeiro Fixo
                </button>
              </div>
            ) : !clienteSelecionado ? (
              /* MODO 1: Lista de Clientes Fixos Cadastrados */
              <div style={{ display: 'flex', flexDirection: 'column', gap: '8px', maxHeight: '420px', overflowY: 'auto' }}>
                {clientesFixos.map(cliente => (
                  <div
                    key={cliente.chave}
                    onClick={() => setClienteSelecionado(cliente)}
                    style={{
                      background: '#101010',
                      border: '1px solid #242424',
                      borderRadius: '14px',
                      padding: '12px 14px',
                      cursor: 'pointer',
                      transition: 'all 0.15s ease',
                      display: 'flex',
                      justifyContent: 'space-between',
                      alignItems: 'center'
                    }}
                  >
                    <div style={{ minWidth: 0, flex: 1 }}>
                      <div style={{ display: 'flex', alignItems: 'center', gap: '8px' }}>
                        <strong style={{ color: '#ffffff', fontSize: '0.94rem', whiteSpace: 'nowrap', overflow: 'hidden', textOverflow: 'ellipsis' }}>
                          {cliente.nome}
                        </strong>
                        <span style={{ fontSize: '0.7rem', background: '#222222', color: '#ffffff', border: '1px solid #383838', padding: '2px 7px', borderRadius: '6px', fontWeight: '800', flexShrink: 0 }}>
                          {cliente.datas.length} datas
                        </span>
                      </div>
                      <p style={{ color: '#9ca3af', fontSize: '0.78rem', margin: '3px 0 0', display: 'flex', alignItems: 'center', gap: '6px', flexWrap: 'wrap' }}>
                        <span>🕒 {cliente.horario}</span>
                        <span>•</span>
                        <span>✂️ {cliente.barbeiro_nome}</span>
                        {cliente.telefone && (
                          <>
                            <span>•</span>
                            <span>📱 {cliente.telefone}</span>
                          </>
                        )}
                      </p>
                    </div>
                    <div style={{ display: 'flex', alignItems: 'center', gap: '4px', color: '#9ca3af', fontSize: '0.75rem', fontWeight: '700', flexShrink: 0, paddingLeft: '10px' }}>
                      <span style={{ color: '#ffffff' }}>Ver datas</span>
                      <ChevronRight size={16} color="#ffffff" />
                    </div>
                  </div>
                ))}
              </div>
            ) : (
              /* MODO 2: Drill-Down - Detalhes e Dias Ocupados do Cliente Selecionado */
              <div style={{ display: 'flex', flexDirection: 'column', gap: '12px' }}>
                {/* Barra de Navegação Superior */}
                <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', flexWrap: 'wrap', gap: '8px', borderBottom: '1px solid #222222', paddingBottom: '12px' }}>
                  <button
                    onClick={() => setClienteSelecionado(null)}
                    style={{
                      background: '#1c1c1c',
                      border: '1px solid #333333',
                      color: '#ffffff',
                      borderRadius: '10px',
                      padding: '7px 12px',
                      cursor: 'pointer',
                      fontSize: '0.8rem',
                      fontWeight: '800',
                      display: 'inline-flex',
                      alignItems: 'center',
                      gap: '6px'
                    }}
                  >
                    <ArrowLeft size={15} /> Voltar para Lista
                  </button>

                  <button
                    onClick={() => handleExcluirRecorrenciaCompleta(clienteSelecionado)}
                    style={{
                      background: 'rgba(239, 68, 68, 0.12)',
                      border: '1px solid rgba(239, 68, 68, 0.35)',
                      color: '#fca5a5',
                      borderRadius: '10px',
                      padding: '7px 12px',
                      cursor: 'pointer',
                      fontSize: '0.78rem',
                      fontWeight: '800',
                      display: 'inline-flex',
                      alignItems: 'center',
                      gap: '5px'
                    }}
                    title="Cancelar e liberar todos os dias futuros deste cliente"
                  >
                    <Trash2 size={14} /> Cancelar Todos os Horários
                  </button>
                </div>

                {/* Resumo do Cliente Selecionado */}
                <div style={{ background: '#0e0e0e', border: '1px solid #262626', borderRadius: '14px', padding: '12px 14px' }}>
                  <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
                    <h4 style={{ color: '#ffffff', margin: 0, fontSize: '1.05rem', fontWeight: '800' }}>{clienteSelecionado.nome}</h4>
                    <span style={{ fontSize: '0.74rem', background: '#222222', color: '#ffffff', padding: '2px 8px', borderRadius: '6px', fontWeight: '800' }}>
                      {clienteSelecionado.datas.length} agendamentos
                    </span>
                  </div>
                  <p style={{ color: '#9ca3af', fontSize: '0.82rem', margin: '4px 0 0' }}>
                    {clienteSelecionado.servico} • 🕒 {clienteSelecionado.horario} • ✂️ {clienteSelecionado.barbeiro_nome} {clienteSelecionado.telefone && `• 📱 ${clienteSelecionado.telefone}`}
                  </p>
                </div>

                {/* Grid de Datas Ocupadas */}
                <div>
                  <span style={{ color: '#9ca3af', fontSize: '0.78rem', fontWeight: '800', textTransform: 'uppercase', marginBottom: '8px', display: 'flex', alignItems: 'center', gap: '6px' }}>
                    <CalendarDays size={14} /> Dias Reservados (Clique no ✕ para liberar uma data):
                  </span>

                  <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fill, minmax(115px, 1fr))', gap: '8px', maxHeight: '260px', overflowY: 'auto', padding: '2px' }}>
                    {clienteSelecionado.datas.map(ag => (
                      <div 
                        key={ag.id}
                        style={{
                          background: '#161616',
                          border: '1px solid #2a2a2a',
                          borderRadius: '8px',
                          padding: '6px 8px',
                          display: 'flex',
                          justifyContent: 'space-between',
                          alignItems: 'center',
                          fontSize: '0.8rem',
                          color: '#ffffff',
                          fontFamily: 'monospace'
                        }}
                      >
                        <span>{formatarDataBR(ag.data_agendamento)}</span>
                        <button
                          onClick={() => handleExcluirDataUnica(ag.id, formatarDataBR(ag.data_agendamento))}
                          style={{ background: 'rgba(239, 68, 68, 0.1)', border: '1px solid rgba(239, 68, 68, 0.3)', color: '#fca5a5', borderRadius: '4px', cursor: 'pointer', padding: '2px 4px', display: 'flex', alignItems: 'center', justifyContent: 'center' }}
                          title="Liberar apenas esta data"
                        >
                          <X size={12} />
                        </button>
                      </div>
                    ))}
                  </div>
                </div>
              </div>
            )}
          </div>
        )}

        {/* ABA 2: CADASTRO DE NOVO CLIENTE FIXO */}
        {subAba === 'novo' && (
          <form onSubmit={handleSalvarNovoFixo} style={{ display: 'flex', flexDirection: 'column', gap: '14px' }}>
            <div style={{ display: 'grid', gridTemplateColumns: '1fr', gap: '12px' }}>
              {/* Nome */}
              <div className="campo-caixa-limpo">
                <span className="rotulo-campo-limpo">NOME DO CLIENTE</span>
                <div className="linha-input-limpo">
                  <User size={18} className="icone-input-limpo" />
                  <input 
                    type="text" 
                    placeholder="Ex: Pedro Henrique (Fixo)"
                    value={nome}
                    onChange={(e) => setNome(e.target.value)}
                    className="input-limpo"
                    required
                  />
                </div>
              </div>

              {/* WhatsApp */}
              <div className="campo-caixa-limpo">
                <span className="rotulo-campo-limpo">WHATSAPP (OPCIONAL)</span>
                <div className="linha-input-limpo">
                  <Phone size={18} className="icone-input-limpo" />
                  <input 
                    type="tel" 
                    placeholder="(75) 90000-0000"
                    value={telefone}
                    onChange={(e) => setTelefone(formatarTelefone(e.target.value))}
                    className="input-limpo"
                  />
                </div>
              </div>

              {/* Profissional e Data de Início */}
              <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(200px, 1fr))', gap: '12px' }}>
                <div className="campo-caixa-limpo">
                  <span className="rotulo-campo-limpo">PROFISSIONAL</span>
                  <div className="linha-input-limpo">
                    <Scissors size={18} className="icone-input-limpo" />
                    <select 
                      value={barbeiroId} 
                      onChange={(e) => setBarbeiroId(e.target.value)}
                      className="select-limpo"
                    >
                      <option value="1">Geilson</option>
                      <option value="2">Denilson</option>
                    </select>
                  </div>
                </div>

                <div className="campo-caixa-limpo">
                  <span className="rotulo-campo-limpo">DATA DO 1º ATENDIMENTO</span>
                  <div className="linha-input-limpo">
                    <Calendar size={18} className="icone-input-limpo" />
                    <input 
                      type="date" 
                      value={dataInicio}
                      onChange={(e) => setDataInicio(e.target.value)}
                      className="input-limpo"
                      required
                    />
                  </div>
                </div>
              </div>

              {/* Horário e Serviço */}
              <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(200px, 1fr))', gap: '12px' }}>
                <div className="campo-caixa-limpo">
                  <span className="rotulo-campo-limpo">
                    {carregandoHorarios ? 'CARREGANDO HORÁRIOS...' : 'HORÁRIO FIXO'}
                  </span>
                  <div className="linha-input-limpo">
                    <Clock size={18} className="icone-input-limpo" />
                    <select 
                      value={horario} 
                      onChange={(e) => setHorario(e.target.value)}
                      className="select-limpo"
                      required
                    >
                      {horariosLivres.length === 0 ? (
                        <option value="">Sem vagas para este dia</option>
                      ) : (
                        horariosLivres.map(h => (
                          <option key={h} value={h}>{h}</option>
                        ))
                      )}
                    </select>
                  </div>
                </div>

                <div className="campo-caixa-limpo">
                  <span className="rotulo-campo-limpo">SERVIÇO</span>
                  <div className="linha-input-limpo">
                    <Scissors size={18} className="icone-input-limpo" />
                    <select 
                      value={servico} 
                      onChange={(e) => setServico(e.target.value)}
                      className="select-limpo"
                    >
                      <option value="Corte e Barba - R$ 35">Corte e Barba - R$ 35</option>
                      <option value="Corte Social - R$ 25">Corte Social - R$ 25</option>
                      <option value="Degradê - R$ 25">Degradê - R$ 25</option>
                      <option value="Navalhado - R$ 25">Navalhado - R$ 25</option>
                      <option value="Corte Raspado - R$ 20">Corte Raspado - R$ 20</option>
                      <option value="Barba e Pezinho - R$ 15">Barba e Pezinho - R$ 15</option>
                    </select>
                  </div>
                </div>
              </div>

              {/* Frequência */}
              <div className="campo-caixa-limpo">
                <span className="rotulo-campo-limpo">FREQUÊNCIA DE REPETIÇÃO</span>
                <div className="linha-input-limpo">
                  <Repeat size={18} className="icone-input-limpo" />
                  <select 
                    value={frequencia} 
                    onChange={(e) => setFrequencia(e.target.value)}
                    className="select-limpo"
                  >
                    <option value="semanal">📅 Semanal (De 7 em 7 dias - 52 semanas / 1 ano)</option>
                    <option value="quinzenal">🌓 Quinzenal (De 15 em 15 dias - 26 quinzenas / 1 ano)</option>
                    <option value="mensal">🌕 Mensal (1 vez por mês - 12 meses / 1 ano)</option>
                  </select>
                </div>
              </div>
            </div>

            <div style={{ display: 'flex', justifyContent: 'flex-end', gap: '10px', borderTop: '1px solid #242424', paddingTop: '16px', marginTop: '6px' }}>
              <button
                type="button"
                onClick={() => setSubAba('lista')}
                style={{ background: '#202020', border: '1px solid #383838', color: '#e5e7eb', padding: '10px 18px', borderRadius: '12px', cursor: 'pointer', fontWeight: '700', fontSize: '0.85rem', whiteSpace: 'nowrap' }}
              >
                Voltar
              </button>
              <button
                type="submit"
                disabled={salvando || !horario}
                className="btn-acao-rapida btn-cadastrar-principal"
                style={{ padding: '10px 20px', fontSize: '0.85rem', whiteSpace: 'nowrap' }}
              >
                <Check size={16} /> {salvando ? 'Salvando...' : 'Confirmar'}
              </button>
            </div>
          </form>
        )}
      </div>
    </div>
  );

  return typeof document !== 'undefined' ? createPortal(modalJSX, document.body) : null;
}
