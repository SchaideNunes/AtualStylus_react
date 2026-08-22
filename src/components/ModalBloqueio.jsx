import React, { useState, useEffect } from 'react';
import { createPortal } from 'react-dom';
import { X, ShieldAlert, Check, Calendar, Scissors, AlertCircle } from 'lucide-react';
import { api } from '../services/api';
import { formatarDataBR, filtrarHorariosPassadosSeHoje, getDataHojeString, isDomingo } from '../utils/dateUtils';

export function ModalBloqueio({ isOpen, onClose, dataInicial, barbeiroIdInicial = '1', onConfirmar }) {
  const [data, setData] = useState(dataInicial || getDataHojeString());
  const [barbeiroId, setBarbeiroId] = useState(String(barbeiroIdInicial || '1'));
  const [slotsSelecionados, setSlotsSelecionados] = useState([]);
  const [horariosConfig, setHorariosConfig] = useState([]);
  const [horariosOcupados, setHorariosOcupados] = useState([]);
  const [carregando, setCarregando] = useState(false);
  const [salvando, setSalvando] = useState(false);
  const [erro, setErro] = useState('');

  useEffect(() => {
    if (isOpen) {
      setData(dataInicial || getDataHojeString());
      setBarbeiroId(String(barbeiroIdInicial || '1'));
      setSlotsSelecionados([]);
      setErro('');
      document.body.classList.add('modal-aberto');
      document.documentElement.classList.add('modal-aberto');
      document.body.style.overflow = 'hidden';
      document.documentElement.style.overflow = 'hidden';
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
  }, [isOpen, dataInicial, barbeiroIdInicial]);

  // Carregar configuração de horários e agendamentos do dia ao alterar data ou barbeiro
  useEffect(() => {
    async function carregarDadosSlots() {
      if (!isOpen || !data || !barbeiroId) return;

      if (isDomingo(data)) {
        setErro('A barbearia não funciona aos domingos.');
        setHorariosConfig([]);
        setHorariosOcupados([]);
        return;
      }
      setErro('');

      try {
        setCarregando(true);
        setSlotsSelecionados([]);

        // 1. Horários do barbeiro
        let slotsCfg = [];
        try {
          const cfg = await api.getConfigHorariosBarbeiro(barbeiroId);
          if (cfg && Array.isArray(cfg.horarios) && cfg.horarios.length > 0) {
            slotsCfg = cfg.horarios;
          }
        } catch (e) {
          console.warn(e);
        }

        if (slotsCfg.length === 0) {
          slotsCfg = barbeiroId === '1' 
            ? ["08:30", "09:30", "10:00", "11:00", "14:00", "14:30", "15:30", "16:00", "17:00", "17:30", "18:00", "18:30"] 
            : ["08:30", "09:30", "10:00", "11:00", "14:00", "14:30", "15:30", "16:00", "17:00"];
        }
        setHorariosConfig(slotsCfg);

        // 2. Horários ocupados no dia
        try {
          const ags = await api.getAgendamentosAdmin({ data, barbeiroId });
          const ocupados = (ags || [])
            .filter(a => a.status !== 'cancelado')
            .map(a => a.horario);
          setHorariosOcupados(ocupados);
        } catch (e) {
          setHorariosOcupados([]);
        }
      } catch (err) {
        setErro('Erro ao carregar horários: ' + err.message);
      } finally {
        setCarregando(false);
      }
    }

    carregarDadosSlots();
  }, [isOpen, data, barbeiroId]);

  if (!isOpen) return null;

  const hoje = getDataHojeString();
  let horariosFiltrados = [...horariosConfig];
  if (data === hoje) {
    horariosFiltrados = filtrarHorariosPassadosSeHoje(horariosFiltrados);
  }

  const toggleSlot = (horario) => {
    if (slotsSelecionados.includes(horario)) {
      setSlotsSelecionados(slotsSelecionados.filter(h => h !== horario));
    } else {
      setSlotsSelecionados([...slotsSelecionados, horario]);
    }
  };

  const barbeiroNome = barbeiroId === '1' ? 'Geilson' : 'Denilson';

  const handleConfirmar = async () => {
    if (slotsSelecionados.length === 0) {
      alert('Selecione pelo menos um horário para bloquear.');
      return;
    }
    if (!confirm(`Bloquear ${slotsSelecionados.length} horários para ${barbeiroNome} em ${formatarDataBR(data)}?`)) {
      return;
    }

    try {
      setSalvando(true);
      await onConfirmar({
        barbeiro_id: parseInt(barbeiroId),
        barbeiro_nome: barbeiroNome,
        data_agendamento: data,
        horarios: slotsSelecionados
      });
      onClose();
    } catch (err) {
      alert('Erro ao bloquear horários: ' + err.message);
    } finally {
      setSalvando(false);
    }
  };

  const modalJSX = (
    <div className="modal-overlay" onClick={onClose}>
      <div 
        className="modal-card scale-in" 
        onClick={e => e.stopPropagation()} 
        style={{ borderRadius: '24px', background: '#141414', border: '1px solid #2e2e2e', maxWidth: '640px' }}
      >
        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '18px', borderBottom: '1px solid #242424', paddingBottom: '14px' }}>
          <h3 style={{ color: '#ffffff', fontSize: '1.25rem', fontWeight: '800', display: 'flex', alignItems: 'center', gap: '8px', margin: 0, textTransform: 'uppercase' }}>
            <ShieldAlert color="#ef4444" size={22} /> Bloqueio em Lote
          </h3>
          <button 
            onClick={onClose}
            style={{ background: '#202020', border: '1px solid #383838', color: '#9ca3af', cursor: 'pointer', borderRadius: '50%', width: '32px', height: '32px', display: 'flex', alignItems: 'center', justifyContent: 'center' }}
            aria-label="Fechar modal"
          >
            <X size={18} />
          </button>
        </div>

        {erro && (
          <div className="alerta-erro-login" style={{ marginBottom: '16px' }}>
            <AlertCircle size={18} style={{ flexShrink: 0 }} />
            <span>{erro}</span>
          </div>
        )}

        {/* Seletores de Profissional e Data */}
        <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(200px, 1fr))', gap: '12px', marginBottom: '18px' }}>
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
            <span className="rotulo-campo-limpo">DATA DO BLOQUEIO</span>
            <div className="linha-input-limpo">
              <Calendar size={18} className="icone-input-limpo" />
              <input 
                type="date" 
                value={data}
                onChange={(e) => setData(e.target.value)}
                className="input-limpo"
              />
            </div>
          </div>
        </div>

        <p style={{ color: '#9ca3af', fontSize: '0.88rem', fontWeight: '700', textTransform: 'uppercase', marginBottom: '12px' }}>
          {carregando ? 'Carregando horários...' : 'Clique nos horários que deseja bloquear:'}
        </p>

        <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fill, minmax(85px, 1fr))', gap: '10px', maxHeight: '280px', overflowY: 'auto', padding: '4px', marginBottom: '22px' }}>
          {horariosFiltrados.length === 0 ? (
            <p style={{ color: '#9ca3af', gridColumn: '1 / -1', textAlign: 'center', padding: '20px 0' }}>
              Nenhum horário disponível para bloquear nesta data.
            </p>
          ) : (
            horariosFiltrados.map(horario => {
              const isOcupado = horariosOcupados.includes(horario);
              const isSelecionado = slotsSelecionados.includes(horario);

              return (
                <button
                  key={horario}
                  disabled={isOcupado}
                  onClick={() => toggleSlot(horario)}
                  className={`slot-btn ${isSelecionado ? 'selecionado' : ''}`}
                  style={{ borderRadius: '12px' }}
                  title={isOcupado ? 'Horário já ocupado ou bloqueado' : `Selecionar ${horario}`}
                >
                  {horario}
                </button>
              );
            })
          )}
        </div>

        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', flexWrap: 'wrap', gap: '12px', borderTop: '1px solid #242424', paddingTop: '16px' }}>
          <span style={{ color: '#9ca3af', fontSize: '0.9rem', fontWeight: '700' }}>
            {slotsSelecionados.length} horário(s) selecionado(s)
          </span>
          <div style={{ display: 'flex', gap: '10px' }}>
            <button
              type="button"
              onClick={onClose}
              style={{ background: '#202020', border: '1px solid #383838', color: '#e5e7eb', padding: '12px 20px', borderRadius: '12px', cursor: 'pointer', fontWeight: '700', fontSize: '0.9rem' }}
            >
              Cancelar
            </button>
            <button
              disabled={salvando || slotsSelecionados.length === 0}
              onClick={handleConfirmar}
              style={{ 
                background: slotsSelecionados.length === 0 ? '#2a2a2a' : '#ef4444', 
                border: 'none', 
                color: '#ffffff', 
                padding: '12px 24px', 
                borderRadius: '12px', 
                cursor: slotsSelecionados.length === 0 ? 'not-allowed' : 'pointer', 
                fontWeight: '800',
                fontSize: '0.9rem',
                display: 'inline-flex',
                alignItems: 'center',
                gap: '8px',
                transition: 'all 0.2s ease'
              }}
            >
              <Check size={18} /> {salvando ? 'Salvando...' : 'Confirmar Bloqueio'}
            </button>
          </div>
        </div>
      </div>
    </div>
  );

  return typeof document !== 'undefined' ? createPortal(modalJSX, document.body) : null;
}
