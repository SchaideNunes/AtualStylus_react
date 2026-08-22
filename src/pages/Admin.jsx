import React, { useState, useEffect, useMemo } from 'react';
import { api } from '../services/api';
import { ModalBloqueio } from '../components/ModalBloqueio';
import { ModalNovoAgendamento } from '../components/ModalNovoAgendamento';
import { ModalBloqueioUnitario } from '../components/ModalBloqueioUnitario';
import { ModalClientesFixos } from '../components/ModalClientesFixos';
import { 
  formatarDataBR, 
  getDataHojeString, 
  isDomingo, 
  normalizarDataISO, 
  obterDetalhesData,
  formatarMesAno,
  adicionarMeses
} from '../utils/dateUtils';
import { 
  ShieldCheck, 
  LogOut, 
  CheckCircle, 
  Trash2, 
  Settings, 
  Zap, 
  Filter, 
  Plus, 
  User, 
  Calendar, 
  Clock, 
  Scissors, 
  Lock, 
  Check, 
  RotateCcw,
  Repeat,
  ChevronLeft,
  ChevronRight,
  History
} from 'lucide-react';
import '../styles/admin.css';

export function Admin({ onLogout }) {
  const [abaAtiva, setAbaAtiva] = useState('pendentes'); // 'pendentes' | 'concluidos' | 'bloqueios' | 'config'
  const [agendamentos, setAgendamentos] = useState([]);
  const [carregando, setCarregando] = useState(true);

  // Filtros
  const [buscaTexto, setBuscaTexto] = useState('');
  const [buscaData, setBuscaData] = useState('');
  const [buscaBarbeiro, setBuscaBarbeiro] = useState('');
  const [mesConcluidos, setMesConcluidos] = useState(() => getDataHojeString().substring(0, 7));

  // Modais de Ações Rápidas
  const [modalNovoAgendamentoAberto, setModalNovoAgendamentoAberto] = useState(false);
  const [modalBloqueioUnitarioAberto, setModalBloqueioUnitarioAberto] = useState(false);
  const [modalBloqueioLoteAberto, setModalBloqueioLoteAberto] = useState(false);
  const [modalClientesFixosAberto, setModalClientesFixosAberto] = useState(false);

  // Aba Config
  const [configBarbeiroId, setConfigBarbeiroId] = useState('1');
  const [configHorariosLista, setConfigHorariosLista] = useState([]);
  const [novoHorarioInput, setNovoHorarioInput] = useState('');

  // Carregar agendamentos do backend
  const carregarAgendamentos = async () => {
    try {
      setCarregando(true);
      const lista = await api.getAgendamentosAdmin();
      setAgendamentos(lista || []);
    } catch (err) {
      console.error('Erro ao carregar dados do admin:', err);
      if (err.message.includes('Não autenticado') || err.message.includes('Token')) {
        if (onLogout) onLogout();
      }
    } finally {
      setCarregando(false);
    }
  };

  useEffect(() => {
    carregarAgendamentos();
  }, []);

  // Carregar horários na aba de Config
  useEffect(() => {
    async function carregarConfig() {
      if (!configBarbeiroId) return;
      try {
        const cfg = await api.getConfigHorariosBarbeiro(configBarbeiroId);
        if (cfg && cfg.horarios) {
          setConfigHorariosLista(cfg.horarios);
        }
      } catch (e) {
        console.error(e);
      }
    }
    if (abaAtiva === 'config') {
      carregarConfig();
    }
  }, [abaAtiva, configBarbeiroId]);

  // Contadores por aba
  const contadores = useMemo(() => {
    const hoje = getDataHojeString();
    let pendentes = 0;
    let concluidos = 0;
    let bloqueios = 0;

    agendamentos.forEach((item) => {
      const isBloqueio = item.status === 'bloqueado' || item.nome === 'BLOQUEIO';
      const dataItem = normalizarDataISO(item.data_agendamento);
      if (item.status === 'confirmado' && !isBloqueio) {
        if (dataItem >= hoje) {
          pendentes++;
        } else if (mesConcluidos === 'todos' || dataItem.startsWith(mesConcluidos)) {
          concluidos++;
        }
      }
      if (item.status === 'concluido') {
        if (mesConcluidos === 'todos' || dataItem.startsWith(mesConcluidos)) {
          concluidos++;
        }
      }
      if (isBloqueio && dataItem >= hoje) bloqueios++;
    });

    return { pendentes, concluidos, bloqueios };
  }, [agendamentos, mesConcluidos]);

  // Filtragem dos registros conforme a aba e os inputs de busca
  const agendamentosFiltrados = useMemo(() => {
    const hoje = getDataHojeString();
    const texto = buscaTexto.toLowerCase();
    const buscaDataNormalizada = normalizarDataISO(buscaData);

    return agendamentos.filter((item) => {
      const dataItem = normalizarDataISO(item.data_agendamento);
      const matchTexto = item.nome?.toLowerCase().includes(texto) || item.telefone?.includes(texto);
      const matchData = buscaDataNormalizada ? dataItem === buscaDataNormalizada : true;
      const matchBarbeiro = buscaBarbeiro ? String(item.barbeiro_id) === String(buscaBarbeiro) : true;

      let matchAba = false;
      const isBloqueio = item.status === 'bloqueado' || item.nome === 'BLOQUEIO';

      if (abaAtiva === 'pendentes') {
        matchAba = item.status === 'confirmado' && !isBloqueio && dataItem >= hoje;
      } else if (abaAtiva === 'concluidos') {
        const isConcluidoStatus = (item.status === 'concluido') || (item.status === 'confirmado' && !isBloqueio && dataItem < hoje);
        const matchMes = buscaDataNormalizada ? true : (mesConcluidos === 'todos' || dataItem.startsWith(mesConcluidos));
        matchAba = isConcluidoStatus && matchMes;
      } else if (abaAtiva === 'bloqueios') {
        matchAba = isBloqueio && dataItem >= hoje;
      }

      return matchTexto && matchData && matchBarbeiro && matchAba;
    });
  }, [agendamentos, abaAtiva, buscaTexto, buscaData, buscaBarbeiro, mesConcluidos]);

  // Agrupamento por data para renderização do calendário
  const agendamentosAgrupados = useMemo(() => {
    const copia = agendamentosFiltrados.map(ag => ({
      ...ag,
      data_agendamento: normalizarDataISO(ag.data_agendamento)
    }));

    copia.sort((a, b) => {
      if (a.data_agendamento === b.data_agendamento) {
        return a.horario.localeCompare(b.horario);
      }
      if (abaAtiva === 'concluidos') {
        return b.data_agendamento.localeCompare(a.data_agendamento);
      }
      return a.data_agendamento.localeCompare(b.data_agendamento);
    });

    const agrupados = {};
    copia.forEach((ag) => {
      const chaveData = ag.data_agendamento;
      if (!agrupados[chaveData]) {
        agrupados[chaveData] = [];
      }
      agrupados[chaveData].push(ag);
    });
    return agrupados;
  }, [agendamentosFiltrados, abaAtiva]);

  // Ações de Agendamento
  const handleConcluir = async (id) => {
    if (!confirm('Marcar serviço como realizado?')) return;
    try {
      await api.concluirAgendamentoAdmin(id);
      setAgendamentos(agendamentos.map(ag => ag.id === id ? { ...ag, status: 'concluido' } : ag));
    } catch (err) {
      alert('Erro ao concluir agendamento: ' + err.message);
    }
  };

  const handleDeletar = async (id, isConcluido) => {
    const msg = isConcluido 
      ? 'Tem certeza que deseja apagar este registro permanentemente?' 
      : 'Tem certeza que deseja cancelar e liberar este horário?';
    if (!confirm(msg)) return;

    try {
      await api.deletarAgendamentoAdmin(id);
      setAgendamentos(agendamentos.filter(ag => ag.id !== id));
    } catch (err) {
      alert('Erro ao deletar agendamento: ' + err.message);
    }
  };

  // Handlers dos Modais
  const handleCriarAgendamentoAdmin = async (dados) => {
    await api.criarAgendamentoAdmin(dados);
    alert(dados.recorrente ? '✅ Cliente fixo cadastrado com sucesso (52 semanas)!' : '✅ Agendamento cadastrado com sucesso!');
    await carregarAgendamentos();
  };

  const handleCriarBloqueioUnitario = async (dados) => {
    await api.criarAgendamentoAdmin(dados);
    alert('✅ Horário bloqueado com sucesso!');
    await carregarAgendamentos();
  };

  const handleConfirmarBloqueioLote = async (dados) => {
    await api.criarBloqueioLote(dados);
    alert('✅ Bloqueios em lote salvos com sucesso!');
    await carregarAgendamentos();
  };

  // Funções da Aba Config
  const handleAdicionarHorarioConfig = () => {
    if (!novoHorarioInput) return;
    if (configHorariosLista.includes(novoHorarioInput)) {
      alert('Este horário já existe na lista!');
      return;
    }
    setConfigHorariosLista([...configHorariosLista, novoHorarioInput].sort());
    setNovoHorarioInput('');
  };

  const handleRemoverHorarioConfig = (h) => {
    if (confirm(`Remover horário ${h}?`)) {
      setConfigHorariosLista(configHorariosLista.filter(x => x !== h));
    }
  };

  const handleSalvarConfig = async () => {
    try {
      await api.salvarConfigHorariosBarbeiro(configBarbeiroId, configHorariosLista);
      alert('✅ Horários de atendimento salvos no banco de dados com sucesso!');
    } catch (err) {
      alert('Erro ao salvar horários: ' + err.message);
    }
  };

  return (
    <div className="admin-container fade-in">
      {/* 1. Header do Painel */}
      <div className="admin-header-revamp">
        <div className="admin-titulo-box">
          <div className="icone-admin-escudo">
            <ShieldCheck color="#ffffff" size={24} />
          </div>
          <div>
            <h1 className="admin-title-texto">Painel Administrativo</h1>
            <p className="admin-subtitle-texto">AtualEstilo Barbearia • Gestão em Tempo Real</p>
          </div>
        </div>

        <button 
          onClick={onLogout} 
          className="btn-sair-admin"
          aria-label="Sair da conta"
        >
          <LogOut size={16} /> Sair
        </button>
      </div>

      {/* 2. Tabs Segmentadas */}
      <nav className="admin-tabs-segmentada" aria-label="Abas de Gestão">
        <button 
          onClick={() => setAbaAtiva('pendentes')} 
          className={`tab-btn-revamp ${abaAtiva === 'pendentes' ? 'ativo-pendentes' : ''}`}
        >
          <span className="tab-texto-com-icone">⏳ Pendentes</span>
          <span className="badge-contador-tab">{contadores.pendentes}</span>
        </button>

        <button 
          onClick={() => setAbaAtiva('concluidos')} 
          className={`tab-btn-revamp ${abaAtiva === 'concluidos' ? 'ativo-concluidos' : ''}`}
        >
          <span className="tab-texto-com-icone">✅ Concluídos</span>
          <span className="badge-contador-tab">{contadores.concluidos}</span>
        </button>

        <button 
          onClick={() => setAbaAtiva('bloqueios')} 
          className={`tab-btn-revamp ${abaAtiva === 'bloqueios' ? 'ativo-bloqueios' : ''}`}
        >
          <span className="tab-texto-com-icone">🚫 Bloqueios</span>
          <span className="badge-contador-tab">{contadores.bloqueios}</span>
        </button>

        <button 
          onClick={() => setAbaAtiva('config')} 
          className={`tab-btn-revamp ${abaAtiva === 'config' ? 'ativo-config' : ''}`}
        >
          <span className="tab-texto-com-icone">⚙️ Configuração</span>
        </button>
      </nav>

      {/* 3. Conteúdo da Aba Configuração */}
      {abaAtiva === 'config' ? (
        <div className="painel-box-admin scale-in">
          <div className="painel-header-titulo">
            <h2 className="painel-titulo-texto" style={{ fontSize: 'clamp(0.95rem, 3.8vw, 1.15rem)', whiteSpace: 'nowrap' }}>
              <Settings color="#ffffff" size={18} /> Configurar Horários de Atendimento
            </h2>
          </div>

          <p style={{ color: '#9ca3af', fontSize: '0.86rem', margin: 0, lineHeight: '1.4' }}>
            Selecione o profissional para gerenciar os horários que ficam disponíveis para agendamento online.
          </p>

          <div className="box-controles-config-linha">
            <div className="campo-caixa-limpo" style={{ flex: '1 1 180px' }}>
              <span className="rotulo-campo-limpo">PROFISSIONAL</span>
              <div className="linha-input-limpo">
                <Scissors size={16} className="icone-input-limpo" />
                <select 
                  value={configBarbeiroId} 
                  onChange={(e) => setConfigBarbeiroId(e.target.value)}
                  className="select-limpo"
                >
                  <option value="1">Geilson</option>
                  <option value="2">Denilson</option>
                </select>
              </div>
            </div>

            <div className="campo-caixa-limpo" style={{ flex: '1 1 140px' }}>
              <span className="rotulo-campo-limpo">NOVO HORÁRIO</span>
              <div className="linha-input-limpo">
                <Clock size={16} className="icone-input-limpo" />
                <input 
                  type="time" 
                  value={novoHorarioInput}
                  onChange={(e) => setNovoHorarioInput(e.target.value)}
                  className="input-limpo"
                />
              </div>
            </div>

            <button 
              onClick={handleAdicionarHorarioConfig}
              className="btn-acao-rapida btn-cadastrar-principal"
              style={{ minHeight: '40px', padding: '8px 16px', fontSize: '0.82rem', borderRadius: '10px', alignSelf: 'flex-end', whiteSpace: 'nowrap' }}
            >
              <Plus size={16} strokeWidth={3} /> Adicionar
            </button>
          </div>

          <div>
            <span style={{ color: '#9ca3af', fontSize: '0.78rem', fontWeight: '800', textTransform: 'uppercase', display: 'block', marginBottom: '10px' }}>
              Horários Cadastrados (Clique para remover):
            </span>

            <div className="grid-chips-horarios">
              {configHorariosLista.map(h => (
                <button 
                  key={h} 
                  onClick={() => handleRemoverHorarioConfig(h)}
                  className="chip-horario-config-revamp"
                  title="Clique para remover este horário"
                >
                  ✕ {h}
                </button>
              ))}
            </div>
          </div>

          <div style={{ borderTop: '1px solid #222222', paddingTop: '16px', display: 'flex', justifyContent: 'flex-end' }}>
            <button 
              onClick={handleSalvarConfig}
              className="btn-acao-rapida btn-cadastrar-principal"
              style={{ padding: '10px 24px', fontSize: '0.88rem', borderRadius: '10px' }}
            >
              <Check size={16} /> Salvar
            </button>
          </div>
        </div>
      ) : (
        <>
          {/* 4. Barra de Ações (Abre modais popup) */}
          <div className="painel-box-admin box-acoes-admin">
            <div className="acoes-header-linha">
              <div className="acoes-titulo-tag">
                <Zap color="#ffffff" size={18} />
                <span>Ações</span>
              </div>

              <div className="grupo-botoes-acoes">
                <button 
                  onClick={() => setModalNovoAgendamentoAberto(true)}
                  className="btn-acao-rapida btn-cadastrar-principal"
                >
                  <Plus size={16} strokeWidth={3} /> Novo Agendamento
                </button>

                <button 
                  onClick={() => setModalClientesFixosAberto(true)}
                  className="btn-acao-rapida btn-bloqueio-unitario"
                >
                  <Repeat size={16} /> Clientes Fixos
                </button>

                <button 
                  onClick={() => setModalBloqueioLoteAberto(true)}
                  className="btn-acao-rapida btn-bloqueio-lote"
                >
                  <ShieldCheck size={16} /> Bloqueio em Lote
                </button>

                <button 
                  onClick={() => setModalBloqueioUnitarioAberto(true)}
                  className="btn-acao-rapida btn-bloqueio-unitario"
                >
                  <Lock size={16} /> Bloqueio Unitário
                </button>
              </div>
            </div>
          </div>

          {/* 5. Painel Filtros */}
          <div className="painel-box-admin">
            <div className="painel-header-titulo">
              <span className="painel-titulo-texto" style={{ fontSize: '1rem' }}>
                <Filter size={18} /> Filtrar Lista
              </span>
              <span style={{ color: '#ffffff', fontFamily: 'monospace', fontWeight: '800', fontSize: '0.95rem' }}>
                Total: {agendamentosFiltrados.length}
              </span>
            </div>

            <div className="grid-filtros-revamp">
              <div className="campo-caixa-limpo">
                <span className="rotulo-campo-limpo">BUSCA RÁPIDA</span>
                <div className="linha-input-limpo">
                  <User size={18} className="icone-input-limpo" />
                  <input 
                    type="text" 
                    placeholder="Nome ou WhatsApp..."
                    value={buscaTexto}
                    onChange={(e) => setBuscaTexto(e.target.value)}
                    className="input-limpo"
                  />
                </div>
              </div>

              <div className="campo-caixa-limpo">
                <span className="rotulo-campo-limpo">DATA ESPECÍFICA</span>
                <div className="linha-input-limpo">
                  <Calendar size={18} className="icone-input-limpo" />
                  <input 
                    type="date" 
                    value={buscaData}
                    onChange={(e) => setBuscaData(e.target.value)}
                    className="input-limpo"
                  />
                </div>
              </div>

              <div className="campo-caixa-limpo">
                <span className="rotulo-campo-limpo">BARBEIRO</span>
                <div className="linha-input-limpo">
                  <Scissors size={18} className="icone-input-limpo" />
                  <select 
                    value={buscaBarbeiro}
                    onChange={(e) => setBuscaBarbeiro(e.target.value)}
                    className="select-limpo"
                  >
                    <option value="">Todos os Barbeiros</option>
                    <option value="1">Geilson</option>
                    <option value="2">Denilson</option>
                  </select>
                </div>
              </div>

              <button 
                onClick={() => { setBuscaTexto(''); setBuscaData(''); setBuscaBarbeiro(''); }}
                className="btn-limpar-filtros"
                title="Limpar todos os filtros"
              >
                <RotateCcw size={16} style={{ marginRight: '6px' }} /> Limpar
              </button>
            </div>
          </div>

          {/* Banner de Navegação de Meses para Concluídos */}
          {abaAtiva === 'concluidos' && (
            <div className="painel-box-admin" style={{ padding: '14px 18px', background: '#121212', border: '1px solid #282828' }}>
              <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', flexWrap: 'wrap', gap: '14px' }}>
                <div style={{ display: 'flex', alignItems: 'center', gap: '8px', flexWrap: 'wrap' }}>
                  <button
                    onClick={() => {
                      const base = mesConcluidos === 'todos' ? getDataHojeString().substring(0, 7) : mesConcluidos;
                      setMesConcluidos(adicionarMeses(base, -1));
                    }}
                    title="Mês Anterior"
                    style={{ background: '#1e1e1e', border: '1px solid #333333', color: '#ffffff', borderRadius: '8px', width: '34px', height: '34px', display: 'inline-flex', alignItems: 'center', justifyContent: 'center', cursor: 'pointer' }}
                  >
                    <ChevronLeft size={16} />
                  </button>

                  <div style={{ display: 'flex', alignItems: 'center', gap: '6px' }}>
                    <Calendar size={15} color="#9ca3af" />
                    <input 
                      type="month" 
                      value={mesConcluidos === 'todos' ? '' : mesConcluidos} 
                      onChange={(e) => setMesConcluidos(e.target.value)} 
                      style={{ background: '#000000', border: '1px solid #383838', borderRadius: '8px', color: '#ffffff', padding: '6px 10px', fontSize: '0.88rem', fontWeight: '700', fontFamily: 'monospace' }}
                    />
                  </div>

                  <button
                    onClick={() => {
                      const base = mesConcluidos === 'todos' ? getDataHojeString().substring(0, 7) : mesConcluidos;
                      setMesConcluidos(adicionarMeses(base, 1));
                    }}
                    title="Próximo Mês"
                    style={{ background: '#1e1e1e', border: '1px solid #333333', color: '#ffffff', borderRadius: '8px', width: '34px', height: '34px', display: 'inline-flex', alignItems: 'center', justifyContent: 'center', cursor: 'pointer' }}
                  >
                    <ChevronRight size={16} />
                  </button>

                  <button
                    onClick={() => setMesConcluidos(getDataHojeString().substring(0, 7))}
                    style={{ 
                      background: mesConcluidos === getDataHojeString().substring(0, 7) ? '#ffffff' : '#222222', 
                      color: mesConcluidos === getDataHojeString().substring(0, 7) ? '#000000' : '#ffffff', 
                      border: '1px solid #3a3a3a', 
                      borderRadius: '8px', 
                      padding: '6px 12px', 
                      fontSize: '0.78rem', 
                      cursor: 'pointer', 
                      fontWeight: '700' 
                    }}
                  >
                    Mês Atual
                  </button>

                  <button
                    onClick={() => setMesConcluidos(mesConcluidos === 'todos' ? getDataHojeString().substring(0, 7) : 'todos')}
                    style={{ 
                      background: mesConcluidos === 'todos' ? '#ffffff' : '#222222', 
                      color: mesConcluidos === 'todos' ? '#000000' : '#ffffff', 
                      border: '1px solid #3a3a3a', 
                      borderRadius: '8px', 
                      padding: '6px 12px', 
                      fontSize: '0.78rem', 
                      cursor: 'pointer', 
                      fontWeight: '700',
                      display: 'inline-flex',
                      alignItems: 'center',
                      gap: '4px'
                    }}
                  >
                    <History size={13} /> {mesConcluidos === 'todos' ? 'Vendo Todo o Histórico' : 'Todo o Histórico'}
                  </button>
                </div>

                <div style={{ display: 'flex', alignItems: 'center', gap: '12px', flexWrap: 'wrap' }}>
                  <span style={{ fontSize: '0.84rem', color: '#9ca3af' }}>
                    {mesConcluidos === 'todos' ? (
                      <>Histórico Total: <strong style={{ color: '#22c55e', fontSize: '0.95rem' }}>{agendamentosFiltrados.length}</strong> atendimentos</>
                    ) : (
                      <>Atendimentos em <strong style={{ color: '#ffffff', textTransform: 'capitalize' }}>{formatarMesAno(mesConcluidos)}</strong>: <strong style={{ color: '#22c55e', fontSize: '0.95rem' }}>{agendamentosFiltrados.length}</strong></>
                    )}
                  </span>
                  <span style={{ color: '#444444' }}>•</span>
                  <span style={{ fontSize: '0.84rem', color: '#9ca3af' }}>
                    Faturamento: <strong style={{ color: '#ffffff', fontSize: '0.95rem' }}>R$ {agendamentosFiltrados.reduce((acc, curr) => acc + (Number(curr.valor) || 0), 0)}</strong>
                  </span>
                </div>
              </div>
            </div>
          )}

          {/* 6. Listagem Agrupada de Agendamentos */}
          <div className="lista-agendamentos">
            {carregando ? (
              <div style={{ textAlign: 'center', padding: '50px' }}>
                <p style={{ color: '#9ca3af', fontSize: '1.05rem' }}>Carregando atendimentos...</p>
              </div>
            ) : Object.keys(agendamentosAgrupados).length === 0 ? (
              <div style={{ textAlign: 'center', padding: '45px', background: '#141414', borderRadius: '20px', border: '1px solid #2e2e2e' }}>
                <p style={{ color: '#9ca3af', fontSize: '1.1rem', margin: 0 }}>Nenhum registro encontrado para esta aba/filtro.</p>
              </div>
            ) : (
              Object.entries(agendamentosAgrupados).map(([dataStr, lista]) => {
                const { diaSemana, dataExtenso } = obterDetalhesData(dataStr);

                return (
                  <div key={dataStr} className="card-dia-agrupado-revamp hover-lift">
                    <div className="header-dia-agrupado-revamp">
                      <div>
                        <h3 className="titulo-dia-calendario">
                          📅 {diaSemana || 'Atendimentos'}
                        </h3>
                        <p className="subtitulo-dia-calendario">{dataExtenso || dataStr}</p>
                      </div>
                      <span className="badge-contagem-dia">
                        {lista.length} atendimento(s)
                      </span>
                    </div>

                    <div>
                      {lista.map((ag) => {
                        const isBloqueio = ag.status === 'bloqueado' || ag.nome === 'BLOQUEIO';
                        const statusClasse = isBloqueio ? 'bloqueado' : (ag.status === 'concluido' ? 'concluido' : 'confirmado');

                        return (
                          <div 
                            key={ag.id} 
                            className={`item-agendamento-card-compact ${statusClasse}`}
                          >
                            {/* Linha Superior: Horário + Nome + Ações Rápidas */}
                            <div className="agendamento-linha-topo">
                              <div className="agendamento-lado-esquerdo">
                                <span className="hora-chip-compact">{ag.horario}</span>
                                <span className="nome-cliente-compact">
                                  {ag.nome}
                                  {isBloqueio && <span className="badge-bloqueio-mini">Bloqueado</span>}
                                </span>
                              </div>

                              <div className="agendamento-acoes-compact">
                                {abaAtiva === 'pendentes' && !isBloqueio && (
                                  <button 
                                    onClick={() => handleConcluir(ag.id)}
                                    className="btn-acao-mini btn-mini-concluir"
                                    title="Marcar como realizado"
                                  >
                                    <CheckCircle size={14} />
                                    <span className="texto-btn-mini">Concluir</span>
                                  </button>
                                )}

                                <button 
                                  onClick={() => handleDeletar(ag.id, ag.status === 'concluido')}
                                  className="btn-acao-mini btn-mini-liberar"
                                  title={ag.status === 'concluido' ? 'Excluir histórico' : 'Cancelar e liberar horário'}
                                >
                                  <Trash2 size={14} />
                                  <span className="texto-btn-mini">{ag.status === 'concluido' ? 'Apagar' : 'Liberar'}</span>
                                </button>
                              </div>
                            </div>

                            {/* Linha Inferior: Metadados em linha única limpa */}
                            <div className="agendamento-linha-meta">
                              {ag.servico && <span className="meta-item-servico">✂️ {ag.servico}</span>}
                              <span className="meta-separador">•</span>
                              <span className="meta-item-barbeiro">{ag.barbeiro_nome}</span>
                              {ag.telefone && (
                                <>
                                  <span className="meta-separador">•</span>
                                  <a 
                                    href={`https://wa.me/55${ag.telefone.replace(/\D/g, '')}`} 
                                    target="_blank" 
                                    rel="noopener noreferrer"
                                    className="meta-link-whats"
                                  >
                                    📱 {ag.telefone}
                                  </a>
                                </>
                              )}
                            </div>
                          </div>
                        );
                      })}
                    </div>
                  </div>
                );
              })
            )}
          </div>
        </>
      )}

      {/* Modais de Ações Rápidas */}
      <ModalNovoAgendamento 
        isOpen={modalNovoAgendamentoAberto}
        onClose={() => setModalNovoAgendamentoAberto(false)}
        onSalvar={handleCriarAgendamentoAdmin}
      />

      <ModalBloqueioUnitario 
        isOpen={modalBloqueioUnitarioAberto}
        onClose={() => setModalBloqueioUnitarioAberto(false)}
        onConfirmar={handleCriarBloqueioUnitario}
      />

      <ModalBloqueio 
        isOpen={modalBloqueioLoteAberto}
        onClose={() => setModalBloqueioLoteAberto(false)}
        dataInicial={getDataHojeString()}
        barbeiroIdInicial="1"
        onConfirmar={handleConfirmarBloqueioLote}
      />

      <ModalClientesFixos 
        isOpen={modalClientesFixosAberto}
        onClose={() => setModalClientesFixosAberto(false)}
        onAtualizarGeral={carregarAgendamentos}
      />
    </div>
  );
}
