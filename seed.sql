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

-- 2. Administradores do Sistema
-- Usuário 1: Schaidenunes.dev@gmail.com / schaide134679852
-- Usuário 2: geilsonMoreira19@gmail.com / street567890
DELETE FROM admin_users;

INSERT INTO admin_users (id, nome, email, password_hash)
VALUES 
(
    1,
    'Schaide Nunes',
    'schaidenunes.dev@gmail.com',
    '$2a$10$rEeQ7PQq9X.hCAAGIt7abeEXwDxyzc1HY3.jFh3xNkCNvO.EWTZau'
),
(
    2,
    'Geilson Moreira',
    'geilsonmoreira19@gmail.com',
    '$2a$10$fjGGSDIDwa.mPFNVUFeW0OMPwlqVnaiV9RmOEr86C3RzEYNK1.ZkS'
)
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    password_hash = VALUES(password_hash);
