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
    'assets/Geilson.jpg',
    '["08:30", "09:30", "10:00", "11:00", "14:00", "14:30", "15:30", "16:00", "17:00", "17:30", "18:00", "18:30"]'
),
(
    2, 
    'Denilson', 
    '5575991073283', 
    'assets/Denilson.jpg',
    '["08:30", "09:30", "10:00", "11:00", "14:00", "14:30", "15:30", "16:00", "17:00"]'
)
ON DUPLICATE KEY UPDATE 
    nome = VALUES(nome),
    telefone_whatsapp = VALUES(telefone_whatsapp),
    foto = VALUES(foto),
    horarios = VALUES(horarios);

-- 2. Administrador Padrão (Email: admin@atualestilo.com.br / Senha padrão: admin123)
-- Hash bcrypt de 'admin123' com 10 rounds: $2a$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW
INSERT INTO admin_users (id, nome, email, password_hash)
VALUES (
    1,
    'Administrador AtualEstilo',
    'admin@atualestilo.com.br',
    '$2a$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW'
)
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    password_hash = VALUES(password_hash);
