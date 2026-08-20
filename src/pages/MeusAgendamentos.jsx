import React, { useState } from 'react';
import { api } from '../services/api';
import { formatarTelefone, isTelefoneValido } from '../utils/phoneMask';
import { formatarDataBR } from '../utils/dateUtils';
import { gerarLinkWhatsAppCancelamento } from '../utils/whatsapp';
import { Search, Calendar, User, Trash2 } from 'lucide-react';

export function MeusAgendamentos() {
  const [telefone, setTelefone] = useState('');
  const [agendamentos, setAgendamentos] = useState([]);
  const [buscando, setBuscando] = useState(false);
  const [jaBuscou, setJaBuscou] = useState(false);

  const handleBuscar = async () => {
    if (!isTelefoneValido(telefone)) {
      alert('Por favor, insira um número de WhatsApp válido com o DDD.');
      return;
    }

    try {
      setBuscando(true);
      setJaBuscou(true);
      const lista = await api.getMeusAgendamentos(telefone);
      setAgendamentos(lista);
    } catch (err) {
      alert('Erro ao buscar agendamentos: ' + err.message);
    } finally {
      setBuscando(false);
    }
  };

  const handleCancelar = async (agendamento) => {
    if (!confirm('Tem certeza que deseja cancelar este agendamento? O horário será liberado imediatamente no sistema.')) {
      return;
    }

    try {
      await api.cancelarAgendamentoCliente(agendamento.id);
      alert('✅ Agendamento cancelado com sucesso!');

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
    <div className="container-agendamento fade-in">
      <div className="header-agendamento-sticky">
        <h2 className="titulo-agendamento">Meus Agendamentos</h2>
      </div>

      <div className="formulario-agendamento">
        <p style={{ color: '#9ca3af', textAlign: 'center', fontSize: '0.95rem', marginBottom: '10px' }}>
          Digite o seu WhatsApp para consultar e gerenciar seus agendamentos futuros.
        </p>

        <div className="campo-formulario">
          <label className="label-campo">Seu WhatsApp</label>
          <input 
            type="tel" 
            placeholder="(00) 00000-0000"
            maxLength={15}
            value={telefone}
            onChange={(e) => setTelefone(formatarTelefone(e.target.value))}
            className="input-campo"
          />
        </div>

        <button 
          onClick={handleBuscar} 
          disabled={buscando || !isTelefoneValido(telefone)}
          className="botao-confirmar"
          style={{ display: 'flex', alignItems: 'center', justifyContent: 'center', gap: '8px' }}
        >
          <Search size={20} />
          {buscando ? 'Buscando...' : 'Buscar Agendamentos'}
        </button>

        <div style={{ marginTop: '20px' }}>
          {jaBuscou && !buscando && agendamentos.length === 0 && (
            <div style={{ textAlign: 'center', padding: '25px', background: '#1f2937', borderRadius: '12px', border: '1px solid #374151' }}>
              <p style={{ color: '#fca5a5', fontWeight: '500' }}>
                Nenhum agendamento pendente encontrado para este número.
              </p>
            </div>
          )}

          {agendamentos.map((ag) => (
            <div 
              key={ag.id} 
              style={{
                background: '#1f2937',
                border: '1px solid #374151',
                borderRadius: '12px',
                padding: '20px',
                marginBottom: '15px',
                boxShadow: '0 4px 15px rgba(0,0,0,0.4)'
              }}
              className="hover-lift"
            >
              <h4 style={{ color: '#fbbf24', fontSize: '1.2rem', fontWeight: 'bold', marginBottom: '10px' }}>
                {ag.servico}
              </h4>
              
              <div style={{ display: 'flex', flexDirection: 'column', gap: '6px', color: '#d1d5db', fontSize: '0.95rem', marginBottom: '15px' }}>
                <span style={{ display: 'flex', alignItems: 'center', gap: '8px' }}>
                  <Calendar size={16} color="#fbbf24" /> Data: <strong>{formatarDataBR(ag.data_agendamento)}</strong> às <strong>{ag.horario}</strong>
                </span>
                <span style={{ display: 'flex', alignItems: 'center', gap: '8px' }}>
                  <User size={16} color="#fbbf24" /> Barbeiro: <strong>{ag.barbeiro_nome}</strong>
                </span>
              </div>

              <button 
                onClick={() => handleCancelar(ag)}
                style={{
                  background: '#7f1d1d',
                  color: '#fca5a5',
                  border: '1px solid #ef4444',
                  padding: '10px 16px',
                  borderRadius: '8px',
                  cursor: 'pointer',
                  width: '100%',
                  fontWeight: 'bold',
                  display: 'flex',
                  alignItems: 'center',
                  justifyContent: 'center',
                  gap: '8px',
                  transition: 'background 0.2s'
                }}
              >
                <Trash2 size={18} /> Cancelar Agendamento
              </button>
            </div>
          ))}
        </div>
      </div>
    </div>
  );
}
