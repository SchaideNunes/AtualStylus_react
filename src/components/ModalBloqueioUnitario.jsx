import React, { useState, useEffect } from 'react';
import { createPortal } from 'react-dom';
import { X, Lock, Calendar, Clock, Scissors, Check, AlertCircle } from 'lucide-react';
import { api } from '../services/api';
import { getDataHojeString, isDomingo } from '../utils/dateUtils';

export function ModalBloqueioUnitario({ isOpen, onClose, onConfirmar }) {
  const [data, setData] = useState(getDataHojeString());
  const [barbeiroId, setBarbeiroId] = useState('1');
  const [horario, setHorario] = useState('');
  const [motivo, setMotivo] = useState('BLOQUEIO');

  const [horariosLivres, setHorariosLivres] = useState([]);
  const [carregandoHorarios, setCarregandoHorarios] = useState(false);
  const [salvando, setSalvando] = useState(false);
  const [erro, setErro] = useState('');

  useEffect(() => {
    if (isOpen) {
      document.body.classList.add('modal-aberto');
      document.documentElement.classList.add('modal-aberto');
      document.body.style.overflow = 'hidden';
      document.documentElement.style.overflow = 'hidden';
      setErro('');
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

  // Carregar slots livres dinamicamente
  useEffect(() => {
    async function carregarSlots() {
      if (!isOpen || !data || !barbeiroId) {
        setHorariosLivres([]);
        return;
      }

      if (isDomingo(data)) {
        setErro('A barbearia não funciona aos domingos.');
        setHorariosLivres([]);
        return;
      }
      setErro('');

      try {
        setCarregandoHorarios(true);
        const slots = await api.getHorariosDisponiveis(data, barbeiroId);
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

    carregarSlots();
  }, [isOpen, data, barbeiroId]);

  if (!isOpen) return null;

  const handleSubmit = async (e) => {
    e.preventDefault();
    setErro('');

    if (!data) {
      setErro('Por favor, selecione a data.');
      return;
    }
    if (!horario) {
      setErro('Por favor, selecione o horário a ser bloqueado.');
      return;
    }

    const barbeiroNome = barbeiroId === '1' ? 'Geilson' : 'Denilson';

    try {
      setSalvando(true);
      await onConfirmar({
        nome: motivo.trim() || 'BLOQUEIO',
        telefone: '',
        servico: 'BLOQUEIO ADMIN',
        valor: 0,
        barbeiro_id: parseInt(barbeiroId),
        barbeiro_nome: barbeiroNome,
        data_agendamento: data,
        horario,
        status: 'bloqueado',
        recorrente: false
      });
      onClose();
    } catch (err) {
      setErro('Erro ao bloquear horário: ' + err.message);
    } finally {
      setSalvando(false);
    }
  };

  const modalJSX = (
    <div className="modal-overlay" onClick={onClose}>
      <div 
        className="modal-card scale-in" 
        onClick={e => e.stopPropagation()} 
        style={{ borderRadius: '24px', background: '#141414', border: '1px solid #2e2e2e', maxWidth: '520px' }}
      >
        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '18px', borderBottom: '1px solid #242424', paddingBottom: '14px' }}>
          <h3 style={{ color: '#ffffff', fontSize: '1.25rem', fontWeight: '800', display: 'flex', alignItems: 'center', gap: '8px', margin: 0, textTransform: 'uppercase' }}>
            <Lock color="#ef4444" size={22} /> Bloqueio Unitário
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

        <form onSubmit={handleSubmit} style={{ display: 'flex', flexDirection: 'column', gap: '14px' }}>
          {/* Profissional e Data */}
          <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(180px, 1fr))', gap: '12px' }}>
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
                  required
                />
              </div>
            </div>
          </div>

          {/* Horário e Motivo */}
          <div className="campo-caixa-limpo">
            <span className="rotulo-campo-limpo">
              {carregandoHorarios ? 'CARREGANDO HORÁRIOS...' : 'HORÁRIO A BLOQUEAR'}
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
                  <option value="">Sem horários disponíveis para este dia</option>
                ) : (
                  horariosLivres.map(h => (
                    <option key={h} value={h}>{h}</option>
                  ))
                )}
              </select>
            </div>
          </div>

          <div className="campo-caixa-limpo">
            <span className="rotulo-campo-limpo">MOTIVO / DESCRIÇÃO</span>
            <div className="linha-input-limpo">
              <Lock size={18} className="icone-input-limpo" />
              <input 
                type="text" 
                placeholder="Ex: BLOQUEIO, Almoço, Folga..."
                value={motivo}
                onChange={(e) => setMotivo(e.target.value)}
                className="input-limpo"
              />
            </div>
          </div>

          <div style={{ display: 'flex', justifyContent: 'flex-end', gap: '10px', borderTop: '1px solid #242424', paddingTop: '16px', marginTop: '6px' }}>
            <button
              type="button"
              onClick={onClose}
              style={{ background: '#202020', border: '1px solid #383838', color: '#e5e7eb', padding: '12px 20px', borderRadius: '12px', cursor: 'pointer', fontWeight: '700', fontSize: '0.9rem' }}
            >
              Cancelar
            </button>
            <button
              type="submit"
              disabled={salvando || !horario}
              style={{ 
                background: '#ef4444', 
                border: 'none', 
                color: '#ffffff', 
                padding: '12px 24px', 
                borderRadius: '12px', 
                cursor: (salvando || !horario) ? 'not-allowed' : 'pointer', 
                fontWeight: '800',
                fontSize: '0.9rem',
                display: 'inline-flex',
                alignItems: 'center',
                gap: '8px',
                transition: 'all 0.2s ease'
              }}
            >
              <Check size={18} /> {salvando ? 'Bloqueando...' : 'Confirmar Bloqueio'}
            </button>
          </div>
        </form>
      </div>
    </div>
  );

  return typeof document !== 'undefined' ? createPortal(modalJSX, document.body) : null;
}
