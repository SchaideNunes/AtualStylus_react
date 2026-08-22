-- 1. Tabela de Configurações dos Barbeiros e Horários de Atendimento
CREATE TABLE IF NOT EXISTS barbeiros_config (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone_whatsapp VARCHAR(20) NOT NULL,
    foto VARCHAR(255) DEFAULT '',
    horarios JSON NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 2. Tabela de Agendamentos e Bloqueios
CREATE TABLE IF NOT EXISTS agendamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    telefone VARCHAR(25) NOT NULL DEFAULT '',
    servico VARCHAR(150) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
    barbeiro_id INT NOT NULL,
    barbeiro_nome VARCHAR(100) NOT NULL,
    data_agendamento DATE NOT NULL,
    horario VARCHAR(10) NOT NULL,
    status ENUM('confirmado', 'concluido', 'cancelado', 'bloqueado') NOT NULL DEFAULT 'confirmado',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX idx_data_barbeiro_status (data_agendamento, barbeiro_id, status),
    INDEX idx_telefone (telefone),
    CONSTRAINT fk_agendamento_barbeiro FOREIGN KEY (barbeiro_id) REFERENCES barbeiros_config(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 3. Tabela de Usuários Administradores
CREATE TABLE IF NOT EXISTS admin_users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 4. Tabela de Produtos da Loja (Vitrine & Gestão)
CREATE TABLE IF NOT EXISTS produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
    preco_promocional DECIMAL(10, 2) NULL DEFAULT NULL,
    porcentagem_desconto INT DEFAULT 0,
    em_promocao BOOLEAN NOT NULL DEFAULT FALSE,
    foto MEDIUMTEXT,
    categoria VARCHAR(50) NOT NULL DEFAULT 'Geral',
    ativo BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX idx_produtos_ativo (ativo),
    INDEX idx_produtos_categoria (categoria)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
