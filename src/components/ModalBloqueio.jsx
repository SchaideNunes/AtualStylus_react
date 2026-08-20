import React, { useState, useEffect } from 'react';
import { X, ShieldAlert } from 'lucide-react';
import { formatarDataBR, filtrarHorariosPassadosSeHoje, getDataHojeString } from '../utils/dateUtils';

export function ModalBloqueio({ isOpen, onClose, data, barbeiroId, barbeiroNome, horariosBarbeiro = [], horariosOcupados = [], onConfirmar }) {
  const [slotsSelecionados, setSlotsSelecionados] = useState([]);
  const [salvando, setSalvando] = useState(false);

  useEffect(() => {
    if (isOpen) {
      setSlotsSelecionados([]);
    }
  }, [isOpen, data, barbeiroId]);

  if (!isOpen) return null;

  const hoje = getDataHojeString();
  let horariosFiltrados = [...horariosBarbeiro];
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

  const handleConfirmar = async () => {
    if (slotsSelecionados.length === 0) {
      alert('Selecione pelo menos um horário para bloquear.');
      return;
    }
    if (!confirm(`Bloquear ${slotsSelecionados.length} horários para ${barbeiroNome}?`)) {
      return;
    }

    try {
      setSalvando(true);
      await onConfirmar(slotsSelecionados);
      onClose();
    } catch (err) {
      alert('Erro ao bloquear horários: ' + err.message);
    } finally {
      setSalvando(false);
    }
  };

  return (
    <div className="modal-overlay" onClick={onClose}>
      <div className="modal-card scale-in" onClick={e => e.stopPropagation()}>
        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '15px', borderBottom: '1px solid #2e2e2e', paddingBottom: '12px' }}>
          <h3 style={{ color: '#ffffff', fontSize: '1.3rem', fontWeight: 'bold', display: 'flex', alignItems: 'center', gap: '8px' }}>
            <ShieldAlert color="#ef4444" size={24} /> Bloqueio Múltiplo
          </h3>
          <button 
            onClick={onClose}
            style={{ background: 'transparent', border: 'none', color: '#9ca3af', cursor: 'pointer' }}
          >
            <X size={24} />
          </button>
        </div>

        <p style={{ color: '#fbbf24', fontSize: '0.95rem', marginBottom: '18px', fontFamily: 'monospace' }}>
          Bloqueando agenda de <b>{barbeiroNome}</b> para <b>{formatarDataBR(data)}</b>
        </p>

        <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fill, minmax(80px, 1fr))', gap: '10px', maxHeight: '280px', overflowY: 'auto', padding: '5px', marginBottom: '20px' }}>
          {horariosFiltrados.map(horario => {
            const isOcupado = horariosOcupados.includes(horario);
            const isSelecionado = slotsSelecionados.includes(horario);

            return (
              <button
                key={horario}
                disabled={isOcupado}
                onClick={() => toggleSlot(horario)}
                className={`slot-btn ${isSelecionado ? 'selecionado' : ''}`}
              >
                {horario}
              </button>
            );
          })}
        </div>

        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', borderTop: '1px solid #2e2e2e', paddingTop: '16px' }}>
          <span style={{ color: '#9ca3af', fontSize: '0.95rem' }}>
            {slotsSelecionados.length} selecionado(s)
          </span>
          <div style={{ display: 'flex', gap: '10px' }}>
            <button
              onClick={onClose}
              style={{ background: '#262626', border: '1px solid #333333', color: '#e5e7eb', padding: '10px 18px', borderRadius: '8px', cursor: 'pointer', fontWeight: '600' }}
            >
              Cancelar
            </button>
            <button
              disabled={salvando || slotsSelecionados.length === 0}
              onClick={handleConfirmar}
              style={{ background: '#dc2626', border: 'none', color: '#ffffff', padding: '10px 20px', borderRadius: '8px', cursor: 'pointer', fontWeight: 'bold' }}
            >
              {salvando ? 'Salvando...' : 'Confirmar Bloqueio'}
            </button>
          </div>
        </div>
      </div>
    </div>
  );
}
