import React, { useState, useEffect } from 'react';
import { api } from '../services/api';
import { formatarTelefone, isTelefoneValido } from '../utils/phoneMask';
import { formatarDataBR } from '../utils/dateUtils';
import { gerarLinkWhatsAppCancelamento } from '../utils/whatsapp';
import { Search, Calendar, User, Clock, Trash2, CheckCircle, AlertCircle } from 'lucide-react';

export function MeusAgendamentos() {
  const [telefone, setTelefone] = useState('');
  const [agendamentos, setAgendamentos] = useState([]);
  const [buscando, setBuscando] = useState(false);
  const [jaBuscou, setJaBuscou] = useState(false);

  // Preenche automaticamente o telefone salvo caso o cliente já tenha agendado
  useEffect(() => {
    try {
      const salvo = localStorage.getItem('dadosClienteBarbearia');
      if (salvo) {
        const cliente = JSON.parse(salvo);
        if (cliente.telefone) {
          setTelefone(cliente.telefone);
        }
      }
    } catch (e) {
      console.warn('Erro ao ler localStorage', e);
    }
  }, []);

  const handleBuscar = async () => {
    if (!isTelefoneValido(telefone)) {
      alert('Por favor, insira o WhatsApp completo com DDD.');
      return;
    }

    try {
      setBuscando(true);
      setJaBuscou(true);
      const lista = await api.getMeusAgendamentos(telefone);
      setAgendamentos(lista || []);
    } catch (err) {
      alert('Erro ao buscar agendamentos: ' + err.message);
    } finally {
      setBuscando(false);
    }
  };

  const handleCancelar = async (agendamento) => {
    if (!confirm(`Tem certeza que deseja cancelar o agendamento de "${agendamento.servico}" em ${formatarDataBR(agendamento.data_agendamento)} às ${agendamento.horario}?`)) {
      return;
    }

    try {
      await api.cancelarAgendamentoCliente(agendamento.id);
      alert('✅ Agendamento cancelado com sucesso! O horário foi liberado no sistema.');

      // Atualiza a lista na tela
      setAgendamentos(agendamentos.filter(ag => ag.id !== agendamento.id));

      // Redireciona para o WhatsApp do barbeiro avisando o cancelamento
      const urlWhats = gerarLinkWhatsAppCancelamento(agendamento);
      window.location.href = urlWhats;
    } catch (err) {
      alert('Erro ao cancelar agendamento: ' + err.message);
    }
  };

  return (
    <div className="container-agendamento-limpo fade-in">
      <div className="cartao-formulario-limpo">
        <h1 className="titulo-agendamento-limpo">Meus Agendamentos</h1>
        <p style={{ color: '#9ca3af', textAlign: 'center', fontSize: '0.92rem', marginTop: '-8px', marginBottom: '8px' }}>
          Consulte seus horários marcados ou solicite o cancelamento com 1 clique.
        </p>

        {/* Campo de WhatsApp com título interno */}
        <div className="campo-caixa-limpo">
          <span className="rotulo-campo-limpo">SEU WHATSAPP</span>
          <div className="linha-input-limpo">
            <Search size={18} className="icone-input-limpo" />
            <input 
              type="tel" 
              placeholder="(00) 00000-0000"
              maxLength={15}
              value={telefone}
              onChange={(e) => setTelefone(formatarTelefone(e.target.value))}
              onKeyDown={(e) => { if (e.key === 'Enter') handleBuscar(); }}
              className="input-limpo"
              aria-label="WhatsApp para consulta"
            />
          </div>
        </div>

        <button 
          onClick={handleBuscar} 
          disabled={buscando || !isTelefoneValido(telefone)}
          className={`botao-agendar-limpo ${isTelefoneValido(telefone) ? 'ativo' : ''}`}
          style={{ display: 'flex', alignItems: 'center', justifyContent: 'center', gap: '8px' }}
        >
          <Search size={18} />
          {buscando ? 'Consultando agendamentos...' : 'Buscar Agendamentos'}
        </button>

        {/* Lista de Resultados */}
        <div style={{ marginTop: '10px' }}>
          {jaBuscou && !buscando && agendamentos.length === 0 && (
            <div style={{ textAlign: 'center', padding: '24px', background: '#1c1c1c', borderRadius: '14px', border: '1px solid #2e2e2e' }}>
              <AlertCircle size={32} color="#fca5a5" style={{ margin: '0 auto 10px' }} />
              <p style={{ color: '#fca5a5', fontWeight: '600', fontSize: '0.95rem' }}>
                Nenhum agendamento pendente encontrado para este WhatsApp.
              </p>
              <span style={{ color: '#9ca3af', fontSize: '0.85rem', display: 'block', marginTop: '6px' }}>
                Verifique se digitou o número com DDD ou agende um novo horário.
              </span>
            </div>
          )}

          {agendamentos.map((ag) => (
            <div 
              key={ag.id} 
              style={{
                background: '#1c1c1c',
                border: '1px solid #2e2e2e',
                borderRadius: '16px',
                padding: '20px',
                marginBottom: '14px',
                boxShadow: '0 8px 25px rgba(0,0,0,0.6)'
              }}
              className="hover-lift"
            >
              <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start', marginBottom: '12px' }}>
                <h4 style={{ color: '#ffffff', fontSize: '1.15rem', fontWeight: '800', margin: 0 }}>
                  {ag.servico}
                </h4>
                <span style={{ 
                  background: 'rgba(34, 197, 94, 0.12)', 
                  color: '#4ade80', 
                  border: '1px solid rgba(34, 197, 94, 0.3)', 
                  padding: '4px 10px', 
                  borderRadius: '999px', 
                  fontSize: '0.78rem', 
                  fontWeight: '700' 
                }}>
                  Confirmado
                </span>
              </div>
              
              <div style={{ display: 'flex', flexDirection: 'column', gap: '8px', color: '#d1d5db', fontSize: '0.92rem', marginBottom: '18px' }}>
                <span style={{ display: 'flex', alignItems: 'center', gap: '8px' }}>
                  <Calendar size={16} color="#9ca3af" /> Data: <strong style={{ color: '#ffffff' }}>{formatarDataBR(ag.data_agendamento)}</strong>
                </span>
                <span style={{ display: 'flex', alignItems: 'center', gap: '8px' }}>
                  <Clock size={16} color="#9ca3af" /> Horário: <strong style={{ color: '#ffffff' }}>{ag.horario}</strong>
                </span>
                <span style={{ display: 'flex', alignItems: 'center', gap: '8px' }}>
                  <User size={16} color="#9ca3af" /> Barbeiro: <strong style={{ color: '#ffffff' }}>{ag.barbeiro_nome}</strong>
                </span>
              </div>

              <button 
                onClick={() => handleCancelar(ag)}
                style={{
                  background: 'rgba(239, 68, 68, 0.1)',
                  color: '#fca5a5',
                  border: '1px solid rgba(239, 68, 68, 0.3)',
                  padding: '11px 16px',
                  borderRadius: '10px',
                  cursor: 'pointer',
                  width: '100%',
                  fontWeight: '700',
                  fontSize: '0.9rem',
                  display: 'flex',
                  alignItems: 'center',
                  justifyContent: 'center',
                  gap: '8px',
                  transition: 'all 0.2s ease'
                }}
                onMouseEnter={(e) => {
                  e.currentTarget.style.background = '#ef4444';
                  e.currentTarget.style.color = '#ffffff';
                }}
                onMouseLeave={(e) => {
                  e.currentTarget.style.background = 'rgba(239, 68, 68, 0.1)';
                  e.currentTarget.style.color = '#fca5a5';
                }}
              >
                <Trash2 size={16} /> Cancelar Agendamento
              </button>
            </div>
          ))}
        </div>
      </div>
    </div>
  );
}
