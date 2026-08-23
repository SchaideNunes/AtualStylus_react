import React, { useState } from 'react';
import { api } from '../services/api';
import { Lock, Mail, Eye, EyeOff, ArrowLeft, ShieldCheck, AlertCircle } from 'lucide-react';

export function Login({ onLoginSucesso, onVoltarHome }) {
  const [email, setEmail] = useState('');
  const [senha, setSenha] = useState('');
  const [mostrarSenha, setMostrarSenha] = useState(false);
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
      setErro('Email ou senha incorretos. Verifique suas credenciais.');
    } finally {
      setCarregando(false);
    }
  };

  return (
    <div className="container-login-revamp fade-in">
      <div className="cartao-login-limpo scale-in">
        {/* Ícone de Escudo / Cadeado com iluminação */}
        <div className="badge-icone-login">
          <Lock size={26} color="#ffffff" />
        </div>

        <h1 className="titulo-login-limpo">Acesso Restrito</h1>
        <p className="subtitulo-login-limpo">
          Painel Administrativo AtualEstilo Barbearia
        </p>

        <form onSubmit={handleSubmit} className="formulario-login-limpo">
          {/* Campo Email */}
          <div className="campo-caixa-limpo">
            <span className="rotulo-campo-limpo">E-MAIL DO ADMINISTRADOR</span>
            <div className="linha-input-limpo">
              <Mail size={18} className="icone-input-limpo" />
              <input 
                type="email" 
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                placeholder="seu-email@gmail.com"
                className="input-limpo"
                autoComplete="email"
                required
                aria-label="E-mail do administrador"
              />
            </div>
          </div>

          {/* Campo Senha */}
          <div className="campo-caixa-limpo">
            <span className="rotulo-campo-limpo">SENHA DE ACESSO</span>
            <div className="linha-input-limpo" style={{ position: 'relative' }}>
              <Lock size={18} className="icone-input-limpo" />
              <input 
                type={mostrarSenha ? 'text' : 'password'}
                value={senha}
                onChange={(e) => setSenha(e.target.value)}
                placeholder="••••••••"
                className="input-limpo"
                autoComplete="current-password"
                required
                aria-label="Senha de acesso"
              />
              <button 
                type="button" 
                onClick={() => setMostrarSenha(!mostrarSenha)}
                className="btn-toggle-senha"
                aria-label={mostrarSenha ? 'Ocultar senha' : 'Ver senha'}
              >
                {mostrarSenha ? <EyeOff size={18} /> : <Eye size={18} />}
              </button>
            </div>
          </div>

          {erro && (
            <div className="alerta-erro-login">
              <AlertCircle size={18} style={{ flexShrink: 0 }} />
              <span>{erro}</span>
            </div>
          )}

          <button 
            type="submit" 
            disabled={carregando}
            className={`botao-agendar-limpo ativo`}
            style={{ marginTop: '10px' }}
          >
            {carregando ? 'Autenticando...' : 'Entrar no Painel'}
          </button>
        </form>

        <div className="footer-login-link">
          <a 
            href="#inicio" 
            onClick={(e) => {
              e.preventDefault();
              if (onVoltarHome) onVoltarHome();
              else window.location.hash = '';
            }}
            className="link-voltar-home"
          >
            <ArrowLeft size={16} /> Voltar para o site
          </a>
        </div>
      </div>
    </div>
  );
}
