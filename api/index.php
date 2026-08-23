<?php
/**
 * ATUALESTILO BARBEARIA - API REST PHP (HOSTINGER COMPARTILHADA)
 */
require_once __DIR__ . '/config.php';
require_once __DIR__ . '/db.php';
require_once __DIR__ . '/jwt.php';

// Headers de CORS e Segurança
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type, Authorization, X-Requested-With');
header('X-Content-Type-Options: nosniff');
header('X-Frame-Options: SAMEORIGIN');
header('X-XSS-Protection: 1; mode=block');

if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    http_response_code(200);
    exit;
}

// Obter método HTTP e rota
$method = $_SERVER['REQUEST_METHOD'];
$uri = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);

// Normalizar rota removendo prefixos se existirem (ex: /api ou /public_html/api ou /api/index.php)
$rota = preg_replace('#^.*?/api(?:/index\.php)?/?#i', '', $uri);
$rota = trim($rota, '/');

if (empty($rota) || $rota === 'status' || $rota === 'health') {
    echo json_encode([
        'status' => 'online',
        'service' => 'AtualEstilo Barbearia API',
        'version' => '2.0.0',
        'timestamp' => date('Y-m-d H:i:s')
    ], JSON_UNESCAPED_UNICODE);
    exit;
}

$input = json_decode(file_get_contents('php://input'), true) ?: [];
$db = getDbConnection();

// Auto-conclusão de agendamentos passados
try {
    $hojeStr = date('Y-m-d');
    $db->prepare("UPDATE agendamentos SET status = 'concluido' WHERE status = 'confirmado' AND nome != 'BLOQUEIO' AND data_agendamento < ?")->execute([$hojeStr]);
} catch (Exception $e) {}

// ==========================================
// 1. AUTENTICAÇÃO
// ==========================================

// POST /api/auth/login
if ($method === 'POST' && $rota === 'auth/login') {
    $email = isset($input['email']) ? trim(strtolower($input['email'])) : '';
    $password = isset($input['password']) ? $input['password'] : (isset($input['senha']) ? $input['senha'] : '');

    if (empty($email) || empty($password)) {
        http_response_code(400);
        echo json_encode(['error' => 'Email e senha são obrigatórios.'], JSON_UNESCAPED_UNICODE);
        exit;
    }

    $stmt = $db->prepare('SELECT * FROM admin_users WHERE email = ? LIMIT 1');
    $stmt->execute([$email]);
    $user = $stmt->fetch();

    if (!$user || !password_verify($password, $user['password_hash'])) {
        http_response_code(401);
        echo json_encode(['error' => 'E-mail ou senha incorretos.'], JSON_UNESCAPED_UNICODE);
        exit;
    }

    $token = gerarJwt([
        'id' => $user['id'],
        'nome' => $user['nome'],
        'email' => $user['email']
    ]);

    echo json_encode([
        'token' => $token,
        'user' => [
            'id' => $user['id'],
            'nome' => $user['nome'],
            'email' => $user['email']
        ]
    ], JSON_UNESCAPED_UNICODE);
    exit;
}

// GET /api/auth/me
if ($method === 'GET' && $rota === 'auth/me') {
    $user = exigirAuthAdmin();
    echo json_encode(['user' => $user], JSON_UNESCAPED_UNICODE);
    exit;
}

// ==========================================
// 2. ROTAS PÚBLICAS DO CLIENTE
// ==========================================

// GET /api/barbeiros
if ($method === 'GET' && $rota === 'barbeiros') {
    $stmt = $db->query('SELECT * FROM barbeiros_config ORDER BY id ASC');
    $barbeiros = $stmt->fetchAll();
    foreach ($barbeiros as &$b) {
        $b['horarios'] = is_string($b['horarios']) ? json_decode($b['horarios'], true) : $b['horarios'];
    }
    echo json_encode($barbeiros, JSON_UNESCAPED_UNICODE);
    exit;
}

// GET /api/horarios-disponiveis?data=YYYY-MM-DD&barbeiroId=1
if ($method === 'GET' && $rota === 'horarios-disponiveis') {
    $data = isset($_GET['data']) ? trim($_GET['data']) : '';
    $barbeiroId = isset($_GET['barbeiroId']) ? (int)$_GET['barbeiroId'] : 0;

    if (empty($data) || !$barbeiroId) {
        http_response_code(400);
        echo json_encode(['error' => 'Data e Barbeiro são obrigatórios.'], JSON_UNESCAPED_UNICODE);
        exit;
    }

    // Domingo fechado
    $diaSemana = (int)date('w', strtotime($data));
    if ($diaSemana === 0) {
        echo json_encode([], JSON_UNESCAPED_UNICODE);
        exit;
    }

    // Config do barbeiro
    $stmt = $db->prepare('SELECT horarios FROM barbeiros_config WHERE id = ?');
    $stmt->execute([$barbeiroId]);
    $cfg = $stmt->fetch();
    if (!$cfg) {
        http_response_code(404);
        echo json_encode(['error' => 'Barbeiro não encontrado.'], JSON_UNESCAPED_UNICODE);
        exit;
    }

    $horariosBase = is_string($cfg['horarios']) ? json_decode($cfg['horarios'], true) : ($cfg['horarios'] ?: []);

    // Agendamentos ocupados (não cancelados)
    $stmtAg = $db->prepare("SELECT horario FROM agendamentos WHERE data_agendamento = ? AND barbeiro_id = ? AND status != 'cancelado'");
    $stmtAg->execute([$data, $barbeiroId]);
    $ocupados = array_column($stmtAg->fetchAll(), 'horario');

    $disponiveis = array_values(array_diff($horariosBase, $ocupados));

    // Se for hoje, filtrar horários já passados
    $hojeStr = date('Y-m-d');
    if ($data === $hojeStr) {
        $horaAtual = date('H:i');
        $disponiveis = array_values(array_filter($disponiveis, function($h) use ($horaAtual) {
            return $h > $horaAtual;
        }));
    }

    echo json_encode($disponiveis, JSON_UNESCAPED_UNICODE);
    exit;
}

// POST /api/agendamentos (Criar agendamento do cliente)
if ($method === 'POST' && $rota === 'agendamentos') {
    $nome = isset($input['nome']) ? trim(strip_tags($input['nome'])) : '';
    $telefone = isset($input['telefone']) ? trim(strip_tags($input['telefone'])) : '';
    $servico = isset($input['servico']) ? trim(strip_tags($input['servico'])) : '';
    $barbeiroId = isset($input['barbeiroId']) ? (int)$input['barbeiroId'] : (isset($input['barbeiro_id']) ? (int)$input['barbeiro_id'] : 0);
    $dataAgendamento = isset($input['data']) ? trim($input['data']) : (isset($input['data_agendamento']) ? trim($input['data_agendamento']) : '');
    $horario = isset($input['horario']) ? trim($input['horario']) : '';

    if (empty($nome) || empty($telefone) || empty($servico) || !$barbeiroId || empty($dataAgendamento) || empty($horario)) {
        http_response_code(400);
        echo json_encode(['error' => 'Todos os campos são obrigatórios.'], JSON_UNESCAPED_UNICODE);
        exit;
    }

    if (strlen($telefone) !== 15) {
        http_response_code(400);
        echo json_encode(['error' => 'Telefone WhatsApp inválido. Formato esperado: (XX) XXXXX-XXXX'], JSON_UNESCAPED_UNICODE);
        exit;
    }

    // Extrair valor do serviço
    $valor = 0.00;
    if (preg_match('/R\$\s*(\d+(?:[.,]\d{2})?)/i', $servico, $m)) {
        $valor = (float)str_replace(',', '.', $m[1]);
    }

    $barbeiroNome = $barbeiroId === 1 ? 'Geilson' : 'Denilson';

    // Validação atômica de concorrência
    $stmtCheck = $db->prepare("SELECT id FROM agendamentos WHERE data_agendamento = ? AND horario = ? AND barbeiro_id = ? AND status != 'cancelado' LIMIT 1");
    $stmtCheck->execute([$dataAgendamento, $horario, $barbeiroId]);
    if ($stmtCheck->fetch()) {
        http_response_code(409);
        echo json_encode(['error' => 'Este horário acabou de ser preenchido por outro cliente. Por favor, escolha outro.'], JSON_UNESCAPED_UNICODE);
        exit;
    }

    $stmtInsert = $db->prepare("INSERT INTO agendamentos (nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status) VALUES (?, ?, ?, ?, ?, ?, ?, ?, 'confirmado')");
    $stmtInsert->execute([$nome, $telefone, $servico, $valor, $barbeiroId, $barbeiroNome, $dataAgendamento, $horario]);

    $id = $db->lastInsertId();
    $stmtNovo = $db->prepare('SELECT * FROM agendamentos WHERE id = ?');
    $stmtNovo->execute([$id]);

    http_response_code(201);
    echo json_encode($stmtNovo->fetch(), JSON_UNESCAPED_UNICODE);
    exit;
}

// GET /api/meus-agendamentos?telefone=(XX) XXXXX-XXXX
if ($method === 'GET' && $rota === 'meus-agendamentos') {
    $telefone = isset($_GET['telefone']) ? trim($_GET['telefone']) : '';
    if (empty($telefone)) {
        http_response_code(400);
        echo json_encode(['error' => 'Telefone é obrigatório.'], JSON_UNESCAPED_UNICODE);
        exit;
    }

    $hojeStr = date('Y-m-d');
    $stmt = $db->prepare("SELECT * FROM agendamentos WHERE telefone = ? AND status = 'confirmado' AND data_agendamento >= ? ORDER BY data_agendamento ASC, horario ASC");
    $stmt->execute([$telefone, $hojeStr]);

    echo json_encode($stmt->fetchAll(), JSON_UNESCAPED_UNICODE);
    exit;
}

// POST /api/agendamentos/{id}/cancelar (Cancelamento pelo cliente)
if ($method === 'POST' && preg_match('#^agendamentos/(\d+)/cancelar$#', $rota, $m)) {
    $id = (int)$m[1];
    $stmt = $db->prepare("UPDATE agendamentos SET status = 'cancelado' WHERE id = ?");
    $stmt->execute([$id]);

    $stmtAg = $db->prepare('SELECT * FROM agendamentos WHERE id = ?');
    $stmtAg->execute([$id]);

    echo json_encode($stmtAg->fetch(), JSON_UNESCAPED_UNICODE);
    exit;
}

// ==========================================
// 3. PAINEL ADMINISTRATIVO (PROTEGIDO)
// ==========================================

// GET /api/admin/agendamentos
if ($method === 'GET' && $rota === 'admin/agendamentos') {
    exigirAuthAdmin();

    $sql = "SELECT * FROM agendamentos WHERE 1=1";
    $params = [];

    if (!empty($_GET['dataLimite'])) {
        $sql .= " AND data_agendamento >= ?";
        $params[] = $_GET['dataLimite'];
    }
    if (!empty($_GET['data'])) {
        $sql .= " AND data_agendamento = ?";
        $params[] = $_GET['data'];
    }
    if (!empty($_GET['barbeiroId'])) {
        $sql .= " AND barbeiro_id = ?";
        $params[] = (int)$_GET['barbeiroId'];
    }
    if (!empty($_GET['busca'])) {
        $sql .= " AND (LOWER(nome) LIKE ? OR telefone LIKE ?)";
        $params[] = '%' . strtolower($_GET['busca']) . '%';
        $params[] = '%' . $_GET['busca'] . '%';
    }

    $sql .= " ORDER BY data_agendamento ASC, horario ASC LIMIT 5000";
    $stmt = $db->prepare($sql);
    $stmt->execute($params);

    echo json_encode($stmt->fetchAll(), JSON_UNESCAPED_UNICODE);
    exit;
}

// POST /api/admin/agendamentos (Criar agendamento manual ou cliente fixo)
if ($method === 'POST' && $rota === 'admin/agendamentos') {
    exigirAuthAdmin();

    $nome = isset($input['nome']) ? trim(strip_tags($input['nome'])) : '';
    $telefone = isset($input['telefone']) ? trim(strip_tags($input['telefone'])) : 'Sem telefone';
    $servico = isset($input['servico']) ? trim(strip_tags($input['servico'])) : 'Corte Social';
    $barbeiroId = isset($input['barbeiroId']) ? (int)$input['barbeiroId'] : (isset($input['barbeiro_id']) ? (int)$input['barbeiro_id'] : 1);
    $dataAgendamento = isset($input['data']) ? trim($input['data']) : (isset($input['data_agendamento']) ? trim($input['data_agendamento']) : '');
    $horario = isset($input['horario']) ? trim($input['horario']) : '';
    $isFixo = isset($input['isFixo']) ? (bool)$input['isFixo'] : (isset($input['recorrente']) ? (bool)$input['recorrente'] : false);
    $status = isset($input['status']) && in_array($input['status'], ['confirmado', 'bloqueado', 'concluido', 'cancelado']) ? $input['status'] : 'confirmado';

    if (empty($nome) || !$barbeiroId || empty($dataAgendamento) || empty($horario)) {
        http_response_code(400);
        echo json_encode(['error' => 'Nome, barbeiro, data e horário são obrigatórios.'], JSON_UNESCAPED_UNICODE);
        exit;
    }

    $valor = 0.00;
    if (preg_match('/R\$\s*(\d+(?:[.,]\d{2})?)/i', $servico, $m)) {
        $valor = (float)str_replace(',', '.', $m[1]);
    }

    $barbeiroNome = $barbeiroId === 1 ? 'Geilson' : 'Denilson';

    // Se for cliente fixo, agendar para as próximas 52 semanas
    if ($isFixo) {
        $stmtInsert = $db->prepare("INSERT INTO agendamentos (nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
        $stmtCheck = $db->prepare("SELECT id FROM agendamentos WHERE data_agendamento = ? AND horario = ? AND barbeiro_id = ? AND status != 'cancelado'");
        
        $criados = 0;
        $dataRef = new DateTime($dataAgendamento);
        for ($i = 0; $i < 52; $i++) {
            $dataAtualStr = $dataRef->format('Y-m-d');
            $stmtCheck->execute([$dataAtualStr, $horario, $barbeiroId]);
            if (!$stmtCheck->fetch()) {
                $stmtInsert->execute([$nome, $telefone, $servico, $valor, $barbeiroId, $barbeiroNome, $dataAtualStr, $horario, $status]);
                $criados++;
            }
            $dataRef->modify('+7 days');
        }

        echo json_encode(['message' => "Cliente fixo agendado com sucesso ($criados datas criadas)."], JSON_UNESCAPED_UNICODE);
        exit;
    }

    // Agendamento unitário
    $stmtCheck = $db->prepare("SELECT id FROM agendamentos WHERE data_agendamento = ? AND horario = ? AND barbeiro_id = ? AND status != 'cancelado' LIMIT 1");
    $stmtCheck->execute([$dataAgendamento, $horario, $barbeiroId]);
    if ($stmtCheck->fetch()) {
        http_response_code(409);
        echo json_encode(['error' => 'Este horário já está ocupado.'], JSON_UNESCAPED_UNICODE);
        exit;
    }

    $stmtInsert = $db->prepare("INSERT INTO agendamentos (nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
    $stmtInsert->execute([$nome, $telefone, $servico, $valor, $barbeiroId, $barbeiroNome, $dataAgendamento, $horario, $status]);

    $id = $db->lastInsertId();
    $stmtNovo = $db->prepare('SELECT * FROM agendamentos WHERE id = ?');
    $stmtNovo->execute([$id]);

    http_response_code(201);
    echo json_encode($stmtNovo->fetch(), JSON_UNESCAPED_UNICODE);
    exit;
}

// POST /api/admin/bloqueios/lote
if ($method === 'POST' && $rota === 'admin/bloqueios/lote') {
    exigirAuthAdmin();

    $barbeiroId = isset($input['barbeiroId']) ? (int)$input['barbeiroId'] : (isset($input['barbeiro_id']) ? (int)$input['barbeiro_id'] : 0);
    $data = isset($input['data']) ? trim($input['data']) : (isset($input['data_agendamento']) ? trim($input['data_agendamento']) : (isset($input['dataAgendamento']) ? trim($input['dataAgendamento']) : ''));
    $horarios = isset($input['horarios']) && is_array($input['horarios']) ? $input['horarios'] : [];

    if (!$barbeiroId || empty($data) || empty($horarios)) {
        http_response_code(400);
        echo json_encode(['error' => 'Barbeiro, data e lista de horários são obrigatórios.'], JSON_UNESCAPED_UNICODE);
        exit;
    }

    $barbeiroNome = $barbeiroId === 1 ? 'Geilson' : 'Denilson';
    $stmtInsert = $db->prepare("INSERT INTO agendamentos (nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status) VALUES ('BLOQUEIO', 'Sem telefone', 'Horário Bloqueado', 0.00, ?, ?, ?, ?, 'bloqueado')");

    $inseridos = 0;
    foreach ($horarios as $h) {
        $stmtInsert->execute([$barbeiroId, $barbeiroNome, $data, $h]);
        $inseridos++;
    }

    echo json_encode(['message' => "$inseridos horários bloqueados com sucesso."], JSON_UNESCAPED_UNICODE);
    exit;
}

// PUT /api/admin/agendamentos/{id}/concluir
if ($method === 'PUT' && preg_match('#^admin/agendamentos/(\d+)/concluir$#', $rota, $m)) {
    exigirAuthAdmin();
    $id = (int)$m[1];

    $stmt = $db->prepare("UPDATE agendamentos SET status = 'concluido' WHERE id = ?");
    $stmt->execute([$id]);

    $stmtAg = $db->prepare('SELECT * FROM agendamentos WHERE id = ?');
    $stmtAg->execute([$id]);

    echo json_encode($stmtAg->fetch(), JSON_UNESCAPED_UNICODE);
    exit;
}

// DELETE /api/admin/agendamentos/{id}
if ($method === 'DELETE' && preg_match('#^admin/agendamentos/(\d+)$#', $rota, $m)) {
    exigirAuthAdmin();
    $id = (int)$m[1];

    $stmtAg = $db->prepare('SELECT * FROM agendamentos WHERE id = ?');
    $stmtAg->execute([$id]);
    $item = $stmtAg->fetch();

    $stmt = $db->prepare('DELETE FROM agendamentos WHERE id = ?');
    $stmt->execute([$id]);

    echo json_encode(['message' => 'Agendamento removido com sucesso.', 'item' => $item], JSON_UNESCAPED_UNICODE);
    exit;
}

// GET /api/admin/barbeiros/{id}/config
if ($method === 'GET' && preg_match('#^admin/barbeiros/(\d+)/config$#', $rota, $m)) {
    exigirAuthAdmin();
    $id = (int)$m[1];

    $stmt = $db->prepare('SELECT * FROM barbeiros_config WHERE id = ?');
    $stmt->execute([$id]);
    $b = $stmt->fetch();

    if (!$b) {
        http_response_code(404);
        echo json_encode(['error' => 'Barbeiro não encontrado.'], JSON_UNESCAPED_UNICODE);
        exit;
    }

    $b['horarios'] = is_string($b['horarios']) ? json_decode($b['horarios'], true) : ($b['horarios'] ?: []);
    echo json_encode($b, JSON_UNESCAPED_UNICODE);
    exit;
}

// PUT /api/admin/barbeiros/{id}/config
if ($method === 'PUT' && preg_match('#^admin/barbeiros/(\d+)/config$#', $rota, $m)) {
    exigirAuthAdmin();
    $id = (int)$m[1];
    $horarios = isset($input['horarios']) && is_array($input['horarios']) ? $input['horarios'] : [];

    $stmt = $db->prepare('UPDATE barbeiros_config SET horarios = ? WHERE id = ?');
    $stmt->execute([json_encode(array_values($horarios)), $id]);

    echo json_encode(['message' => 'Horários atualizados com sucesso.'], JSON_UNESCAPED_UNICODE);
    exit;
}

// Rota não encontrada
http_response_code(404);
echo json_encode(['error' => "Endpoint não encontrado: $method /api/$rota"], JSON_UNESCAPED_UNICODE);
