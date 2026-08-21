import React, { useState, useEffect } from 'react';
import { createPortal } from 'react-dom';
import { X, ShieldAlert, Check } from 'lucide-react';
import { formatarDataBR, filtrarHorariosPassadosSeHoje, getDataHojeString } from '../utils/dateUtils';

export function ModalBloqueio({ isOpen, onClose, data, barbeiroId, barbeiroNome, horariosBarbeiro = [], horariosOcupados = [], onConfirmar }) {
  const [slotsSelecionados, setSlotsSelecionados] = useState([]);
  const [salvando, setSalvando] = useState(false);

  useEffect(() => {
    if (isOpen) {
      setSlotsSelecionados([]);
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

  const modalJSX = (
    <div className="modal-overlay" onClick={onClose}>
      <div className="modal-card scale-in" onClick={e => e.stopPropagation()} style={{ borderRadius: '24px', background: '#141414', border: '1px solid #2e2e2e' }}>
        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '16px', borderBottom: '1px solid #242424', paddingBottom: '14px' }}>
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

        <p style={{ color: '#d1d5db', fontSize: '0.92rem', marginBottom: '18px' }}>
          Selecione os horários livres de <strong>{barbeiroNome}</strong> para <strong>{formatarDataBR(data)}</strong> que deseja bloquear:
        </p>

        <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fill, minmax(85px, 1fr))', gap: '10px', maxHeight: '280px', overflowY: 'auto', padding: '4px', marginBottom: '22px' }}>
          {horariosFiltrados.map(horario => {
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
          })}
        </div>

        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', flexWrap: 'wrap', gap: '12px', borderTop: '1px solid #242424', paddingTop: '16px' }}>
          <span style={{ color: '#9ca3af', fontSize: '0.9rem', fontWeight: '700' }}>
            {slotsSelecionados.length} horário(s) selecionado(s)
          </span>
          <div style={{ display: 'flex', gap: '10px' }}>
            <button
              onClick={onClose}
              style={{ background: '#202020', border: '1px solid #383838', color: '#e5e7eb', padding: '10px 18px', borderRadius: '12px', cursor: 'pointer', fontWeight: '700', fontSize: '0.88rem' }}
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
                padding: '10px 22px', 
                borderRadius: '12px', 
                cursor: slotsSelecionados.length === 0 ? 'not-allowed' : 'pointer', 
                fontWeight: '800',
                fontSize: '0.88rem',
                display: 'inline-flex',
                alignItems: 'center',
                gap: '6px',
                transition: 'all 0.2s ease'
              }}
            >
              <Check size={16} /> {salvando ? 'Salvando...' : 'Confirmar Bloqueio'}
            </button>
          </div>
        </div>
      </div>
    </div>
  );

  return typeof document !== 'undefined' ? createPortal(modalJSX, document.body) : null;
}
