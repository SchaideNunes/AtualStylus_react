-- ==============================================================================
-- ATUALESTILO BARBEARIA - DADOS INICIAIS (SEED)
-- ==============================================================================

-- 1. Carga dos Barbeiros e Horários Padrão
INSERT INTO barbeiros_config (id, nome, telefone_whatsapp, foto, horarios)
VALUES 
(
    1, 
    'Geilson', 
    '5575991309594', 
    'assets/Geilson.webp',
    '["08:30", "09:30", "10:00", "11:00", "14:00", "14:30", "15:30", "16:00", "17:00", "17:30", "18:00", "18:30"]'
),
(
    2, 
    'Denilson', 
    '5575991073283', 
    'assets/Denilson.webp',
    '["08:30", "09:30", "10:00", "11:00", "14:00", "14:30", "15:30", "16:00", "17:00"]'
)
ON DUPLICATE KEY UPDATE 
    nome = VALUES(nome),
    telefone_whatsapp = VALUES(telefone_whatsapp),
    foto = VALUES(foto),
    horarios = VALUES(horarios);

-- 2. Administrador Padrão (Email: admin@atualestilo.com / Senha padrão: admin123)
-- Hash bcrypt de 'admin123' com 10 rounds: $2a$10$Jdi8oFosfsbPK9nR4EEc4uL1V0O.uRSQ8IUmSjDSUsHu6x9UKHh6u
INSERT INTO admin_users (id, nome, email, password_hash)
VALUES (
    1,
    'Administrador AtualEstilo',
    'admin@atualestilo.com',
    '$2a$10$Jdi8oFosfsbPK9nR4EEc4uL1V0O.uRSQ8IUmSjDSUsHu6x9UKHh6u'
)
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    password_hash = VALUES(password_hash);

-- 3. Carga Inicial de Produtos da Vitrine
INSERT INTO produtos (id, nome, descricao, preco, preco_promocional, porcentagem_desconto, em_promocao, foto, categoria, ativo)
VALUES
(
    1,
    'Pomada Modeladora Efeito Matte',
    'Alta fixação sem brilho, ideal para penteados estruturados e durabilidade o dia todo.',
    35.00,
    28.00,
    20,
    TRUE,
    '/assets/degrade.webp',
    'Cabelo & Penteado',
    TRUE
),
(
    2,
    'Óleo para Barba Hidratação Profunda',
    'Fórmula nutritiva com óleos essenciais que amaciam os fios e perfumam com toque amadeirado.',
    40.00,
    NULL,
    0,
    FALSE,
    '/assets/corte-barba.webp',
    'Barba & Cuidados',
    TRUE
),
(
    3,
    'Shampoo Anticaspa Mentolado',
    'Sensação refrescante imediata, limpa profundamente o couro cabeludo e controla a oleosidade.',
    30.00,
    24.00,
    20,
    TRUE,
    '/assets/navalhado.webp',
    'Cabelo & Penteado',
    TRUE
),
(
    4,
    'Balm Modelador e Alinhador de Barba',
    'Hidrata e alinha fios rebeldes, garantindo volume controlado e maciez imediata.',
    25.00,
    NULL,
    0,
    FALSE,
    '/assets/barba-pezinho.webp',
    'Barba & Cuidados',
    TRUE
)
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    descricao = VALUES(descricao),
    preco = VALUES(preco),
    preco_promocional = VALUES(preco_promocional),
    porcentagem_desconto = VALUES(porcentagem_desconto),
    em_promocao = VALUES(em_promocao),
    foto = VALUES(foto),
    categoria = VALUES(categoria),
    ativo = VALUES(ativo);
