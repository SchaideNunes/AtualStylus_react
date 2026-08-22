import React, { useState, useEffect } from 'react';
import { Navbar } from './components/Navbar';
import { Footer } from './components/Footer';
import { Home } from './pages/Home';
import { Agendamento } from './pages/Agendamento';
import { MeusAgendamentos } from './pages/MeusAgendamentos';
import { Sobre } from './pages/Sobre';
import { Produtos } from './pages/Produtos';
import { Login } from './pages/Login';
import { Admin } from './pages/Admin';
import { api } from './services/api';
import './styles/index.css';

export function App() {
  const [paginaAtiva, setPaginaAtiva] = useState('inicio');
  const [servicoPreSelecionado, setServicoPreSelecionado] = useState('');
  const [usuarioAdmin, setUsuarioAdmin] = useState(null);

  // Lê rota da URL tanto por Pathname (/admin) quanto por Hash (#admin)
  useEffect(() => {
    const handleRoute = () => {
      const pathname = window.location.pathname.replace(/^\/+|\/+$/g, '').toLowerCase();
      const hash = window.location.hash.replace('#', '').toLowerCase();
      const rota = pathname || hash;

      if (rota === 'meusagendamentos' || rota === 'meus-agendamentos') {
        setPaginaAtiva('meusAgendamentos');
      } else if (rota === 'agendamento' || rota === 'agendar') {
        setPaginaAtiva('agendamento');
      } else if (rota === 'produtos' || rota === 'loja' || rota === 'vitrine') {
        setPaginaAtiva('produtos');
      } else if (rota === 'sobre' || rota === 'sobre-nos') {
        setPaginaAtiva('sobre');
      } else if (rota === 'admin') {
        const token = localStorage.getItem('token_admin_atualestilo');
        if (token) setPaginaAtiva('admin');
        else setPaginaAtiva('login');
      } else if (rota === 'login') {
        setPaginaAtiva('login');
      } else if (rota === 'inicio' || rota === 'home' || rota === '') {
        setPaginaAtiva('inicio');
      }
      window.scrollTo(0, 0);
    };

    handleRoute();
    window.addEventListener('hashchange', handleRoute);
    window.addEventListener('popstate', handleRoute);
    return () => {
      window.removeEventListener('hashchange', handleRoute);
      window.removeEventListener('popstate', handleRoute);
    };
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
      case 'produtos':
        return <Produtos />;
      case 'meusAgendamentos':
        return <MeusAgendamentos />;
      case 'sobre':
        return <Sobre onNavegar={handleNavegar} />;
      case 'login':
        return <Login onLoginSucesso={handleLoginSucesso} onVoltarHome={() => handleNavegar('inicio')} />;
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
