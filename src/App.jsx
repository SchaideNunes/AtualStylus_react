import React, { useState, useEffect } from 'react';
import { Navbar } from './components/Navbar';
import { Footer } from './components/Footer';
import { Home } from './pages/Home';
import { Agendamento } from './pages/Agendamento';
import { MeusAgendamentos } from './pages/MeusAgendamentos';
import { Sobre } from './pages/Sobre';
import { Login } from './pages/Login';
import { Admin } from './pages/Admin';
import { api } from './services/api';
import './styles/index.css';

export function App() {
  const [paginaAtiva, setPaginaAtiva] = useState('inicio');
  const [servicoPreSelecionado, setServicoPreSelecionado] = useState('');
  const [usuarioAdmin, setUsuarioAdmin] = useState(null);

  // Lê hash inicial da URL (ex: #agendamento, #agendar, #sobre, #meusAgendamentos, #admin, #login)
  useEffect(() => {
    const handleHash = () => {
      const hash = window.location.hash.replace('#', '').toLowerCase();
      if (hash === 'meusagendamentos' || hash === 'meus-agendamentos') {
        setPaginaAtiva('meusAgendamentos');
      } else if (hash === 'agendamento' || hash === 'agendar') {
        setPaginaAtiva('agendamento');
      } else if (hash === 'sobre' || hash === 'sobre-nos') {
        setPaginaAtiva('sobre');
      } else if (hash === 'admin') {
        const token = localStorage.getItem('token_admin_atualestilo');
        if (token) setPaginaAtiva('admin');
        else setPaginaAtiva('login');
      } else if (hash === 'login') {
        setPaginaAtiva('login');
      } else if (hash === 'inicio' || hash === 'home' || hash === '') {
        setPaginaAtiva('inicio');
      }
      window.scrollTo(0, 0);
    };

    handleHash();
    window.addEventListener('hashchange', handleHash);
    return () => window.removeEventListener('hashchange', handleHash);
  }, []);

  const handleNavegar = (pagina) => {
    setPaginaAtiva(pagina);
    window.location.hash = pagina === 'inicio' ? '' : pagina;
    window.scrollTo({ top: 0, behavior: 'instant' });
  };

  const handleSelecionarServico = (servicoStr) => {
    setServicoPreSelecionado(servicoStr);
  };

  const handleLoginSucesso = (user) => {
    setUsuarioAdmin(user);
    setPaginaAtiva('admin');
    window.location.hash = 'admin';
  };

  const handleLogout = () => {
    api.logout();
    setUsuarioAdmin(null);
    setPaginaAtiva('login');
    window.location.hash = 'login';
  };

  const renderPagina = () => {
    switch (paginaAtiva) {
      case 'inicio':
        return <Home onNavegar={handleNavegar} onSelecionarServico={handleSelecionarServico} />;
      case 'agendamento':
        return <Agendamento servicoPreSelecionado={servicoPreSelecionado} onAgendamentoConcluido={() => handleNavegar('meusAgendamentos')} />;
      case 'meusAgendamentos':
        return <MeusAgendamentos />;
      case 'sobre':
        return <Sobre />;
      case 'login':
        return <Login onLoginSucesso={handleLoginSucesso} />;
      case 'admin':
        return <Admin onLogout={handleLogout} />;
      default:
        return <Home onNavegar={handleNavegar} onSelecionarServico={handleSelecionarServico} />;
    }
  };

  const isPainelAdmin = paginaAtiva === 'admin' || paginaAtiva === 'login';

  return (
    <div className="app-container">
      <Navbar paginaAtiva={paginaAtiva} onNavegar={handleNavegar} />
      
      <main className="conteudo-principal">
        {renderPagina()}
      </main>

      {!isPainelAdmin && <Footer onNavegar={handleNavegar} />}
    </div>
  );
}

export default App;
