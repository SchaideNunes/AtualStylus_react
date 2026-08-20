import React, { useState } from 'react';
import { api } from '../services/api';
import { Lock } from 'lucide-react';

export function Login({ onLoginSucesso }) {
  const [email, setEmail] = useState('');
  const [senha, setSenha] = useState('');
  const [erro, setErro] = useState('');
  const [carregando, setCarregando] = useState(false);

  const handleSubmit = async (e) => {
    e.preventDefault();
    setErro('');

    if (!email || !senha) {
      setErro('Por favor, informe e-mail e senha.');
      return;
    }

    try {
      setCarregando(true);
      const res = await api.login(email, senha);
      localStorage.setItem('token_admin_atualestilo', res.token);
      if (onLoginSucesso) {
        onLoginSucesso(res.user);
      }
    } catch (err) {
      setErro('Email ou senha incorretos.');
    } finally {
      setCarregando(false);
    }
  };

  return (
    <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'center', minHeight: '75vh', padding: '20px' }} className="fade-in">
      <div style={{
        background: '#111827',
        padding: '35px 30px',
        borderRadius: '16px',
        border: '1px solid #374151',
        width: '100%',
        maxWidth: '400px',
        boxShadow: '0 20px 40px rgba(0,0,0,0.8)'
      }}>
        <div style={{ textAlign: 'center', marginBottom: '25px' }}>
          <div style={{
            width: '60px',
            height: '60px',
            background: 'rgba(251, 191, 36, 0.15)',
            border: '1px solid rgba(251, 191, 36, 0.4)',
            borderRadius: '50%',
            display: 'flex',
            alignItems: 'center',
            justifyContent: 'center',
            margin: '0 auto 15px auto'
          }}>
            <Lock size={30} color="#fbbf24" />
          </div>
          <h2 style={{ fontSize: '1.6rem', fontWeight: 'bold', color: '#ffffff' }}>Acesso Restrito</h2>
          <p style={{ color: '#9ca3af', fontSize: '0.9rem', marginTop: '5px' }}>Painel Administrativo AtualEstilo</p>
        </div>

        <form onSubmit={handleSubmit} style={{ display: 'flex', flexDirection: 'column', gap: '16px' }}>
          <div>
            <label style={{ display: 'block', color: '#9ca3af', fontSize: '0.85rem', marginBottom: '6px', fontWeight: '600' }}>Email</label>
            <input 
              type="email" 
              value={email}
              onChange={(e) => setEmail(e.target.value)}
              placeholder="admin@atualestilo.com.br"
              className="input-campo"
              required
            />
          </div>

          <div>
            <label style={{ display: 'block', color: '#9ca3af', fontSize: '0.85rem', marginBottom: '6px', fontWeight: '600' }}>Senha</label>
            <input 
              type="password" 
              value={senha}
              onChange={(e) => setSenha(e.target.value)}
              placeholder="••••••••"
              className="input-campo"
              required
            />
          </div>

          {erro && (
            <div style={{
              background: 'rgba(127, 29, 29, 0.4)',
              border: '1px solid #ef4444',
              color: '#fca5a5',
              padding: '10px',
              borderRadius: '8px',
              fontSize: '0.9rem',
              textAlign: 'center'
            }}>
              {erro}
            </div>
          )}

          <button 
            type="submit"
            disabled={carregando}
            className="botao-confirmar"
            style={{ marginTop: '10px' }}
          >
            {carregando ? 'Verificando...' : 'Entrar no Painel'}
          </button>
        </form>
      </div>
    </div>
  );
}
