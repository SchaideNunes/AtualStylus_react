-- ==============================================================================
-- ATUALESTILO BARBEARIA - ATUALIZAÇÃO DOS ADMINISTRADORES DO SISTEMA
-- ==============================================================================

-- 1. Limpar administradores antigos
DELETE FROM admin_users;

-- 2. Inserir os 2 novos administradores autorizados
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
    email = VALUES(email),
    password_hash = VALUES(password_hash);
