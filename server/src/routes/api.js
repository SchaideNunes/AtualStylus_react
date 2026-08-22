import { Router } from 'express';
import rateLimit from 'express-rate-limit';
import { getDatabase } from '../db/connection.js';
import { AgendamentoService } from '../services/agendamentoService.js';
import { AuthService } from '../services/authService.js';
import { authMiddleware } from '../middleware/auth.js';

export const apiRouter = Router();

function getServices() {
  const db = getDatabase();
  return {
    agendamentoService: new AgendamentoService(db),
    authService: new AuthService(db)
  };
}

// Rate Limiter para rotas públicas de agendamento e login
const agendamentoLimiter = rateLimit({
  windowMs: 15 * 60 * 1000,
  max: 60,
  message: { error: 'Muitas requisições. Por favor, tente novamente mais tarde.' }
});

const loginLimiter = rateLimit({
  windowMs: 15 * 60 * 1000,
  max: 10,
  message: { error: 'Muitas tentativas de login. Tente novamente em 15 minutos.' }
});

// ==========================================
// 1. ROTAS DE AUTENTICAÇÃO
// ==========================================
apiRouter.post('/auth/login', loginLimiter, async (req, res) => {
  try {
    const email = req.body.email;
    const password = req.body.password || req.body.senha;
    const { authService } = getServices();
    const result = await authService.login(email, password);
    return res.json(result);
  } catch (err) {
    return res.status(401).json({ error: err.message });
  }
});

apiRouter.get('/auth/me', authMiddleware, (req, res) => {
  return res.json({ user: req.user });
});

// ==========================================
// 2. ROTAS PÚBLICAS DO CLIENTE
// ==========================================

// Obter horários de atendimento dos barbeiros
apiRouter.get('/barbeiros', async (req, res) => {
  try {
    const { agendamentoService } = getServices();
    const barbeiros = await agendamentoService.obterTodosBarbeirosConfig();
    return res.json(barbeiros);
  } catch (err) {
    return res.status(500).json({ error: err.message });
  }
});

// Consultar horários livres para uma data e barbeiro
apiRouter.get('/horarios-disponiveis', async (req, res) => {
  try {
    const { data, barbeiroId } = req.query;
    if (!data || !barbeiroId) {
      return res.status(400).json({ error: 'Parâmetros data e barbeiroId são obrigatórios' });
    }
    const { agendamentoService } = getServices();
    const horarios = await agendamentoService.verificarHorariosDisponiveis(data, barbeiroId);
    return res.json(horarios);
  } catch (err) {
    return res.status(500).json({ error: err.message });
  }
});

// Criar agendamento pelo cliente
apiRouter.post('/agendamentos', agendamentoLimiter, async (req, res) => {
  try {
    const { agendamentoService } = getServices();
    const agendamento = await agendamentoService.criarAgendamento(req.body);
    return res.status(201).json(agendamento);
  } catch (err) {
    return res.status(400).json({ error: err.message });
  }
});

// Buscar agendamentos do cliente por telefone
apiRouter.get('/agendamentos/cliente', async (req, res) => {
  try {
    const { telefone } = req.query;
    if (!telefone) {
      return res.status(400).json({ error: 'Telefone é obrigatório' });
    }
    const { agendamentoService } = getServices();
    const lista = await agendamentoService.buscarPorTelefone(telefone);
    return res.json(lista);
  } catch (err) {
    return res.status(500).json({ error: err.message });
  }
});

// Cancelar agendamento pelo cliente
apiRouter.post('/agendamentos/:id/cancelar', async (req, res) => {
  try {
    const { id } = req.params;
    const { agendamentoService } = getServices();
    const ag = await agendamentoService.cancelarAgendamento(id);
    return res.json({ message: 'Agendamento cancelado com sucesso', agendamento: ag });
  } catch (err) {
    return res.status(400).json({ error: err.message });
  }
});

// ==========================================
// 3. ROTAS ADMINISTRATIVAS PROTEGIDAS
// ==========================================

// Listar agendamentos com filtros (Admin)
apiRouter.get('/admin/agendamentos', authMiddleware, async (req, res) => {
  try {
    const { dataLimite, busca, data, barbeiroId } = req.query;
    const { agendamentoService } = getServices();
    const agendamentos = await agendamentoService.listarAdmin({
      dataLimite,
      busca,
      data,
      barbeiroId
    });
    return res.json(agendamentos);
  } catch (err) {
    return res.status(500).json({ error: err.message });
  }
});

// Criar agendamento avulso ou recorrente (Admin)
apiRouter.post('/admin/agendamentos', authMiddleware, async (req, res) => {
  try {
    const { agendamentoService } = getServices();
    const isRecorrente = Boolean(req.body.recorrente === true || req.body.recorrente === 'true' || req.body.isRecorrente);

    if (isRecorrente) {
      const criados = await agendamentoService.criarClienteRecorrente({
        ...req.body,
        data_inicial: req.body.data_agendamento || req.body.data_inicial
      });
      return res.status(201).json(criados);
    } else {
      const ag = await agendamentoService.criarAgendamento(req.body);
      return res.status(201).json(ag);
    }
  } catch (err) {
    return res.status(400).json({ error: err.message });
  }
});

// Listar clientes fixos com seus dias ocupados (Admin)
apiRouter.get('/admin/clientes-fixos', authMiddleware, async (req, res) => {
  try {
    const { agendamentoService } = getServices();
    const fixos = await agendamentoService.listarClientesFixos();
    return res.json(fixos);
  } catch (err) {
    return res.status(500).json({ error: err.message });
  }
});

// Excluir lote de agendamentos de cliente fixo (Admin)
apiRouter.post('/admin/clientes-fixos/deletar-lote', authMiddleware, async (req, res) => {
  try {
    const { ids } = req.body;
    const { agendamentoService } = getServices();
    const count = await agendamentoService.deletarLoteAgendamentos(ids);
    return res.json({ message: `${count} agendamentos removidos com sucesso` });
  } catch (err) {
    return res.status(400).json({ error: err.message });
  }
});

// Criar bloqueio em lote (Admin)
apiRouter.post('/admin/bloqueios/lote', authMiddleware, async (req, res) => {
  try {
    const { agendamentoService } = getServices();
    const resultado = await agendamentoService.criarBloqueioEmLote(req.body);
    return res.status(201).json(resultado);
  } catch (err) {
    return res.status(400).json({ error: err.message });
  }
});

// Marcar como concluído (Admin)
apiRouter.put('/admin/agendamentos/:id/concluir', authMiddleware, async (req, res) => {
  try {
    const { id } = req.params;
    const { agendamentoService } = getServices();
    const ag = await agendamentoService.concluirAgendamento(id);
    return res.json(ag);
  } catch (err) {
    return res.status(400).json({ error: err.message });
  }
});

// Deletar agendamento (Admin)
apiRouter.delete('/admin/agendamentos/:id', authMiddleware, async (req, res) => {
  try {
    const { id } = req.params;
    const { agendamentoService } = getServices();
    const ag = await agendamentoService.deletarAgendamento(id);
    return res.json({ message: 'Agendamento removido', agendamento: ag });
  } catch (err) {
    return res.status(400).json({ error: err.message });
  }
});

// Obter/Salvar horários de trabalho do barbeiro (Admin Config)
apiRouter.get('/admin/config/barbeiro/:id', authMiddleware, async (req, res) => {
  try {
    const { id } = req.params;
    const { agendamentoService } = getServices();
    const config = await agendamentoService.obterConfigHorarios(id);
    return res.json(config);
  } catch (err) {
    return res.status(500).json({ error: err.message });
  }
});

apiRouter.put('/admin/config/barbeiro/:id', authMiddleware, async (req, res) => {
  try {
    const { id } = req.params;
    const { horarios } = req.body;
    const { agendamentoService } = getServices();
    await agendamentoService.salvarConfigHorarios(id, horarios);
    return res.json({ message: 'Horários atualizados com sucesso' });
  } catch (err) {
    return res.status(400).json({ error: err.message });
  }
});

