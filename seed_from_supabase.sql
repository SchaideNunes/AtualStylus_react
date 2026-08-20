-- ==============================================================================
-- DADOS EXPORTADOS DO SUPABASE (APENAS LEITURA) PARA MYSQL HOSTINGER
-- Data da exportação: 2026-08-20T01:33:07.759Z
-- ==============================================================================

USE atualestilo_db;

-- 1. Barbeiros Config
INSERT INTO barbeiros_config (id, nome, telefone_whatsapp, foto, horarios)
VALUES (2, 'Denilson', '5575991073283', 'assets/Denilson.jpg', '["09:30","10:00","11:00","11:30","14:00","14:30","15:30","16:00","17:00"]')
ON DUPLICATE KEY UPDATE 
  nome = VALUES(nome),
  telefone_whatsapp = VALUES(telefone_whatsapp),
  foto = VALUES(foto),
  horarios = VALUES(horarios);

INSERT INTO barbeiros_config (id, nome, telefone_whatsapp, foto, horarios)
VALUES (1, 'Geilson', '5575991309594', 'assets/Geilson.jpg', '["09:30","10:00","11:00","14:00","14:30","15:30","16:00","16:30","17:30"]')
ON DUPLICATE KEY UPDATE 
  nome = VALUES(nome),
  telefone_whatsapp = VALUES(telefone_whatsapp),
  foto = VALUES(foto),
  horarios = VALUES(horarios);

-- 2. Agendamentos
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1285, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-04-15', '08:30', 'bloqueado', '2026-04-12T12:35:26.847626+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1286, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-04-15', '09:30', 'bloqueado', '2026-04-12T12:35:26.847626+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1287, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-04-15', '10:00', 'bloqueado', '2026-04-12T12:35:26.847626+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1288, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-04-15', '11:00', 'bloqueado', '2026-04-12T12:35:26.847626+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1289, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-04-15', '18:00', 'bloqueado', '2026-04-12T12:35:26.847626+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1261, 'Sileu ', '(75) 99130-9559', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-11', '17:00', 'concluido', '2026-04-10T21:50:04.68239+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1349, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-09-10', '17:30', 'confirmado', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1350, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-09-17', '17:30', 'confirmado', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (82, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-02-23', '08:30', 'bloqueado', '2026-02-23T10:36:21.819469+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1351, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-09-24', '17:30', 'confirmado', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1352, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-10-01', '17:30', 'confirmado', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1353, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-10-08', '17:30', 'confirmado', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1354, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-10-15', '17:30', 'confirmado', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1355, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-10-22', '17:30', 'confirmado', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1356, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-10-29', '17:30', 'confirmado', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1357, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-11-05', '17:30', 'confirmado', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (90, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-02-23', '14:30', 'bloqueado', '2026-02-23T10:36:21.819469+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1358, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-11-12', '17:30', 'confirmado', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (92, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-02-23', '17:30', 'bloqueado', '2026-02-23T10:36:21.819469+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (93, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-02-23', '18:30', 'bloqueado', '2026-02-23T10:36:21.819469+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (95, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-23', '18:30', 'bloqueado', '2026-02-23T12:15:53.508368+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (96, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-23', '18:00', 'bloqueado', '2026-02-23T12:15:53.508368+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (97, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-23', '17:30', 'bloqueado', '2026-02-23T12:15:53.508368+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (98, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-23', '17:00', 'bloqueado', '2026-02-23T12:15:53.508368+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (99, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-23', '16:30', 'bloqueado', '2026-02-23T12:15:53.508368+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (100, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-23', '16:00', 'bloqueado', '2026-02-23T12:15:53.508368+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (101, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-23', '15:30', 'bloqueado', '2026-02-23T12:15:53.508368+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (102, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-23', '15:00', 'bloqueado', '2026-02-23T12:15:53.508368+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (103, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-23', '14:30', 'bloqueado', '2026-02-23T12:15:53.508368+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (104, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-23', '14:00', 'bloqueado', '2026-02-23T12:15:53.508368+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (105, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-23', '10:00', 'bloqueado', '2026-02-23T12:15:53.508368+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (106, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-23', '09:30', 'bloqueado', '2026-02-23T12:17:03.083014+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (107, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-23', '08:30', 'bloqueado', '2026-02-23T12:17:03.083014+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1359, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-11-19', '17:30', 'confirmado', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1304, 'Ravi', '(75) 99130-9559', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-04-15', '17:00', 'concluido', '2026-04-13T22:06:35.575353+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1326, 'Mateus ', '(75) 99127-0577', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-04-15', '17:30', 'concluido', '2026-04-15T12:28:17.864133+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1316, 'Cairo', '(71) 99243-5287', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-04-16', '14:00', 'concluido', '2026-04-14T18:35:03.591485+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (2764, 'Rafael Morais Rozendo dos Santos', '(75) 99982-5110', 'Corte Social - R$ 25', 25, 2, 'Denilson', '2026-07-11', '17:00', 'confirmado', '2026-07-08T23:46:47.043277+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (116, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-24', '17:00', 'bloqueado', '2026-02-24T01:43:56.826078+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (117, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-24', '17:30', 'bloqueado', '2026-02-24T01:43:56.826078+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (118, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-24', '08:30', 'bloqueado', '2026-02-24T01:43:56.826078+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (119, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-24', '09:00', 'bloqueado', '2026-02-24T01:43:56.826078+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (120, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-24', '09:30', 'bloqueado', '2026-02-24T01:43:56.826078+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (121, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-24', '10:00', 'bloqueado', '2026-02-24T01:43:56.826078+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (122, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-24', '10:30', 'bloqueado', '2026-02-24T01:43:56.826078+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (123, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-24', '14:00', 'bloqueado', '2026-02-24T01:43:56.826078+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (124, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-24', '16:00', 'bloqueado', '2026-02-24T01:43:56.826078+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (125, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-24', '16:30', 'bloqueado', '2026-02-24T01:43:56.826078+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (126, 'Matheus ', 'Sem telefone', 'Degradê - R$ 25', 25, 2, 'Denilson', '2026-02-24', '09:00', 'concluido', '2026-02-24T10:43:04.169001+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (113, 'Arthur Senna ', '(62) 98133-4520', 'Corte Social - R$ 25', 25, 2, 'Denilson', '2026-02-24', '14:30', 'concluido', '2026-02-23T20:25:04.223748+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (108, 'Marcos Rodrigues', '(75) 99196-7351', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-02-23', '18:00', 'concluido', '2026-02-23T12:40:17.372992+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (114, 'Allef Senna ', '(62) 98133-4520', 'Degradê - R$ 25', 25, 2, 'Denilson', '2026-02-24', '15:30', 'concluido', '2026-02-23T20:26:49.312331+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (127, 'Fernando Jesse Miranda oliveira ', '(75) 99107-2124', 'Navalhado - R$ 25', 25, 1, 'Geilson', '2026-02-24', '17:30', 'concluido', '2026-02-24T12:42:47.07706+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (115, 'Kauan Lacerda', '(75) 99118-0827', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-02-25', '10:00', 'concluido', '2026-02-23T21:32:46.145094+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (80, 'Iago', '95', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-02-25', '17:30', 'concluido', '2026-02-22T23:34:07.299912+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (71, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-02-27', '10:00', 'concluido', '2026-02-22T10:07:01.609259+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (63, 'Icaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-02-27', '14:00', 'concluido', '2026-02-22T10:02:43.021939+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (112, 'Rafael Borges ', '(75) 99270-6280', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-02-27', '15:30', 'concluido', '2026-02-23T17:43:06.992249+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (94, 'Elielson dos santos oliveira ', '(71) 99226-3219', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-02-27', '17:00', 'concluido', '2026-02-23T11:10:45.401188+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (129, 'Elison eletricista ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-05', '17:30', 'concluido', '2026-02-24T13:49:58.508565+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (72, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-06', '10:00', 'concluido', '2026-02-22T10:07:01.609259+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (64, 'Icaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-06', '14:00', 'concluido', '2026-02-22T10:02:43.021939+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (130, 'Elison eletricista ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-12', '17:30', 'concluido', '2026-02-24T13:49:58.508565+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (73, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-13', '10:00', 'concluido', '2026-02-22T10:07:01.609259+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (65, 'Icaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-13', '14:00', 'concluido', '2026-02-22T10:02:43.021939+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (66, 'Icaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-20', '14:00', 'concluido', '2026-02-22T10:02:43.021939+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1262, 'Menino', '(75) 99130-9559', 'Corte Social - R$ 25', 25, 2, 'Denilson', '2026-04-11', '09:30', 'concluido', '2026-04-10T21:50:58.617212+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1263, 'João pyetro ', '(75) 99126-7217', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-04-11', '17:30', 'concluido', '2026-04-10T21:51:36.51706+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (188, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-25', '11:00', 'bloqueado', '2026-02-25T13:01:20.786551+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1360, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-11-26', '17:30', 'confirmado', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1361, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-12-03', '17:30', 'confirmado', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (189, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-25', '11:30', 'bloqueado', '2026-02-25T13:01:20.786551+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1362, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-12-10', '17:30', 'confirmado', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1363, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-12-17', '17:30', 'confirmado', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1364, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-12-24', '17:30', 'confirmado', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1290, 'Mary', '(75) 99235-5107', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-04-13', '14:00', 'concluido', '2026-04-12T17:24:41.122335+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1327, 'Mateus lima', '(75) 99247-7386', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-04-15', '14:30', 'concluido', '2026-04-15T12:30:49.669366+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1305, 'Ravi', '(75) 99130-9559', 'Corte Social - R$ 25', 25, 2, 'Denilson', '2026-04-15', '17:00', 'concluido', '2026-04-13T22:08:42.030314+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1317, 'Raul Nunes', '(75) 99144-7547', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-16', '16:00', 'concluido', '2026-04-14T20:25:04.596143+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (2765, 'Savio Lopes', '(75) 99164-8830', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-07-10', '18:00', 'confirmado', '2026-07-09T00:46:18.558638+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (132, 'Fabrício Saba ', '(55) 75982-8806', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-02-24', '14:30', 'concluido', '2026-02-24T14:44:03.905197+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (160, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-28', '18:30', 'bloqueado', '2026-02-25T02:35:33.19989+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (161, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-28', '16:30', 'bloqueado', '2026-02-25T02:35:33.19989+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (162, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-28', '17:00', 'bloqueado', '2026-02-25T02:35:33.19989+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (163, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-28', '18:00', 'bloqueado', '2026-02-25T02:35:33.19989+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (164, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-28', '17:30', 'bloqueado', '2026-02-25T02:35:33.19989+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (165, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-28', '16:00', 'bloqueado', '2026-02-25T02:35:33.19989+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (166, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-28', '15:30', 'bloqueado', '2026-02-25T02:35:33.19989+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (167, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-28', '15:00', 'bloqueado', '2026-02-25T02:35:33.19989+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (168, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-28', '13:30', 'bloqueado', '2026-02-25T02:35:33.19989+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (169, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-28', '13:00', 'bloqueado', '2026-02-25T02:35:33.19989+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (170, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-28', '12:30', 'bloqueado', '2026-02-25T02:35:33.19989+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (171, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-28', '10:30', 'bloqueado', '2026-02-25T02:35:33.19989+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (172, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-28', '11:00', 'bloqueado', '2026-02-25T02:35:33.19989+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (173, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-28', '12:00', 'bloqueado', '2026-02-25T02:35:33.19989+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (174, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-28', '11:30', 'bloqueado', '2026-02-25T02:35:33.19989+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (175, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-28', '10:00', 'bloqueado', '2026-02-25T02:35:33.19989+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (176, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-28', '09:30', 'bloqueado', '2026-02-25T02:35:33.19989+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (177, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-28', '08:30', 'bloqueado', '2026-02-25T02:35:33.19989+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (178, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-28', '09:00', 'bloqueado', '2026-02-25T02:35:33.19989+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (190, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-25', '10:30', 'bloqueado', '2026-02-25T13:01:20.786551+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (185, 'Airan ', '(75) 99874-4522', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-02-25', '11:00', 'concluido', '2026-02-25T12:21:12.152363+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (191, 'Jonathan anjos Oliveira ', '(75) 99259-4884', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-02-25', '14:00', 'concluido', '2026-02-25T13:06:51.259021+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (135, 'Filho Flávio ', '(75) 99130-9559', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-02-25', '14:00', 'concluido', '2026-02-24T18:18:39.682147+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (143, 'Carlos Daniel ', '(75) 99212-7395', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-02-25', '14:30', 'concluido', '2026-02-24T19:14:10.253957+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (182, 'Luiz ', '(75) 99130-9559', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-02-25', '15:30', 'concluido', '2026-02-25T11:11:15.050528+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (195, 'Renan transportes ', '(75) 98170-6094', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-02-25', '16:00', 'concluido', '2026-02-25T15:28:11.105607+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (193, 'Ney', '(75) 99130-9559', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-02-25', '17:00', 'concluido', '2026-02-25T13:56:07.856035+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (202, 'José Ednan ', '(75) 99817-8131', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-02-26', '08:30', 'concluido', '2026-02-26T10:34:57.111429+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (192, 'Emanuel', '(75) 99190-2797', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-02-26', '09:30', 'concluido', '2026-02-25T13:19:27.129381+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (203, 'Mailson Oliveira de Queiroz ', '(75) 99187-0511', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-02-26', '10:00', 'concluido', '2026-02-26T12:15:28.28937+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (204, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-02-26', '11:00', 'concluido', '2026-02-26T12:21:24.132676+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (206, 'Noedso ', '(75) 99130-9559', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-02-26', '14:30', 'concluido', '2026-02-26T15:28:14.758681+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (194, 'Mateus lima', '(75) 99247-7386', 'Navalhado - R$ 25', 25, 1, 'Geilson', '2026-02-26', '15:30', 'concluido', '2026-02-25T14:58:56.788653+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (198, 'Daniel ', '(75) 99210-4603', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-02-26', '16:00', 'concluido', '2026-02-25T17:59:21.773007+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (207, 'Cairo', '(75) 99130-9559', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-02-26', '17:00', 'concluido', '2026-02-26T15:52:00.855065+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (179, 'Natan Queiroz ', '(75) 99132-9319', 'Navalhado - R$ 25', 25, 1, 'Geilson', '2026-02-26', '18:00', 'concluido', '2026-02-25T09:09:09.817171+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (134, 'Miccael Nunes ', '(75) 99154-2626', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-02-27', '08:30', 'concluido', '2026-02-24T17:18:18.230813+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (180, 'Junho', '(75) 99130-9559', 'Barba e Pezinho - R$ 15', 15, 1, 'Geilson', '2026-02-27', '11:00', 'concluido', '2026-02-25T11:07:10.031052+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (181, 'Diego santa rosa', '(75) 99130-9559', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-02-27', '14:30', 'concluido', '2026-02-25T11:07:53.561187+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (205, 'Mateus Queiroz Marçal Santos ', '(75) 99288-0436', 'Degradê - R$ 25', 25, 2, 'Denilson', '2026-02-27', '14:30', 'concluido', '2026-02-26T15:03:51.241351+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (199, 'Ilke Itamar', '(75) 98823-0383', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-02-27', '16:00', 'concluido', '2026-02-25T18:06:43.013808+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (201, 'Tonhao ', '(75) 99178-6580', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-02-27', '17:30', 'concluido', '2026-02-26T01:50:13.527163+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (209, 'Jean', '(75) 99130-9559', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-02-27', '18:00', 'concluido', '2026-02-26T21:47:25.157319+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (186, 'Wellington Alves ', '(75) 99134-3491', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-02-28', '09:30', 'concluido', '2026-02-25T12:31:01.699694+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (200, 'Derlan Queiroz', '(75) 99136-2544', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-02-28', '10:00', 'concluido', '2026-02-25T23:49:21.633529+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (211, 'Arthur Gabriel ', '(75) 98877-1361', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-02-28', '14:00', 'concluido', '2026-02-26T22:16:02.716576+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (133, 'Vinícius ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-02-28', '18:30', 'concluido', '2026-02-24T17:17:51.300172+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (187, 'Wiliam lima', '(75) 99240-1172', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-03-02', '08:30', 'concluido', '2026-02-25T12:55:19.384274+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (197, 'Eric Mateus', '(75) 99163-7525', 'Navalhado - R$ 25', 25, 1, 'Geilson', '2026-03-05', '16:00', 'concluido', '2026-02-25T17:13:43.135819+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (196, 'Natan Queiroz Andrade ', '(75) 99248-8857', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-02-26', '14:00', 'concluido', '2026-02-25T16:19:06.144866+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (217, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-02-27', '08:30', 'bloqueado', '2026-02-27T11:02:32.403646+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (215, 'Miguel ', '(75) 99130-9559', 'Corte Social - R$ 25', 25, 2, 'Denilson', '2026-02-27', '09:30', 'concluido', '2026-02-27T10:25:10.777249+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (219, 'Michell Queiroz Lima', '(75) 99201-0786', 'Corte Social - R$ 25', 25, 2, 'Denilson', '2026-02-27', '11:00', 'concluido', '2026-02-27T13:35:38.188653+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (213, 'Ueslei', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-02-27', '11:30', 'concluido', '2026-02-26T22:19:09.80676+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1264, 'Gelisson ', '(75) 99121-4764', 'Barba e Pezinho - R$ 15', 15, 2, 'Denilson', '2026-04-11', '11:00', 'concluido', '2026-04-10T22:42:05.40828+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (222, 'Rafael ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-02-27', '14:00', 'concluido', '2026-02-27T16:14:26.58981+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (220, 'ueslei', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-02-27', '15:30', 'concluido', '2026-02-27T15:02:05.737316+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (223, 'Erick', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-02-27', '16:30', 'concluido', '2026-02-27T16:15:02.454261+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (216, 'Kayron Almeida ', '(75) 99275-6136', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-02-27', '18:30', 'concluido', '2026-02-27T10:36:24.611381+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (2766, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-07-09', '09:30', 'bloqueado', '2026-07-09T05:36:48.876431+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (212, 'Renan Oliveira Lima ', '(75) 99185-9168', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-02-28', '14:30', 'concluido', '2026-02-26T22:17:21.190671+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (230, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-02', '08:30', 'bloqueado', '2026-03-01T13:58:44.234708+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (231, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-02', '09:00', 'bloqueado', '2026-03-01T13:58:44.234708+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (232, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-02', '09:30', 'bloqueado', '2026-03-01T13:58:44.234708+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (233, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-02', '10:00', 'bloqueado', '2026-03-01T13:58:44.234708+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (234, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-02', '10:30', 'bloqueado', '2026-03-01T13:58:44.234708+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (235, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-02', '11:00', 'bloqueado', '2026-03-01T13:58:44.234708+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (236, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-02', '11:30', 'bloqueado', '2026-03-01T13:58:44.234708+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (237, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-02', '14:00', 'bloqueado', '2026-03-01T13:58:44.234708+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (238, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-02', '14:30', 'bloqueado', '2026-03-01T13:58:44.234708+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (239, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-02', '15:00', 'bloqueado', '2026-03-01T13:58:44.234708+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (214, 'Elison', '(75) 99130-9559', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-02-28', '15:30', 'concluido', '2026-02-26T22:32:49.134272+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (225, 'Luciano Ferreira de Queiroz ', '(79) 99851-8559', 'Navalhado - R$ 25', 25, 1, 'Geilson', '2026-02-28', '16:00', 'concluido', '2026-02-27T18:59:27.03084+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (226, 'Ilton ', '(75) 99130-9559', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-02-28', '17:00', 'concluido', '2026-02-27T22:28:24.786683+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (229, 'Ruan', '(75) 99130-9559', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-02-28', '18:00', 'concluido', '2026-02-28T10:23:14.785275+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (244, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-02', '15:30', 'bloqueado', '2026-03-02T13:38:08.684338+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (245, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-02', '16:00', 'bloqueado', '2026-03-02T13:38:08.684338+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (246, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-02', '16:30', 'bloqueado', '2026-03-02T13:38:08.684338+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (247, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-02', '17:00', 'bloqueado', '2026-03-02T13:38:08.684338+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (248, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-02', '17:30', 'bloqueado', '2026-03-02T13:38:08.684338+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (240, 'Felipe ', '(75) 99130-9559', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-02', '09:30', 'concluido', '2026-03-02T02:12:05.090427+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (242, 'Marcílio Cajé', '(74) 99987-8831', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-02', '11:00', 'concluido', '2026-03-02T11:34:20.118028+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (243, 'Adulto ', '(75) 99130-9559', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-02', '14:00', 'concluido', '2026-03-02T13:21:36.84799+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (252, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-02', '18:30', 'bloqueado', '2026-03-02T18:49:57.849951+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (253, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-02', '17:30', 'bloqueado', '2026-03-02T18:49:57.849951+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (254, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-02', '18:00', 'bloqueado', '2026-03-02T18:49:57.849951+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (250, 'Gelisson ', '(75) 99121-4764', 'Barba e Pezinho - R$ 15', 15, 1, 'Geilson', '2026-03-02', '17:00', 'concluido', '2026-03-02T17:32:24.135305+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (257, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-04', '08:30', 'bloqueado', '2026-03-03T11:00:27.167548+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (258, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-04', '09:00', 'bloqueado', '2026-03-03T11:00:27.167548+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (259, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-04', '09:30', 'bloqueado', '2026-03-03T11:00:27.167548+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (260, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-04', '10:00', 'bloqueado', '2026-03-03T11:00:27.167548+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (261, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-04', '10:30', 'bloqueado', '2026-03-03T11:00:27.167548+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (262, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-04', '11:00', 'bloqueado', '2026-03-03T11:00:27.167548+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (263, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-04', '11:30', 'bloqueado', '2026-03-03T11:00:27.167548+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (264, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-05', '08:30', 'bloqueado', '2026-03-03T11:01:09.537456+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1328, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-16', '17:30', 'concluido', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1318, 'Guilherme Araújo', '(75) 98863-7232', 'Navalhado - R$ 25', 25, 2, 'Denilson', '2026-04-17', '09:30', 'concluido', '2026-04-15T00:54:43.511506+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1329, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-23', '17:30', 'concluido', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1330, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-30', '17:30', 'concluido', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (273, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-07', '18:30', 'bloqueado', '2026-03-03T11:01:58.641164+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (274, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-07', '18:00', 'bloqueado', '2026-03-03T11:01:58.641164+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (275, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-07', '17:30', 'bloqueado', '2026-03-03T11:01:58.641164+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (276, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-07', '17:00', 'bloqueado', '2026-03-03T11:01:58.641164+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (277, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-07', '16:30', 'bloqueado', '2026-03-03T11:01:58.641164+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (278, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-07', '16:00', 'bloqueado', '2026-03-03T11:01:58.641164+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (279, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-07', '15:00', 'bloqueado', '2026-03-03T11:01:58.641164+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (280, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-07', '14:30', 'bloqueado', '2026-03-03T11:01:58.641164+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (281, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-07', '15:30', 'bloqueado', '2026-03-03T11:01:58.641164+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (282, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-07', '14:00', 'bloqueado', '2026-03-03T11:01:58.641164+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1331, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-05-07', '17:30', 'concluido', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1291, 'Adevan Pereira ', '(75) 99893-9078', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-05-09', '14:00', 'concluido', '2026-04-12T19:51:08.134856+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (255, 'Dean santos ', '(75) 99199-3442', 'Corte Raspado - R$ 20', 20, 1, 'Geilson', '2026-03-05', '08:30', 'concluido', '2026-03-03T00:43:27.466037+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (251, 'Kennedy Dias', '(75) 99224-0716', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-05', '17:00', 'concluido', '2026-03-02T18:27:09.913241+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (256, 'Deyferosn ', '(75) 99206-9210', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-05', '18:00', 'concluido', '2026-03-03T01:50:24.55174+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (227, 'Pedro ', '(11) 93865-6826', 'Navalhado - R$ 25', 25, 2, 'Denilson', '2026-03-27', '14:00', 'concluido', '2026-02-28T00:26:33.559545+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1332, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-05-14', '17:30', 'concluido', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (286, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-03', '14:30', 'bloqueado', '2026-03-03T17:12:33.099234+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (284, 'Rodrigo de Oliveira ', '(15) 99767-0244', 'Degradê - R$ 25', 25, 2, 'Denilson', '2026-03-03', '15:30', 'concluido', '2026-03-03T16:42:38.110254+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (2767, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-07-09', '10:00', 'bloqueado', '2026-07-09T05:36:48.876431+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1265, 'Ueslei Damião', '(75) 99142-2834', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-04-11', '15:30', 'concluido', '2026-04-10T23:52:13.464771+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (289, 'Davi Mendes Galvão ', '(75) 91739-9179', 'Degradê - R$ 25', 25, 2, 'Denilson', '2026-03-03', '08:30', 'concluido', '2026-03-03T22:22:14.471198+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (291, 'Digo mix', '(75) 99148-8880', 'Barba e Pezinho - R$ 15', 15, 2, 'Denilson', '2026-03-04', '14:30', 'concluido', '2026-03-04T00:33:57.469712+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (288, 'Pedrinho ', '64', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-03-04', '15:30', 'concluido', '2026-03-03T21:10:14.195166+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (295, 'uilton santana', '(75) 98887-3138', 'Barba e Pezinho - R$ 15', 15, 1, 'Geilson', '2026-03-04', '17:00', 'concluido', '2026-03-04T12:05:19.861816+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (298, 'Fraedson Queiroz ', '(75) 99138-7495', 'Degradê - R$ 25', 25, 2, 'Denilson', '2026-03-04', '17:00', 'concluido', '2026-03-04T16:38:35.419648+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (300, 'Pqueno Silva', '(75) 99142-6707', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-03-04', '17:30', 'concluido', '2026-03-04T16:55:17.677566+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (297, 'Schaide Nunes', '(75) 99150-3949', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-03-04', '18:00', 'concluido', '2026-03-04T14:53:10.864038+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (303, 'Eliel', '64', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-05', '09:30', 'concluido', '2026-03-05T00:17:33.042291+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1307, 'Leto', '(71) 99226-3219', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-17', '18:00', 'concluido', '2026-04-14T09:56:50.777589+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1333, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-05-21', '17:30', 'concluido', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (307, 'Ney ', '(75) 99119-1268', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-05', '15:30', 'concluido', '2026-03-05T13:18:05.87332+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (318, 'Schaide', '(75) 99150-3949', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-03-13', '16:00', 'cancelado', '2026-03-05T21:24:08.635832+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (319, 'Schaide', '(75) 99150-3949', 'Navalhado - R$ 25', 25, 1, 'Geilson', '2026-03-20', '17:30', 'cancelado', '2026-03-05T21:37:24.412492+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (324, 'Ravi', '(71) 99226-3219', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-07', '09:30', 'cancelado', '2026-03-06T00:49:59.168302+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (306, 'Vanelson Mota', '(75) 98849-7419', 'Navalhado - R$ 25', 25, 2, 'Denilson', '2026-03-06', '08:30', 'concluido', '2026-03-05T12:33:10.412873+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (287, 'Deir ', '(75) 99150-8002', 'Navalhado - R$ 25', 25, 1, 'Geilson', '2026-03-06', '08:30', 'concluido', '2026-03-03T18:14:07.718032+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (315, 'Matheus ', '64', 'Corte Social - R$ 25', 25, 2, 'Denilson', '2026-03-06', '09:30', 'concluido', '2026-03-05T20:38:47.499594+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (332, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-06', '18:30', 'bloqueado', '2026-03-06T13:31:13.109407+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (333, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-06', '18:00', 'bloqueado', '2026-03-06T13:31:13.109407+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (327, 'marielson', '(75) 99107-3283', 'Corte Social - R$ 25', 25, 2, 'Denilson', '2026-03-06', '10:00', 'concluido', '2026-03-06T10:47:07.940882+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (323, 'Ueslei Damião santos ', '(75) 99142-2834', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-03-06', '11:00', 'concluido', '2026-03-05T22:28:49.963181+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (305, 'Edicley oliveira dos Santos ', '(47) 99669-3577', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-03-06', '17:30', 'concluido', '2026-03-05T08:37:01.904731+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (310, 'Elisson', '(75) 99110-5809', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-06', '11:00', 'concluido', '2026-03-05T18:17:19.061371+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (328, 'talisson', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-03-06', '11:30', 'concluido', '2026-03-06T10:48:42.369286+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (339, 'Schaide', '(75) 99150-3949', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-04-02', '11:00', 'cancelado', '2026-03-06T19:31:54.190265+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (340, 'Joalysson', '(75) 99178-7427', 'Corte Social - R$ 25', 25, 2, 'Denilson', '2026-03-09', '08:30', 'cancelado', '2026-03-06T19:36:57.259438+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (304, 'Anderson Diamantino ', '(75) 99222-0904', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-06', '14:30', 'concluido', '2026-03-05T00:50:04.78177+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (285, 'Diego de Lima Queiroz ', '(75) 99138-0236', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-06', '15:30', 'concluido', '2026-03-03T17:02:30.273299+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (312, 'Irán Araújo ', '(71) 99101-4745', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-06', '16:00', 'concluido', '2026-03-05T19:25:54.357447+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (296, 'Raul Nunes', '(75) 99144-7547', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-06', '17:00', 'concluido', '2026-03-04T12:27:20.011283+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (308, 'Fernando Fabio dos Santos Oliveira ', '(75) 99252-0665', 'Navalhado - R$ 25', 25, 1, 'Geilson', '2026-03-06', '18:00', 'concluido', '2026-03-05T13:46:01.824016+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (329, 'Lucas', '(75) 99130-9559', 'Degradê - R$ 25', 25, 2, 'Denilson', '2026-03-06', '14:00', 'concluido', '2026-03-06T11:41:11.891288+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (334, 'Isaque', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-03-06', '14:30', 'concluido', '2026-03-06T13:31:56.014663+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (335, 'Jonatas novais Silva de Oliveira', '(75) 99231-0998', 'Barba e Pezinho - R$ 15', 15, 2, 'Denilson', '2026-03-06', '15:30', 'concluido', '2026-03-06T13:57:31.681441+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (337, 'Elano ', '(75) 99130-9559', 'Degradê - R$ 25', 25, 2, 'Denilson', '2026-03-06', '16:00', 'concluido', '2026-03-06T15:01:45.390367+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (336, 'Reinan', '(75) 99130-9559', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-03-06', '17:00', 'concluido', '2026-03-06T14:11:15.058999+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (314, 'Iago Queiroz ', '(75) 99231-0730', 'Barba e Pezinho - R$ 15', 15, 1, 'Geilson', '2026-03-06', '18:30', 'concluido', '2026-03-05T20:04:43.002332+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (292, 'Henrique Gabriel Mota de Santana ', '(75) 98831-9034', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-03-07', '08:30', 'concluido', '2026-03-04T09:06:23.516582+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (309, 'Miccael Nunes ', '(75) 99154-2626', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-07', '08:30', 'concluido', '2026-03-05T14:33:38.538707+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (344, 'Davi Mendes Galvão ', '(75) 98828-6808', 'Barba e Pezinho - R$ 15', 15, 2, 'Denilson', '2026-03-07', '09:30', 'concluido', '2026-03-06T23:34:32.810576+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (338, 'Said Silva Santana', '(75) 99901-6236', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-07', '09:30', 'concluido', '2026-03-06T18:08:23.835649+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (343, 'Josean', '(75) 99130-9559', 'Corte Social - R$ 25', 25, 2, 'Denilson', '2026-03-07', '10:00', 'concluido', '2026-03-06T22:19:51.019062+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (325, 'Flávio Mota ', '(75) 99263-0613', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-07', '10:00', 'concluido', '2026-03-06T00:55:01.524641+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (313, 'Cairo', '(71) 99243-5287', 'Navalhado - R$ 25', 25, 1, 'Geilson', '2026-03-07', '11:00', 'concluido', '2026-03-05T19:28:01.993852+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (342, 'Marcos Antônio Silva de Queiroz', '(75) 99250-4975', 'Barba e Pezinho - R$ 15', 15, 2, 'Denilson', '2026-03-07', '11:00', 'concluido', '2026-03-06T20:09:34.399996+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (299, 'Alessandro ', '64', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-03-07', '14:00', 'concluido', '2026-03-04T16:38:42.695963+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (341, 'Vitor kaian', '(75) 99174-9404', 'Barba e Pezinho - R$ 15', 15, 1, 'Geilson', '2026-03-07', '14:30', 'concluido', '2026-03-06T19:51:12.240599+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (326, 'Ravi ', '(71) 99226-3219', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-07', '16:00', 'concluido', '2026-03-06T01:08:04.024238+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (346, 'Reinan ', '(75) 99130-9559', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-07', '17:00', 'concluido', '2026-03-07T09:38:38.642265+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (331, 'Saulo de Oliveira ', '(75) 99150-5991', 'Navalhado - R$ 25', 25, 1, 'Geilson', '2026-03-07', '17:30', 'concluido', '2026-03-06T13:03:50.709065+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (347, 'Criança ', '(75) 99130-9559', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-03-07', '18:00', 'concluido', '2026-03-07T11:27:03.806192+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (348, 'Carlos Daniel ', '(75) 99212-7395', 'Navalhado - R$ 25', 25, 1, 'Geilson', '2026-03-07', '18:30', 'concluido', '2026-03-07T14:41:06.897995+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (351, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-10', '08:30', 'bloqueado', '2026-03-08T21:23:20.231899+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (352, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-10', '09:30', 'bloqueado', '2026-03-08T21:23:20.231899+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (353, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-10', '10:00', 'bloqueado', '2026-03-08T21:23:20.231899+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (354, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-10', '11:00', 'bloqueado', '2026-03-08T21:23:20.231899+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1293, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-04-13', '08:30', 'bloqueado', '2026-04-13T01:54:14.858413+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1294, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-04-13', '17:00', 'bloqueado', '2026-04-13T01:54:14.858413+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (360, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-10', '17:30', 'bloqueado', '2026-03-08T21:23:20.231899+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (361, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-10', '18:30', 'bloqueado', '2026-03-08T21:23:20.231899+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (362, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-10', '18:00', 'bloqueado', '2026-03-08T21:23:20.231899+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (363, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-09', '08:30', 'bloqueado', '2026-03-09T03:21:49.017602+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (364, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-09', '09:30', 'bloqueado', '2026-03-09T03:21:49.017602+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (365, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-09', '10:00', 'bloqueado', '2026-03-09T03:21:49.017602+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (367, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-09', '08:30', 'bloqueado', '2026-03-09T10:57:45.917037+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (368, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-09', '09:00', 'bloqueado', '2026-03-09T10:57:45.917037+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (369, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-09', '09:30', 'bloqueado', '2026-03-09T10:57:45.917037+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (370, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-09', '10:00', 'bloqueado', '2026-03-09T10:57:45.917037+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (371, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-09', '10:30', 'bloqueado', '2026-03-09T10:57:45.917037+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (372, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-09', '11:00', 'bloqueado', '2026-03-09T10:57:45.917037+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (373, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-09', '11:30', 'bloqueado', '2026-03-09T10:57:45.917037+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (374, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-09', '12:00', 'bloqueado', '2026-03-09T10:57:45.917037+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (375, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-09', '14:00', 'bloqueado', '2026-03-09T10:57:45.917037+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (376, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-09', '11:00', 'bloqueado', '2026-03-09T12:11:11.800157+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (377, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-09', '11:30', 'bloqueado', '2026-03-09T12:11:11.800157+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (378, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-09', '10:30', 'bloqueado', '2026-03-09T12:11:11.800157+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (383, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-09', '15:00', 'bloqueado', '2026-03-09T17:30:58.978363+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (384, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-09', '15:30', 'bloqueado', '2026-03-09T17:30:58.978363+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (385, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-09', '16:30', 'bloqueado', '2026-03-09T17:30:58.978363+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (386, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-09', '17:00', 'bloqueado', '2026-03-09T17:30:58.978363+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (387, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-09', '18:30', 'bloqueado', '2026-03-09T17:30:58.978363+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (391, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-10', '09:30', 'bloqueado', '2026-03-09T22:48:19.368079+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (394, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-11', '08:30', 'bloqueado', '2026-03-10T11:44:33.004374+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (395, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-11', '09:00', 'bloqueado', '2026-03-10T11:44:33.004374+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (396, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-11', '10:30', 'bloqueado', '2026-03-10T11:44:33.004374+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (397, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-11', '11:00', 'bloqueado', '2026-03-10T11:44:33.004374+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (398, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-11', '11:30', 'bloqueado', '2026-03-10T11:44:33.004374+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (399, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-11', '12:00', 'bloqueado', '2026-03-10T11:44:33.004374+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (400, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-11', '12:30', 'bloqueado', '2026-03-10T11:44:33.004374+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (401, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-11', '13:00', 'bloqueado', '2026-03-10T11:44:33.004374+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (402, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-11', '13:30', 'bloqueado', '2026-03-10T11:44:33.004374+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (403, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-11', '14:00', 'bloqueado', '2026-03-10T11:44:33.004374+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (404, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-11', '14:30', 'bloqueado', '2026-03-10T11:44:33.004374+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (405, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-11', '15:00', 'bloqueado', '2026-03-10T11:44:33.004374+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1295, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-04-13', '16:00', 'bloqueado', '2026-04-13T01:54:14.858413+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (407, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-11', '16:00', 'bloqueado', '2026-03-10T11:44:33.004374+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1296, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-04-13', '15:30', 'bloqueado', '2026-04-13T01:54:14.858413+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (409, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-11', '17:00', 'bloqueado', '2026-03-10T11:44:33.004374+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1266, 'Gabriel Oliveira', '(75) 99207-8287', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-04-11', '17:00', 'concluido', '2026-04-10T23:59:45.193892+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (411, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-11', '18:00', 'bloqueado', '2026-03-10T11:44:33.004374+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (2768, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-07-09', '11:00', 'bloqueado', '2026-07-09T05:36:48.876431+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (380, 'Filipe', '(75) 99161-6558', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-09', '14:30', 'concluido', '2026-03-09T13:54:35.374073+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (350, 'Gabriel Oliveira', '(75) 99207-8287', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-09', '16:00', 'concluido', '2026-03-08T17:58:51.718757+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (382, 'Agmar lima oliveira', '(75) 99227-7502', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-09', '17:30', 'concluido', '2026-03-09T17:02:27.740367+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (366, 'Nilson ', '(75) 99822-4423', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-09', '18:00', 'concluido', '2026-03-09T10:35:31.877329+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (390, 'Matheus ', '(75) 99130-9559', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-03-10', '08:30', 'concluido', '2026-03-09T22:19:21.006361+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (389, 'alexandro', '(75) 99107-3283', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-03-10', '10:00', 'concluido', '2026-03-09T19:35:18.132642+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (415, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-12', '08:30', 'bloqueado', '2026-03-10T16:52:10.698703+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (416, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-12', '09:00', 'bloqueado', '2026-03-10T16:52:10.698703+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (417, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-12', '09:30', 'bloqueado', '2026-03-10T16:52:10.698703+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (418, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-12', '10:00', 'bloqueado', '2026-03-10T16:52:10.698703+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (419, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-12', '10:30', 'bloqueado', '2026-03-10T16:52:10.698703+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (420, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-12', '11:00', 'bloqueado', '2026-03-10T16:52:10.698703+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (421, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-12', '11:30', 'bloqueado', '2026-03-10T16:52:10.698703+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (422, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-12', '14:00', 'bloqueado', '2026-03-10T16:52:10.698703+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (423, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-12', '14:30', 'bloqueado', '2026-03-10T16:52:10.698703+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (424, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-12', '15:00', 'bloqueado', '2026-03-10T16:52:10.698703+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (425, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-12', '15:30', 'bloqueado', '2026-03-10T16:52:10.698703+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (426, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-12', '16:00', 'bloqueado', '2026-03-10T16:52:10.698703+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (413, 'Antônio Junior', '(71) 99272-4836', 'Degradê - R$ 25', 25, 2, 'Denilson', '2026-03-10', '17:00', 'concluido', '2026-03-10T11:45:53.280761+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (388, 'Wiliam lima', '(75) 99240-1172', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-03-11', '09:30', 'concluido', '2026-03-09T17:56:55.050328+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (414, 'Well', '(75) 99208-1547', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-11', '10:00', 'concluido', '2026-03-10T11:46:32.921815+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (392, 'Sávio Lopes ', '(75) 99164-8830', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-03-12', '18:00', 'concluido', '2026-03-10T01:31:27.624334+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (381, 'Rafael Borges ', '(75) 99270-6280', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-13', '08:30', 'concluido', '2026-03-09T16:35:24.397315+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (379, 'Jhon Lucas lima da silva', '(75) 99244-8485', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-13', '17:30', 'concluido', '2026-03-09T12:53:03.501038+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (393, 'Vinícius ', '(75) 99130-9559', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-14', '18:30', 'concluido', '2026-03-10T10:34:43.382787+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1334, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-05-28', '17:30', 'concluido', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (427, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-12', '16:30', 'bloqueado', '2026-03-10T16:52:10.698703+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (428, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-12', '17:00', 'bloqueado', '2026-03-10T16:52:10.698703+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (429, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-12', '17:30', 'bloqueado', '2026-03-10T16:52:10.698703+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (2769, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-07-09', '11:30', 'bloqueado', '2026-07-09T05:36:48.876431+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (440, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-11', '18:30', 'bloqueado', '2026-03-11T19:12:36.038727+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (441, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-11', '17:30', 'bloqueado', '2026-03-11T19:12:36.038727+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (442, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-11', '16:30', 'bloqueado', '2026-03-11T19:37:59.303898+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (443, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-11', '17:00', 'bloqueado', '2026-03-11T19:37:59.303898+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (444, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-11', '17:30', 'bloqueado', '2026-03-11T19:37:59.303898+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1309, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-04-14', '08:30', 'bloqueado', '2026-04-14T10:36:03.381645+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (445, 'Miccael Nunes ', '(75) 99154-2626', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-13', '11:00', 'cancelado', '2026-03-11T20:47:10.248506+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (432, 'Gelisson ', '(75) 99121-4764', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-03-11', '08:30', 'concluido', '2026-03-11T09:50:17.227651+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (434, 'Joalysson de queiroz viana', '(75) 99178-7427', 'Corte Social - R$ 25', 25, 2, 'Denilson', '2026-03-11', '09:30', 'concluido', '2026-03-11T11:59:04.172195+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (436, 'Joaquim Queiroz ', '(75) 99173-1032', 'Corte Social - R$ 25', 25, 2, 'Denilson', '2026-03-11', '14:00', 'concluido', '2026-03-11T14:08:00.036183+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (439, 'Ryan', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-03-11', '14:30', 'concluido', '2026-03-11T17:08:17.762034+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (438, 'Tarsio', '(75) 99175-4215', 'Degradê - R$ 25', 25, 2, 'Denilson', '2026-03-11', '16:00', 'concluido', '2026-03-11T16:18:31.949873+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (433, 'Mundinho ', '(75) 99130-9559', 'Navalhado - R$ 25', 25, 1, 'Geilson', '2026-03-12', '08:30', 'concluido', '2026-03-11T11:18:09.852995+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (446, 'Kekeu ', 'Gff', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-12', '09:30', 'concluido', '2026-03-11T22:07:46.27863+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (449, 'Marcílio Cajé', '(74) 99987-8831', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-12', '10:00', 'concluido', '2026-03-12T10:34:57.977101+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (451, 'Mary', '(11) 95959-4866', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-12', '14:00', 'concluido', '2026-03-12T10:49:46.752039+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (453, 'Inácio ', '(75) 99176-0515', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-12', '14:30', 'concluido', '2026-03-12T14:08:59.378003+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (431, 'Benício ', '(75) 99210-4603', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-03-12', '15:30', 'concluido', '2026-03-10T19:40:59.762656+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (430, 'Daniel ', '(75) 99210-4603', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-03-12', '16:00', 'concluido', '2026-03-10T19:40:09.366903+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (437, 'Sidmar Marcos de Queiroz ', '(75) 99170-9373', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-12', '17:00', 'concluido', '2026-03-11T15:37:32.72248+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (454, 'Sileu', '(75) 99130-9559', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-12', '18:30', 'concluido', '2026-03-12T14:13:38.270818+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (460, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-13', '08:30', 'bloqueado', '2026-03-13T10:38:41.966524+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (461, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-13', '09:30', 'bloqueado', '2026-03-13T10:57:30.951212+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (462, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-13', '11:00', 'bloqueado', '2026-03-13T10:57:30.951212+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (458, 'Janderson de Jesus Pinto', '(75) 99241-2440', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-13', '14:30', 'concluido', '2026-03-13T08:54:48.754497+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (468, 'Alison ', '(75) 99130-9559', 'Corte Social - R$ 25', 25, 2, 'Denilson', '2026-03-13', '14:30', 'concluido', '2026-03-13T16:32:57.583732+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (459, 'Mateus lima', '(75) 99247-7386', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-03-13', '16:00', 'cancelado', '2026-03-13T09:46:35.333784+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (473, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-14', '08:30', 'bloqueado', '2026-03-13T22:03:08.744995+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (485, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-14', '17:30', 'bloqueado', '2026-03-14T15:42:37.224347+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (486, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-14', '18:00', 'bloqueado', '2026-03-14T15:42:37.224347+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (487, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-14', '18:30', 'bloqueado', '2026-03-14T15:42:37.224347+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (464, 'Vandeilson Oliveira de Queiroz ', '(75) 99136-7173', 'Degradê - R$ 25', 25, 2, 'Denilson', '2026-03-13', '09:30', 'concluido', '2026-03-13T15:04:23.924961+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (452, 'Jonathan anjos Oliveira ', '(75) 99259-4884', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-03-13', '10:00', 'concluido', '2026-03-12T13:17:45.250834+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (466, 'Erick', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-03-13', '16:30', 'concluido', '2026-03-13T16:07:52.328658+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (471, 'Wesley ', '(75) 99130-9559', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-03-13', '17:00', 'concluido', '2026-03-13T18:35:21.189987+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (469, 'Felipe ', '(75) 99130-9559', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-13', '18:00', 'concluido', '2026-03-13T16:33:25.261358+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (457, 'Vinícius ', '(75) 99130-9559', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-13', '18:30', 'concluido', '2026-03-12T20:19:14.714926+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (455, 'Miccael Nunes ', '(75) 99154-2626', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-14', '09:30', 'concluido', '2026-03-12T20:11:17.20694+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (470, 'Marcos ', '(75) 99130-9559', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-03-14', '09:30', 'concluido', '2026-03-13T18:32:15.628532+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (456, 'Edoaldo quaresma de souza ', '(74) 98126-5237', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-03-14', '10:00', 'concluido', '2026-03-12T20:17:33.395792+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (465, 'Jhon ', '(75) 99130-9559', 'Corte Social - R$ 25', 25, 2, 'Denilson', '2026-03-14', '10:00', 'concluido', '2026-03-13T15:22:41.169104+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (480, 'Robs', '(75) 99130-9559', 'Corte Social - R$ 25', 25, 2, 'Denilson', '2026-03-14', '11:00', 'concluido', '2026-03-14T12:15:35.492267+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (472, 'Reinan', '(75) 99130-9559', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-14', '11:00', 'concluido', '2026-03-13T20:17:11.209221+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (463, 'Marcos Antônio Silva de Queiroz', '(75) 99250-4975', 'Barba e Pezinho - R$ 15', 15, 1, 'Geilson', '2026-03-14', '14:00', 'concluido', '2026-03-13T13:16:27.244372+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (483, 'Guilherme Mota Araujo ', '(75) 99172-0247', 'Corte Social - R$ 25', 25, 2, 'Denilson', '2026-03-14', '14:00', 'concluido', '2026-03-14T12:42:35.247308+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (481, 'Matheus Queiroz ', '(75) 99183-8122', 'Degradê - R$ 25', 25, 2, 'Denilson', '2026-03-14', '14:30', 'concluido', '2026-03-14T12:23:17.23208+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (474, 'Lomes', '(75) 99130-9559', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-14', '14:30', 'concluido', '2026-03-13T22:20:53.605987+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (477, 'Benhur Correia', '(75) 99192-2416', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-14', '15:30', 'concluido', '2026-03-14T11:20:25.255133+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (482, 'Juflan ', '(75) 99130-9559', 'Degradê - R$ 25', 25, 2, 'Denilson', '2026-03-14', '15:30', 'concluido', '2026-03-14T12:33:48.149441+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (447, 'Alan Arcanjo ', '(75) 98225-7258', 'Navalhado - R$ 25', 25, 2, 'Denilson', '2026-03-14', '16:00', 'concluido', '2026-03-11T23:12:16.380526+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (484, 'Pedro Laranjeira', '(75) 99144-8096', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-03-14', '16:00', 'concluido', '2026-03-14T12:58:54.785418+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (476, 'Victor Araújo ', '(75) 99154-4516', 'Degradê - R$ 25', 25, 2, 'Denilson', '2026-03-14', '17:00', 'concluido', '2026-03-14T11:15:33.936897+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (478, 'José Wilson de Queiroz ', '(75) 99242-9758', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-14', '17:00', 'concluido', '2026-03-14T11:56:11.892354+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (479, 'José Wedson Oliveira De Queiroz ', '(75) 99242-9758', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-03-14', '17:30', 'concluido', '2026-03-14T11:59:34.726037+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (475, 'Richard', '(75) 99273-8957', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-03-16', '16:00', 'concluido', '2026-03-14T08:05:55.464504+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (489, 'Gabriel Trabuco De Queiroz', '(75) 99231-7977', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-21', '09:30', 'concluido', '2026-03-14T22:05:01.76995+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (490, 'Arthur Gabriel ', '(75) 99231-7977', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-21', '10:00', 'concluido', '2026-03-14T22:06:03.898993+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (492, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-16', '08:30', 'bloqueado', '2026-03-15T15:21:35.817088+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (2770, 'Mateus ', '(75) 99163-7525', 'Navalhado - R$ 25', 25, 1, 'Geilson', '2026-07-09', '16:00', 'confirmado', '2026-07-09T09:44:13.935415+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1268, 'Fechado ', '(75) 99130-9559', 'Barba e Pezinho - R$ 15', 15, 1, 'Geilson', '2026-04-11', '18:00', 'concluido', '2026-04-11T10:02:32.050278+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1310, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-04-14', '09:30', 'bloqueado', '2026-04-14T10:36:12.265263+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1335, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-06-04', '17:30', 'concluido', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (502, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-17', '18:30', 'bloqueado', '2026-03-15T15:23:15.270311+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (503, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-17', '18:00', 'bloqueado', '2026-03-15T15:23:15.270311+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (504, 'Tonhao ', '(75) 99178-6580', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-16', '17:00', 'cancelado', '2026-03-16T00:13:18.447126+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (509, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-16', '08:30', 'bloqueado', '2026-03-16T11:11:37.571668+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (510, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-16', '09:00', 'bloqueado', '2026-03-16T11:11:37.571668+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (511, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-16', '09:30', 'bloqueado', '2026-03-16T11:11:37.571668+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (512, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-16', '10:00', 'bloqueado', '2026-03-16T12:26:17.281998+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (513, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-16', '10:30', 'bloqueado', '2026-03-16T12:26:17.281998+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (514, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-16', '11:00', 'bloqueado', '2026-03-16T12:26:17.281998+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (515, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-16', '11:30', 'bloqueado', '2026-03-16T12:26:17.281998+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (435, 'José Ednan ', '(75) 99817-8131', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-14', '08:30', 'concluido', '2026-03-11T12:28:15.825811+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (516, 'Victor Ferreira Firmo ', '(75) 99103-3487', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-16', '11:00', 'concluido', '2026-03-16T13:50:34.599494+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (508, 'Eldes Queiroz ', '(75) 98821-0706', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-16', '14:00', 'concluido', '2026-03-16T10:33:22.385789+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (507, 'Marcos Cauã Araújo Queiroz ', '(75) 99148-5624', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-03-16', '14:00', 'concluido', '2026-03-16T10:33:11.560692+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (518, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-16', '17:30', 'bloqueado', '2026-03-16T19:55:03.469493+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (519, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-16', '18:00', 'bloqueado', '2026-03-16T19:55:03.469493+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (520, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-16', '18:30', 'bloqueado', '2026-03-16T19:55:03.469493+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (524, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-17', '08:30', 'bloqueado', '2026-03-16T21:59:12.807538+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (531, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-17', '14:00', 'bloqueado', '2026-03-17T15:34:03.127271+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (532, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-17', '14:30', 'bloqueado', '2026-03-17T15:34:03.127271+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (506, 'Daniel de Brito Lima dos Santos ', '(75) 99102-9692', 'Navalhado - R$ 25', 25, 2, 'Denilson', '2026-03-16', '17:00', 'concluido', '2026-03-16T09:52:25.885729+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (528, 'Franthiallem ', '(75) 99857-6054', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-17', '08:30', 'concluido', '2026-03-17T11:05:40.467672+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (530, 'Diego Santos', '(75) 99148-8880', 'Corte Social - R$ 25', 25, 2, 'Denilson', '2026-03-17', '09:30', 'concluido', '2026-03-17T11:25:53.683718+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (521, 'Esso', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-03-17', '10:00', 'concluido', '2026-03-16T21:58:11.028781+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (505, 'Tonhao', '(75) 99178-6580', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-17', '11:00', 'concluido', '2026-03-16T00:16:04.863631+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (534, 'Danilo Queiroz', '(75) 99111-4914', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-17', '15:30', 'concluido', '2026-03-17T16:42:24.690312+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (523, 'flávio ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-03-17', '11:00', 'concluido', '2026-03-16T21:58:54.35723+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (544, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-18', '08:30', 'bloqueado', '2026-03-18T03:53:03.057867+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (547, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-18', '09:30', 'bloqueado', '2026-03-18T12:56:25.006188+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (548, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-18', '10:30', 'bloqueado', '2026-03-18T12:56:25.006188+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (549, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-18', '11:30', 'bloqueado', '2026-03-18T12:56:25.006188+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (550, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-18', '11:00', 'bloqueado', '2026-03-18T12:56:25.006188+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (551, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-18', '10:00', 'bloqueado', '2026-03-18T12:56:25.006188+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (552, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '08:30', 'bloqueado', '2026-03-18T13:40:34.119304+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (553, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '09:00', 'bloqueado', '2026-03-18T13:40:34.119304+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (554, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '09:30', 'bloqueado', '2026-03-18T13:40:34.119304+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (555, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '10:00', 'bloqueado', '2026-03-18T13:40:34.119304+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (556, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '10:30', 'bloqueado', '2026-03-18T13:40:34.119304+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (557, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '11:00', 'bloqueado', '2026-03-18T13:40:34.119304+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (558, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '11:30', 'bloqueado', '2026-03-18T13:40:34.119304+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (559, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '12:00', 'bloqueado', '2026-03-18T13:40:34.119304+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (560, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '12:30', 'bloqueado', '2026-03-18T13:40:34.119304+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (561, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '13:00', 'bloqueado', '2026-03-18T13:40:34.119304+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (562, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '13:30', 'bloqueado', '2026-03-18T13:40:34.119304+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (563, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '14:00', 'bloqueado', '2026-03-18T13:40:34.119304+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (564, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '14:30', 'bloqueado', '2026-03-18T13:40:34.119304+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (527, 'Clesiley Moreira de Queiroz', '(75) 98152-0855', 'Navalhado - R$ 25', 25, 1, 'Geilson', '2026-03-18', '08:30', 'concluido', '2026-03-17T09:49:51.135235+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (529, 'Mateus ', '(75) 99127-0577', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-18', '09:30', 'concluido', '2026-03-17T11:25:01.951542+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (536, 'Lucas ', '(75) 99273-8957', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-03-18', '11:00', 'concluido', '2026-03-17T18:34:25.579089+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (526, 'Dito ', '(75) 99163-0912', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-18', '14:00', 'concluido', '2026-03-17T01:07:03.306721+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (537, 'Matheus', '(75) 99107-3283', 'Degradê - R$ 25', 25, 2, 'Denilson', '2026-03-18', '14:30', 'concluido', '2026-03-17T18:46:14.916867+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (538, 'Ruan lima carvalho', '(75) 99141-3464', 'Navalhado - R$ 25', 25, 1, 'Geilson', '2026-03-18', '17:00', 'concluido', '2026-03-17T20:40:29.564993+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (543, 'Jonathan anjos Oliveira ', '(75) 99259-4884', 'Barba e Pezinho - R$ 15', 15, 2, 'Denilson', '2026-03-18', '17:00', 'concluido', '2026-03-18T00:16:28.065156+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (539, 'Kaio', '(75) 98814-4136', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-18', '17:30', 'concluido', '2026-03-17T21:57:05.926875+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (535, 'Wiliam lima', '(75) 99240-1172', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-03-19', '10:00', 'concluido', '2026-03-17T18:21:51.775134+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (540, 'Matheus ', '(75) 99130-9559', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-19', '09:30', 'concluido', '2026-03-17T23:16:19.202444+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (533, 'Ruan lima carvalho', '(75) 99141-3464', 'Navalhado - R$ 25', 25, 1, 'Geilson', '2026-03-19', '16:00', 'concluido', '2026-03-17T15:51:27.87247+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (542, 'Leto', '(71) 99226-3219', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-21', '08:30', 'cancelado', '2026-03-17T23:40:31.357353+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (517, 'Diego de Lima Queiroz ', '(75) 99138-0236', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-20', '11:00', 'concluido', '2026-03-16T17:06:06.963948+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (541, 'Reinan', '(75) 99252-8559', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-20', '17:30', 'concluido', '2026-03-17T23:18:35.595409+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (546, 'Vitor kaian', '(75) 99174-9404', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-21', '14:00', 'concluido', '2026-03-18T11:14:23.235238+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (565, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '15:00', 'bloqueado', '2026-03-18T13:40:34.119304+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (566, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '15:30', 'bloqueado', '2026-03-18T13:40:34.119304+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (567, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '16:00', 'bloqueado', '2026-03-18T13:40:34.119304+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (568, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '16:30', 'bloqueado', '2026-03-18T13:40:34.119304+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (569, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '17:00', 'bloqueado', '2026-03-18T13:40:34.119304+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (570, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '08:30', 'bloqueado', '2026-03-18T13:40:34.217963+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (571, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '09:00', 'bloqueado', '2026-03-18T13:40:34.217963+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (572, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '09:30', 'bloqueado', '2026-03-18T13:40:34.217963+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (573, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '10:00', 'bloqueado', '2026-03-18T13:40:34.217963+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (574, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '10:30', 'bloqueado', '2026-03-18T13:40:34.217963+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (575, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '11:00', 'bloqueado', '2026-03-18T13:40:34.217963+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (576, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '11:30', 'bloqueado', '2026-03-18T13:40:34.217963+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (577, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '12:00', 'bloqueado', '2026-03-18T13:40:34.217963+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (578, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '12:30', 'bloqueado', '2026-03-18T13:40:34.217963+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (579, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '13:00', 'bloqueado', '2026-03-18T13:40:34.217963+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (580, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '13:30', 'bloqueado', '2026-03-18T13:40:34.217963+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (581, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '14:00', 'bloqueado', '2026-03-18T13:40:34.217963+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (582, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '14:30', 'bloqueado', '2026-03-18T13:40:34.217963+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (583, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '15:00', 'bloqueado', '2026-03-18T13:40:34.217963+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (584, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '15:30', 'bloqueado', '2026-03-18T13:40:34.217963+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (585, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '16:00', 'bloqueado', '2026-03-18T13:40:34.217963+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (586, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '16:30', 'bloqueado', '2026-03-18T13:40:34.217963+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (587, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '17:00', 'bloqueado', '2026-03-18T13:40:34.217963+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (588, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '08:30', 'bloqueado', '2026-03-18T13:40:34.282232+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (589, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '09:00', 'bloqueado', '2026-03-18T13:40:34.282232+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (590, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '09:30', 'bloqueado', '2026-03-18T13:40:34.282232+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (591, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '10:00', 'bloqueado', '2026-03-18T13:40:34.282232+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (592, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '10:30', 'bloqueado', '2026-03-18T13:40:34.282232+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (593, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '11:00', 'bloqueado', '2026-03-18T13:40:34.282232+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (594, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '11:30', 'bloqueado', '2026-03-18T13:40:34.282232+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (595, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '12:00', 'bloqueado', '2026-03-18T13:40:34.282232+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (596, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '12:30', 'bloqueado', '2026-03-18T13:40:34.282232+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (597, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '13:00', 'bloqueado', '2026-03-18T13:40:34.282232+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (598, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '13:30', 'bloqueado', '2026-03-18T13:40:34.282232+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (599, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '14:00', 'bloqueado', '2026-03-18T13:40:34.282232+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (600, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '14:30', 'bloqueado', '2026-03-18T13:40:34.282232+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (601, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '15:00', 'bloqueado', '2026-03-18T13:40:34.282232+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (602, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '15:30', 'bloqueado', '2026-03-18T13:40:34.282232+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (603, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '16:00', 'bloqueado', '2026-03-18T13:40:34.282232+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (604, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '16:30', 'bloqueado', '2026-03-18T13:40:34.282232+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (605, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-19', '17:00', 'bloqueado', '2026-03-18T13:40:34.282232+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (610, 'Cairo', '(75) 99130-9559', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-18', '14:30', 'concluido', '2026-03-18T14:38:27.285241+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (608, 'Mateus lima', '(75) 99247-7386', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-18', '18:00', 'concluido', '2026-03-18T14:00:27.896692+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (618, 'Jones Fernandes', '(75) 99207-6841', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-19', '08:30', 'concluido', '2026-03-19T10:53:38.112805+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1269, 'Sileu', '(75) 99130-9559', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-11', '16:00', 'concluido', '2026-04-11T10:03:15.112795+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (2800, 'Carlos Vinicius Santos Queiroz  péto ', '(75) 98854-9197', 'Degradê - R$ 25', 25, 2, 'Denilson', '2026-07-11', '15:30', 'confirmado', '2026-07-11T12:17:29.514438+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1337, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-06-18', '17:30', 'confirmado', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (612, 'João pyetro ', '(75) 99126-7217', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-03-19', '17:00', 'cancelado', '2026-03-18T22:47:43.066212+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (607, 'Anthony Diamantino ', '(75) 99222-0904', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-19', '14:00', 'concluido', '2026-03-18T13:42:01.037617+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (606, 'Anderson Diamantino ', '(75) 99222-0904', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-19', '14:30', 'concluido', '2026-03-18T13:41:02.288528+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (616, 'Dd', '(75) 99206-9210', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-03-19', '15:30', 'concluido', '2026-03-19T08:05:17.189655+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (630, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-20', '14:00', 'bloqueado', '2026-03-19T22:56:04.434569+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (631, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-20', '15:00', 'bloqueado', '2026-03-19T22:56:04.434569+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (632, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-20', '08:30', 'bloqueado', '2026-03-19T22:56:31.377414+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (609, 'NUBSON LIMA FERREIRA', '(75) 98175-9152', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-20', '08:30', 'concluido', '2026-03-18T14:05:34.577738+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (625, 'Luciano Ferreira de Queiroz ', '(79) 99851-8559', 'Degradê - R$ 25', 25, 2, 'Denilson', '2026-03-20', '09:30', 'concluido', '2026-03-19T16:11:39.896227+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (629, 'Cara', '(75) 99130-9559', 'Barba e Pezinho - R$ 15', 15, 2, 'Denilson', '2026-03-20', '10:00', 'concluido', '2026-03-19T22:25:58.509383+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (611, 'Gugu', '(75) 99287-2805', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-20', '14:30', 'concluido', '2026-03-18T16:19:43.300539+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (627, 'Demi', '(75) 99130-9559', 'Corte Social - R$ 25', 25, 2, 'Denilson', '2026-03-20', '14:30', 'concluido', '2026-03-19T22:09:35.92917+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (628, 'Demi filho ', '(75) 99130-9559', 'Degradê - R$ 25', 25, 2, 'Denilson', '2026-03-20', '15:30', 'concluido', '2026-03-19T22:10:08.373954+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (617, 'Yure Silva ', '(75) 99275-6136', 'Navalhado - R$ 25', 25, 1, 'Geilson', '2026-03-20', '16:00', 'concluido', '2026-03-19T10:38:24.042727+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (619, 'Ilke Itamar', '(75) 98823-0383', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-20', '17:00', 'concluido', '2026-03-19T12:17:10.716863+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (614, 'Henrique Gabriel Mota de Santana ', '(75) 98831-9034', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-03-21', '08:30', 'concluido', '2026-03-19T00:08:16.703403+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (633, 'José Weslei ', '(75) 99146-2469', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-03-21', '09:30', 'concluido', '2026-03-20T00:10:20.126193+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (620, 'Fernando Fabio dos Santos Oliveira ', '(75) 99252-0665', 'Navalhado - R$ 25', 25, 1, 'Geilson', '2026-03-21', '15:30', 'concluido', '2026-03-19T13:23:57.818058+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1320, 'Filho Wedson ', '(75) 99130-9559', 'Corte Social - R$ 25', 25, 2, 'Denilson', '2026-04-15', '10:00', 'concluido', '2026-04-15T10:37:03.698482+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (2819, 'Mateus ', '(75) 99127-0577', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-07-14', '08:30', 'confirmado', '2026-07-13T21:56:03.818537+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1336, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-06-11', '17:30', 'concluido', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (634, 'Julio Henrique ', '(75) 99939-9996', 'Degradê - R$ 25', 25, 2, 'Denilson', '2026-03-23', '11:00', 'cancelado', '2026-03-20T02:15:16.772558+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (623, 'Wedson ', '(75) 99130-9559', 'Barba e Pezinho - R$ 15', 15, 1, 'Geilson', '2026-03-19', '18:00', 'concluido', '2026-03-19T15:16:26.952858+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (624, 'Mailson Oliveira de Queiroz ', '(75) 99187-0511', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-03-19', '18:30', 'concluido', '2026-03-19T16:06:56.696537+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (638, 'Rau', '(75) 99130-9559', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-03-20', '16:00', 'concluido', '2026-03-20T13:42:50.118596+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (636, 'Ueslei Damião santos ', '(75) 99142-2834', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-03-20', '17:00', 'concluido', '2026-03-20T09:06:14.420468+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (637, 'Leto', '(71) 99226-3219', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-20', '18:30', 'concluido', '2026-03-20T12:35:25.436192+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (648, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-21', '18:30', 'bloqueado', '2026-03-21T11:17:01.583996+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (649, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-21', '18:00', 'bloqueado', '2026-03-21T11:17:01.583996+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (650, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-21', '17:30', 'bloqueado', '2026-03-21T11:17:01.583996+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (651, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-21', '17:00', 'bloqueado', '2026-03-21T11:17:01.583996+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (652, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-21', '16:30', 'bloqueado', '2026-03-21T11:17:01.583996+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (639, 'Elisson', '(75) 99110-5809', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-21', '08:30', 'concluido', '2026-03-20T15:11:39.182191+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (643, 'André ', '(75) 99130-9559', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-21', '11:00', 'concluido', '2026-03-20T23:19:19.471283+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (658, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-23', '08:30', 'bloqueado', '2026-03-22T01:17:53.417579+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (659, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-23', '09:30', 'bloqueado', '2026-03-22T01:17:53.417579+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (660, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-23', '10:00', 'bloqueado', '2026-03-22T01:17:53.417579+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (661, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-23', '11:00', 'bloqueado', '2026-03-22T01:17:53.417579+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (664, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-23', '17:00', 'bloqueado', '2026-03-23T01:23:27.322931+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (665, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-23', '16:30', 'bloqueado', '2026-03-23T01:23:27.322931+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (666, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-23', '16:00', 'bloqueado', '2026-03-23T01:23:27.322931+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (667, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-23', '15:30', 'bloqueado', '2026-03-23T01:23:27.322931+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (668, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-23', '15:00', 'bloqueado', '2026-03-23T01:23:27.322931+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (669, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-23', '14:30', 'bloqueado', '2026-03-23T01:23:27.322931+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (670, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-23', '14:00', 'bloqueado', '2026-03-23T01:23:27.322931+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (2772, 'Bento', '(75) 99130-9559', 'Corte Social - R$ 25', 25, 2, 'Denilson', '2026-07-09', '16:00', 'confirmado', '2026-07-09T16:39:02.369822+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (671, 'João pyetro ', '(75) 99126-7217', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-03-23', '15:30', 'concluido', '2026-03-23T11:08:00.535008+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (663, 'Luis Felipe Mota Silva Dos Santos', '(38) 98417-9568', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-03-23', '14:30', 'concluido', '2026-03-23T00:11:12.109031+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (662, 'Matheus Queiroz Lima ', '(75) 99122-6349', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-23', '14:00', 'concluido', '2026-03-22T18:51:07.142058+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (672, 'Pedro Kleber Matos de Araújo', '(71) 99121-7676', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-23', '17:00', 'concluido', '2026-03-23T12:28:21.124441+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (677, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-24', '08:30', 'bloqueado', '2026-03-24T10:02:37.835687+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (640, 'Luis Henrique ', '(75) 99195-0385', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-03-21', '10:00', 'concluido', '2026-03-20T17:54:56.007991+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (641, 'Daniel Queiroz ', '(75) 99263-4369', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-03-21', '11:00', 'concluido', '2026-03-20T18:12:31.86724+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (654, 'thierry', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-03-21', '14:00', 'concluido', '2026-03-21T11:52:02.071293+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (656, 'Dualdo ', '(75) 99130-9559', 'Corte Social - R$ 25', 25, 2, 'Denilson', '2026-03-21', '14:30', 'concluido', '2026-03-21T13:20:11.036748+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (645, 'Deir', '(75) 99150-8002', 'Navalhado - R$ 25', 25, 1, 'Geilson', '2026-03-21', '14:30', 'concluido', '2026-03-21T01:03:16.064366+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (655, 'walison', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-03-21', '15:30', 'concluido', '2026-03-21T12:45:55.907513+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (657, 'Rafael ', '(75) 99130-9559', 'Corte Social - R$ 25', 25, 2, 'Denilson', '2026-03-21', '16:00', 'concluido', '2026-03-21T13:32:55.024482+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (642, 'Elison', '(75) 99130-9559', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-21', '16:00', 'concluido', '2026-03-20T20:12:50.385915+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (644, 'Quelho ', '(75) 99130-9559', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-21', '17:00', 'concluido', '2026-03-20T23:20:32.20159+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (646, 'Saulo de Oliveira ', '(75) 99150-5991', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-03-21', '17:30', 'concluido', '2026-03-21T09:15:27.449105+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (647, 'Vinícius ', '(75) 99130-9559', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-21', '18:00', 'concluido', '2026-03-21T10:17:13.952413+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (653, 'Marcílio Cajé', '(74) 99987-8831', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-21', '18:30', 'concluido', '2026-03-21T11:49:25.198393+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (675, 'Mateus lima', '(75) 99247-7386', 'Navalhado - R$ 25', 25, 1, 'Geilson', '2026-03-23', '18:00', 'concluido', '2026-03-23T20:14:52.035647+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (678, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-24', '08:30', 'bloqueado', '2026-03-24T11:34:19.045521+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (679, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-24', '09:00', 'bloqueado', '2026-03-24T11:34:19.045521+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (680, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-24', '09:30', 'bloqueado', '2026-03-24T11:34:19.045521+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (681, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-24', '10:00', 'bloqueado', '2026-03-24T11:34:19.045521+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (682, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-24', '10:30', 'bloqueado', '2026-03-24T11:34:19.045521+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (683, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-24', '11:00', 'bloqueado', '2026-03-24T11:34:19.045521+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (684, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-24', '11:30', 'bloqueado', '2026-03-24T11:34:19.045521+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1022, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-10', '14:00', 'concluido', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (688, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-24', '17:00', 'bloqueado', '2026-03-24T16:57:12.036645+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (689, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-24', '16:30', 'bloqueado', '2026-03-24T16:57:12.036645+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (690, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-24', '16:00', 'bloqueado', '2026-03-24T16:57:12.036645+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (691, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-24', '18:30', 'bloqueado', '2026-03-24T19:27:19.952291+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (692, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-24', '18:00', 'bloqueado', '2026-03-24T19:27:19.952291+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (693, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-24', '17:30', 'bloqueado', '2026-03-24T19:27:19.952291+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (694, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-24', '17:00', 'bloqueado', '2026-03-24T19:27:19.952291+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (698, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-25', '18:30', 'bloqueado', '2026-03-24T22:01:13.019149+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (699, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-25', '18:00', 'bloqueado', '2026-03-24T22:01:13.019149+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (687, ' Galvão ', '(75) 98828-6808', 'Barba e Pezinho - R$ 15', 15, 1, 'Geilson', '2026-03-24', '14:00', 'concluido', '2026-03-24T16:02:29.793066+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (674, 'Natan', '(75) 99130-9559', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-03-24', '14:30', 'concluido', '2026-03-23T17:46:14.674121+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (635, 'Julio ', '(75) 99939-9996', 'Degradê - R$ 25', 25, 2, 'Denilson', '2026-03-28', '11:00', 'cancelado', '2026-03-20T02:49:24.128544+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (686, 'Miccael Nunes ', '(75) 99154-2626', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-27', '08:30', 'cancelado', '2026-03-24T13:05:11.584367+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (695, 'Raul Nunes', '(75) 99144-7547', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-26', '16:00', 'concluido', '2026-03-24T19:42:37.820573+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (676, 'Rafael Borges ', '(75) 99270-6280', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-27', '14:30', 'concluido', '2026-03-24T09:52:09.222365+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (700, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-25', '17:30', 'bloqueado', '2026-03-24T22:01:13.019149+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (701, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-25', '17:00', 'bloqueado', '2026-03-24T22:01:13.019149+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (702, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-25', '16:00', 'bloqueado', '2026-03-24T22:01:13.019149+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (703, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-25', '15:30', 'bloqueado', '2026-03-24T22:01:13.019149+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (704, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-25', '14:30', 'bloqueado', '2026-03-24T22:01:13.019149+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (705, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-25', '14:00', 'bloqueado', '2026-03-24T22:01:13.019149+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (685, 'Marcílio Cajé', '(74) 99987-8831', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-24', '09:30', 'concluido', '2026-03-24T12:16:37.285729+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (717, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-26', '11:00', 'bloqueado', '2026-03-26T12:39:08.954241+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (718, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-26', '10:00', 'bloqueado', '2026-03-26T12:39:08.954241+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (719, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-26', '14:00', 'bloqueado', '2026-03-26T12:39:08.954241+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (720, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-26', '15:30', 'bloqueado', '2026-03-26T12:39:08.954241+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (721, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-26', '14:30', 'bloqueado', '2026-03-26T12:39:08.954241+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (722, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-26', '17:00', 'bloqueado', '2026-03-26T12:39:08.954241+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (710, 'Julio ', '(75) 99939-9996', 'Degradê - R$ 25', 25, 2, 'Denilson', '2026-03-26', '16:00', 'cancelado', '2026-03-25T15:53:08.892936+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (706, 'Tarsio', '(75) 99175-4215', 'Degradê - R$ 25', 25, 2, 'Denilson', '2026-03-25', '14:30', 'concluido', '2026-03-25T12:17:11.772341+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (714, 'Neto Ferreira ', '(75) 99145-6863', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-03-26', '09:30', 'concluido', '2026-03-26T11:50:09.004763+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (716, 'Daniel ', '(75) 99130-9559', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-26', '10:00', 'concluido', '2026-03-26T12:35:33.66324+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (713, 'Raul Silva', '(75) 99216-3937', 'Barba e Pezinho - R$ 15', 15, 1, 'Geilson', '2026-03-26', '11:00', 'concluido', '2026-03-26T09:33:16.714213+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (708, 'Fernando Santana de Oliveira Junior ', '(75) 99107-6770', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-26', '14:00', 'concluido', '2026-03-25T15:02:15.265917+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1185, 'Diego de Lima Queiroz ', '(75) 99138-0236', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-10', '17:00', 'concluido', '2026-04-06T16:14:51.609653+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (349, 'Adevan Pereira ', '(75) 99893-9078', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-11', '14:00', 'concluido', '2026-03-07T18:30:37.72675+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (733, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-27', '08:30', 'bloqueado', '2026-03-27T02:42:53.939264+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (734, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-27', '09:30', 'bloqueado', '2026-03-27T02:42:53.939264+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1267, 'Erisvaldo de Souza Galvão ', '(75) 98828-6808', 'Barba e Pezinho - R$ 15', 15, 2, 'Denilson', '2026-04-11', '14:00', 'concluido', '2026-04-11T02:19:21.552357+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1271, 'RODRIGO DE OLIVEIRA DA COSTA E SOUSA', '(15) 99767-0244', 'Degradê - R$ 25', 25, 2, 'Denilson', '2026-04-11', '14:30', 'concluido', '2026-04-11T13:02:27.935942+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (2773, 'Saymon Galvão', '(75) 99112-7596', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-07-14', '11:00', 'confirmado', '2026-07-09T17:34:24.716942+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (749, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-06-19', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (754, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-07-24', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (711, 'Eliabe de Queiroz Anjos Moreira ', '(75) 98808-9829', 'Corte Social - R$ 25', 25, 2, 'Denilson', '2026-03-25', '17:00', 'concluido', '2026-03-25T16:14:27.388325+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (724, 'Schaide Nunes', '(75) 99150-3949', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-03-26', '15:30', 'concluido', '2026-03-26T16:41:24.754796+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (715, 'Kauan Lacerda da Silva ', '(75) 98809-1576', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-26', '18:30', 'concluido', '2026-03-26T12:07:07.624334+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (737, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-27', '10:00', 'concluido', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (725, 'Miccael Nunes ', '(75) 99154-2626', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-27', '18:30', 'cancelado', '2026-03-26T17:14:06.192244+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (729, 'Kennedy Dias', '(75) 99224-0716', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-03-28', '10:00', 'cancelado', '2026-03-26T22:54:08.945278+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (707, 'Cairo', '(71) 99243-5287', 'Navalhado - R$ 25', 25, 1, 'Geilson', '2026-03-27', '14:00', 'concluido', '2026-03-25T12:27:39.920641+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (735, 'Ueslei', '(75) 99142-2834', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-03-27', '14:30', 'concluido', '2026-03-27T05:36:59.188442+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (712, 'Jhon Lucas lima da silva', '(75) 99244-8485', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-03-28', '08:30', 'concluido', '2026-03-26T09:15:04.866595+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (726, 'José Ednan ', '(75) 99817-8131', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-28', '09:30', 'concluido', '2026-03-26T19:24:44.405494+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (723, 'Julio ', '(75) 99939-9996', 'Degradê - R$ 25', 25, 2, 'Denilson', '2026-03-28', '10:00', 'concluido', '2026-03-26T15:43:03.036189+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (732, 'Wellington Alves ', '(75) 99134-3491', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-28', '14:00', 'concluido', '2026-03-27T01:19:56.436961+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (709, 'Diego de Lima Queiroz ', '(75) 99138-0236', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-04', '08:30', 'concluido', '2026-03-25T15:45:33.726802+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (739, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-10', '10:00', 'concluido', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1270, 'Victor Araújo ', '(75) 99154-4516', 'Corte Social - R$ 25', 25, 2, 'Denilson', '2026-04-11', '16:00', 'concluido', '2026-04-11T10:39:00.170512+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1340, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-07-09', '17:30', 'confirmado', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1341, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-07-16', '17:30', 'confirmado', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1342, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-07-23', '17:30', 'confirmado', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1312, 'Schaide Nunes', '(75) 99150-3949', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-04-14', '17:00', 'concluido', '2026-04-14T10:53:37.843954+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1321, 'Eldes Queiroz ', '(75) 98821-0706', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-04-15', '14:00', 'concluido', '2026-04-15T10:56:46.683468+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (741, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-24', '10:00', 'concluido', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (742, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-05-01', '10:00', 'concluido', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (743, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-05-08', '10:00', 'concluido', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (744, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-05-15', '10:00', 'concluido', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (745, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-05-22', '10:00', 'concluido', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (746, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-05-29', '10:00', 'concluido', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (747, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-06-05', '10:00', 'concluido', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1338, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-06-25', '17:30', 'concluido', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (748, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-06-12', '10:00', 'concluido', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (750, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-06-26', '10:00', 'concluido', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1339, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-07-02', '17:30', 'concluido', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (751, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-07-03', '10:00', 'concluido', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (2801, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-07-13', '09:30', 'bloqueado', '2026-07-13T02:24:48.848395+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (755, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-07-31', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (756, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-08-07', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (757, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-08-14', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (758, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-08-21', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (759, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-08-28', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (760, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-09-04', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (761, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-09-11', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (762, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-09-18', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (763, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-09-25', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (764, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-10-02', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (765, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-10-09', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (766, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-10-16', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (767, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-10-23', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (768, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-10-30', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (769, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-11-06', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (770, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-11-13', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (771, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-11-20', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (772, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-11-27', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (773, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-12-04', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (774, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-12-11', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (775, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-12-18', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (776, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-12-25', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (777, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-01-01', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (778, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-01-08', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (779, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-01-15', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (780, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-01-22', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (781, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-01-29', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (782, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-02-05', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (783, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-02-12', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (784, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-02-19', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (785, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-02-26', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (786, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-03-05', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (787, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-03-12', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (788, 'Wedson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-03-19', '10:00', 'confirmado', '2026-03-27T10:45:03.613279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (2802, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-07-13', '14:00', 'bloqueado', '2026-07-13T02:24:48.848395+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (801, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-06-19', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (804, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-07-10', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (805, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-07-17', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (806, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-07-24', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (807, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-07-31', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (808, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-08-07', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (809, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-08-14', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (810, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-08-21', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (811, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-08-28', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (812, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-09-04', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (813, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-09-11', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (814, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-09-18', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (815, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-09-25', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (816, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-10-02', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (817, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-10-09', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (790, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-03', '08:00', 'concluido', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (791, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-10', '08:00', 'concluido', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (792, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-17', '08:00', 'concluido', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (793, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-24', '08:00', 'concluido', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (794, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-05-01', '08:00', 'concluido', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (795, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-05-08', '08:00', 'concluido', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (796, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-05-15', '08:00', 'concluido', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (797, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-05-22', '08:00', 'concluido', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (798, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-05-29', '08:00', 'concluido', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (799, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-06-05', '08:00', 'concluido', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (802, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-06-26', '08:00', 'concluido', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (800, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-06-12', '08:00', 'concluido', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (803, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-07-03', '08:00', 'concluido', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (818, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-10-16', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (819, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-10-23', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (820, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-10-30', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (821, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-11-06', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (822, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-11-13', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (823, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-11-20', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (824, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-11-27', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (825, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-12-04', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (826, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-12-11', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (827, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-12-18', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (828, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-12-25', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (829, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-01-01', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (830, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-01-08', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (831, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-01-15', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (832, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-01-22', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (833, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-01-29', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (834, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-02-05', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (835, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-02-12', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (836, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-02-19', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (837, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-02-26', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (838, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-03-05', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (839, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-03-12', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (840, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-03-19', '08:00', 'confirmado', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (2774, 'Edoaldo Quaresma', '(74) 98126-5237', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-07-11', '09:30', 'confirmado', '2026-07-09T18:11:58.661113+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (789, 'Mir', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-27', '08:00', 'concluido', '2026-03-27T10:46:14.322228+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (842, 'Nenê ', '(75) 99154-5826', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-27', '09:30', 'concluido', '2026-03-27T11:21:22.162996+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (841, 'Isac ', '(75) 99140-6249', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-03-27', '10:00', 'concluido', '2026-03-27T11:10:27.644061+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1322, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-04-15', '08:30', 'bloqueado', '2026-04-15T11:13:10.112117+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1323, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-04-15', '09:30', 'bloqueado', '2026-04-15T11:13:10.112117+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1343, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-07-30', '17:30', 'confirmado', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1344, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-08-06', '17:30', 'confirmado', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1301, 'Ney', '(75) 99130-9559', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-04-13', '16:00', 'concluido', '2026-04-13T15:30:17.808467+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1313, 'Henrique De Queiroz Oliveira', '(75) 98810-1441', 'Corte Social - R$ 25', 25, 2, 'Denilson', '2026-04-14', '16:00', 'concluido', '2026-04-14T10:58:54.19673+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (877, 'Arthur Gabriel ', '(75) 99231-7977', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-04-28', '14:00', 'concluido', '2026-03-28T19:11:51.079742+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (878, 'Gabriel ', '(75) 99231-7977', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-04-28', '14:30', 'concluido', '2026-03-28T19:12:27.770284+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (851, 'Sandro ', '(75) 99130-9559', 'Barba e Pezinho - R$ 15', 15, 2, 'Denilson', '2026-03-27', '15:30', 'concluido', '2026-03-27T16:50:51.223672+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (845, 'Sileu ', '(75) 99130-9559', 'Corte Raspado - R$ 20', 20, 1, 'Geilson', '2026-03-27', '15:30', 'concluido', '2026-03-27T14:29:13.037736+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (847, 'Juninho', '(75) 99130-9559', 'Navalhado - R$ 25', 25, 1, 'Geilson', '2026-03-27', '17:30', 'concluido', '2026-03-27T14:50:40.388985+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (844, 'Ito ', '(75) 99130-9559', 'Corte Raspado - R$ 20', 20, 1, 'Geilson', '2026-03-27', '18:00', 'concluido', '2026-03-27T14:28:45.127025+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (853, 'Euler', '(75) 99130-9559', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-27', '18:30', 'concluido', '2026-03-27T20:36:03.688908+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (865, 'Luis Pedro ', '(75) 99243-4923', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-28', '08:00', 'concluido', '2026-03-28T00:50:32.597144+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (848, 'Robério ', '(75) 99130-9559', 'Corte Social - R$ 25', 25, 2, 'Denilson', '2026-03-28', '09:30', 'concluido', '2026-03-27T15:51:32.669372+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (871, 'Marcos Antônio Silva de Queiroz', '(75) 99250-4975', 'Barba e Pezinho - R$ 15', 15, 1, 'Geilson', '2026-03-28', '10:00', 'concluido', '2026-03-28T12:44:42.3595+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (863, 'Bernardo ', '(75) 99130-9559', 'Degradê - R$ 25', 25, 2, 'Denilson', '2026-03-28', '11:00', 'concluido', '2026-03-27T22:03:30.421459+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (867, 'Filho peto', '(75) 99130-9559', 'Corte Social - R$ 25', 25, 2, 'Denilson', '2026-03-28', '14:30', 'concluido', '2026-03-28T11:48:43.634266+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (864, 'Wiliam lima', '(75) 99240-1172', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-03-28', '14:30', 'concluido', '2026-03-28T00:03:09.147751+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (870, 'guilherme', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-03-28', '14:30', 'concluido', '2026-03-28T12:06:30.925922+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (869, 'gledson ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-03-28', '15:30', 'concluido', '2026-03-28T12:06:13.738945+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (850, 'Said Silva Santana', '(75) 99901-6236', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-28', '15:30', 'concluido', '2026-03-27T16:17:08.336233+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (852, 'Vanelson Mota', '(75) 98849-7419', 'Navalhado - R$ 25', 25, 2, 'Denilson', '2026-03-28', '16:00', 'concluido', '2026-03-27T18:30:43.905557+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (868, 'Kennedy Dias', '(75) 99224-0716', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-03-28', '16:00', 'concluido', '2026-03-28T11:56:44.843321+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (873, 'Gabriel Oliveira', '(75) 99207-8287', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-28', '17:00', 'concluido', '2026-03-28T14:01:28.881925+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (874, 'Elison', '(75) 99130-9559', 'Barba e Pezinho - R$ 15', 15, 1, 'Geilson', '2026-03-28', '17:30', 'concluido', '2026-03-28T14:29:52.110999+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (876, 'Carioca ', '(75) 99130-9559', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-28', '18:30', 'concluido', '2026-03-28T16:02:30.181165+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (880, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-30', '08:30', 'bloqueado', '2026-03-29T21:11:41.640964+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (881, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-30', '09:30', 'bloqueado', '2026-03-29T21:11:41.640964+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (882, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-30', '10:00', 'bloqueado', '2026-03-29T21:11:41.640964+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (883, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-30', '11:00', 'bloqueado', '2026-03-29T21:11:41.640964+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (884, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-30', '14:00', 'bloqueado', '2026-03-29T21:11:41.640964+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (885, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-30', '14:30', 'bloqueado', '2026-03-29T21:11:41.640964+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (886, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-30', '15:30', 'bloqueado', '2026-03-29T21:11:41.640964+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (879, 'Deir', '(75) 99130-9559', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-04-02', '08:30', 'concluido', '2026-03-29T21:09:29.210548+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (843, 'Edilson', '(71) 99100-6562', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-04-04', '08:00', 'concluido', '2026-03-27T12:00:26.799013+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (887, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-30', '16:00', 'bloqueado', '2026-03-29T21:11:41.640964+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (888, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-30', '17:00', 'bloqueado', '2026-03-29T21:11:41.640964+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (889, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-30', '17:30', 'bloqueado', '2026-03-29T21:11:41.640964+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (890, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-30', '18:00', 'bloqueado', '2026-03-29T21:11:41.640964+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (891, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-30', '18:30', 'bloqueado', '2026-03-29T21:11:41.640964+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1272, 'Ilke Itamar', '(75) 98823-0383', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-11', '11:00', 'concluido', '2026-04-11T13:12:51.124605+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (893, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-30', '17:00', 'bloqueado', '2026-03-30T11:09:54.061114+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (894, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-30', '16:00', 'bloqueado', '2026-03-30T11:09:54.061114+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (895, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-30', '15:30', 'bloqueado', '2026-03-30T11:09:54.061114+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (896, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-30', '14:30', 'bloqueado', '2026-03-30T11:09:54.061114+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (897, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-30', '14:00', 'bloqueado', '2026-03-30T11:09:54.061114+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (2775, 'Digo mix', '(75) 99148-8880', 'Barba e Pezinho - R$ 15', 15, 2, 'Denilson', '2026-07-10', '10:00', 'confirmado', '2026-07-09T20:59:53.717137+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1345, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-08-13', '17:30', 'confirmado', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (909, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-31', '09:30', 'bloqueado', '2026-03-31T11:34:33.208727+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (910, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-31', '10:00', 'bloqueado', '2026-03-31T11:34:33.208727+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (911, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-03-31', '11:00', 'bloqueado', '2026-03-31T11:34:33.208727+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (904, 'Messias', '(75) 99182-3957', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-03-31', '09:30', 'concluido', '2026-03-31T00:01:56.886622+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1346, 'Elison ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-08-20', '17:30', 'confirmado', '2026-04-15T12:49:16.641823+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (917, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-31', '14:00', 'bloqueado', '2026-03-31T15:43:19.263951+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (918, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-31', '14:30', 'bloqueado', '2026-03-31T15:43:19.263951+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (919, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-31', '18:30', 'bloqueado', '2026-03-31T15:43:19.263951+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (920, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-31', '18:00', 'bloqueado', '2026-03-31T15:43:19.263951+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (921, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-03-31', '15:30', 'bloqueado', '2026-03-31T15:43:19.263951+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1314, 'Kaio', '(75) 98814-4136', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-04-14', '15:30', 'concluido', '2026-04-14T17:09:35.184576+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1324, 'Jhon Lucas lima da silva', '(75) 99244-8485', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-04-15', '15:30', 'concluido', '2026-04-15T12:01:32.305205+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (925, 'Edicley oliveira dos Santos ', '(47) 99669-3577', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-04-02', '14:00', 'cancelado', '2026-03-31T16:30:13.431078+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (929, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-04-01', '14:00', 'bloqueado', '2026-03-31T20:08:37.968252+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (930, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-04-01', '14:30', 'bloqueado', '2026-03-31T20:08:37.968252+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (946, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-04-03', '18:30', 'bloqueado', '2026-04-01T12:58:12.04246+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (947, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-04-03', '18:00', 'bloqueado', '2026-04-01T12:58:12.04246+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (948, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-04-03', '17:30', 'bloqueado', '2026-04-01T12:58:12.04246+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (949, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-04-03', '17:00', 'bloqueado', '2026-04-01T12:58:12.04246+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (950, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-04-03', '16:00', 'bloqueado', '2026-04-01T12:58:12.04246+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (951, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-04-03', '15:30', 'bloqueado', '2026-04-01T12:58:12.04246+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (952, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-04-03', '14:30', 'bloqueado', '2026-04-01T12:58:12.04246+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (953, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-04-03', '14:00', 'bloqueado', '2026-04-01T12:58:12.04246+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (926, 'Eric Mateus', '(75) 99163-7525', 'Navalhado - R$ 25', 25, 1, 'Geilson', '2026-04-01', '09:30', 'concluido', '2026-03-31T19:37:36.663876+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (938, 'Nilson ', '(75) 99822-4423', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-04-01', '16:00', 'cancelado', '2026-03-31T23:28:18.646362+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (899, 'Adenilson Santos Matos', '(75) 99207-6772', 'Degradê - R$ 25', 25, 2, 'Denilson', '2026-03-30', '09:30', 'concluido', '2026-03-30T11:47:05.530593+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (898, 'Raul Silva', '(75) 99216-3937', 'Barba e Pezinho - R$ 15', 15, 2, 'Denilson', '2026-03-30', '10:00', 'concluido', '2026-03-30T11:40:35.664752+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (900, 'Henrique Lima Matos ', '(75) 99207-6772', 'Degradê - R$ 25', 25, 2, 'Denilson', '2026-03-30', '11:00', 'concluido', '2026-03-30T11:47:33.979003+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (906, 'Matheus Silva pastor ', '(75) 99879-8577', 'Degradê - R$ 25', 25, 2, 'Denilson', '2026-03-31', '14:30', 'concluido', '2026-03-31T10:08:59.028324+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (923, 'Gael', '(75) 99164-8724', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-03-31', '17:00', 'concluido', '2026-03-31T15:50:34.734743+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (913, 'Gustavo Santana ', '(75) 99203-7521', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-03-31', '17:30', 'concluido', '2026-03-31T14:13:36.557582+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (940, ' Galvão ', '(75) 98828-6808', 'Barba e Pezinho - R$ 15', 15, 2, 'Denilson', '2026-04-01', '09:30', 'concluido', '2026-04-01T08:19:04.555388+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (916, 'Zoroastro ', '(75) 99130-9559', 'Corte Social - R$ 25', 25, 2, 'Denilson', '2026-04-01', '10:00', 'concluido', '2026-03-31T15:42:42.339872+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (915, 'Zoroastro filho ', '(75) 99130-9559', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-04-01', '10:00', 'concluido', '2026-03-31T15:41:01.343866+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (943, 'Virgílio Queiroz ', '(75) 99173-1032', 'Corte Social - R$ 25', 25, 2, 'Denilson', '2026-04-01', '11:00', 'concluido', '2026-04-01T10:51:36.612528+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (928, 'Edicley oliveira dos Santos ', '(47) 99669-3577', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-04-01', '14:00', 'concluido', '2026-03-31T19:50:00.919589+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (942, 'Renan Oliveira Lima ', '(75) 99185-9168', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-04-01', '14:30', 'concluido', '2026-04-01T10:35:08.825904+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (936, 'Damiana Carvalho ', '(75) 99136-0227', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-04-01', '15:30', 'concluido', '2026-03-31T23:24:37.486159+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (937, 'Damiana Carvalho ', '(75) 99136-0227', 'Corte Social - R$ 25', 25, 2, 'Denilson', '2026-04-01', '15:30', 'concluido', '2026-03-31T23:26:21.221239+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (941, 'Jonathan anjos Oliveira ', '(75) 99259-4884', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-04-01', '16:00', 'concluido', '2026-04-01T10:23:45.139321+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (932, 'Márcio ', '(75) 99130-9559', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-04-01', '17:00', 'concluido', '2026-03-31T21:41:52.733805+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (935, 'Márcio filho ', '(75) 99130-9559', 'Degradê - R$ 25', 25, 2, 'Denilson', '2026-04-01', '17:00', 'concluido', '2026-03-31T22:49:31.208632+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (933, 'Márcio filho ', '(75) 99130-9559', 'Navalhado - R$ 25', 25, 1, 'Geilson', '2026-04-01', '17:30', 'concluido', '2026-03-31T21:42:23.596765+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (944, 'Well', '(75) 99208-1547', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-04-01', '18:00', 'concluido', '2026-04-01T11:15:29.669913+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (945, 'Tonhão ', '(75) 99178-6580', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-01', '18:30', 'concluido', '2026-04-01T11:59:26.72064+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (931, 'Joaquim Augusto', '(75) 99192-9396', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-04-02', '14:30', 'cancelado', '2026-03-31T20:39:03.063697+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (902, 'Miccael Nunes ', '(75) 99154-2626', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-02', '09:30', 'concluido', '2026-03-30T15:36:02.009546+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (939, 'Michel Ramos ', '(75) 99125-9674', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-02', '10:00', 'concluido', '2026-03-31T23:48:35.215593+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (912, 'Vitor kaian', '(75) 99174-9404', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-04', '14:00', 'concluido', '2026-03-31T13:20:58.575631+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (934, 'Dd', '(75) 99206-9210', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-02', '17:30', 'concluido', '2026-03-31T22:35:50.176946+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (901, 'Henrique Gabriel Mota de Santana ', '(75) 98831-9034', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-04-04', '08:30', 'concluido', '2026-03-30T14:37:07.451994+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (954, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-04-03', '11:00', 'bloqueado', '2026-04-01T12:58:12.04246+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (955, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-04-03', '17:00', 'bloqueado', '2026-04-01T12:58:58.189725+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (956, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-04-03', '16:00', 'bloqueado', '2026-04-01T12:58:58.189725+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (957, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-04-03', '15:30', 'bloqueado', '2026-04-01T12:58:58.189725+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (958, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-04-03', '14:30', 'bloqueado', '2026-04-01T12:58:58.189725+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (959, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-04-03', '14:00', 'bloqueado', '2026-04-01T12:58:58.189725+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (892, 'Flávio Mota ', '(75) 99263-0613', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-04-01', '08:30', 'concluido', '2026-03-30T01:11:51.092944+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (2803, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-07-13', '10:00', 'bloqueado', '2026-07-13T02:24:48.848395+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (971, 'Ney ', '(75) 99119-1268', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-04-02', '09:30', 'concluido', '2026-04-01T22:35:58.041347+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (979, 'Adilto ', '(75) 99130-9559', 'Corte Social - R$ 25', 25, 2, 'Denilson', '2026-04-02', '10:00', 'concluido', '2026-04-02T11:04:21.757087+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (983, 'LUIZ ', '(75) 99130-9559', 'Navalhado - R$ 25', 25, 2, 'Denilson', '2026-04-02', '11:00', 'concluido', '2026-04-02T13:44:15.530582+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (968, 'Théo ', '(75) 98887-3138', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-04-02', '11:00', 'concluido', '2026-04-01T18:47:53.709054+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (999, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-04-04', '17:00', 'bloqueado', '2026-04-03T15:30:47.767294+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1004, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-04-06', '08:30', 'bloqueado', '2026-04-04T12:55:53.158814+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1005, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-04-06', '09:30', 'bloqueado', '2026-04-04T12:55:53.158814+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1006, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-04-06', '10:00', 'bloqueado', '2026-04-04T12:55:53.158814+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1007, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-04-06', '11:00', 'bloqueado', '2026-04-04T12:55:53.158814+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1008, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-04-06', '14:00', 'bloqueado', '2026-04-04T12:55:53.158814+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1009, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-04-06', '14:30', 'bloqueado', '2026-04-04T12:55:53.158814+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1010, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-04-06', '15:30', 'bloqueado', '2026-04-04T12:55:53.158814+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1011, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-04-06', '16:00', 'bloqueado', '2026-04-04T12:55:53.158814+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1012, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-04-06', '17:00', 'bloqueado', '2026-04-04T12:55:53.158814+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (981, 'Raimundo Silva Santos ', '(75) 99275-6136', 'Corte Raspado - R$ 20', 20, 1, 'Geilson', '2026-04-04', '09:30', 'concluido', '2026-04-02T12:34:59.575293+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (974, 'PEDRO MERES DE QUEIROZ ANJOS', '(75) 99120-8499', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-04', '10:00', 'concluido', '2026-04-02T00:07:41.00062+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (976, 'Joaquim Augusto', '(75) 99192-9396', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-04', '11:00', 'concluido', '2026-04-02T01:14:26.366475+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (988, 'Jonatas novais Silva de Oliveira', '(75) 99231-0998', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-04-04', '14:30', 'concluido', '2026-04-02T20:07:30.826568+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (996, 'Edoaldo Quaresma', '(74) 98126-5237', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-04-04', '15:30', 'concluido', '2026-04-03T13:55:37.116301+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (994, 'Reinan', '(75) 99252-8559', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-04', '16:00', 'concluido', '2026-04-03T12:40:26.245716+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (991, 'Sávio Lopes ', '(75) 99164-8830', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-04-04', '17:30', 'concluido', '2026-04-02T22:58:10.006728+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (997, 'Eminho ', '(75) 99130-9559', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-04', '18:00', 'concluido', '2026-04-03T14:20:24.207744+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1000, 'Valdemar', '(75) 99269-9823', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-04-04', '18:30', 'concluido', '2026-04-03T18:44:47.694391+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (965, 'Franthiallem ', '(75) 99857-6054', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-04-02', '14:00', 'concluido', '2026-04-01T16:48:22.150349+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (963, 'Eduardo Trabuco ', '(71) 99312-2473', 'Degradê - R$ 25', 25, 2, 'Denilson', '2026-04-02', '14:00', 'concluido', '2026-04-01T15:39:50.6157+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (970, 'Cauã Queiroz', '(75) 99148-5624', 'Barba e Pezinho - R$ 15', 15, 2, 'Denilson', '2026-04-02', '14:30', 'concluido', '2026-04-01T21:13:00.325161+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (978, 'Pedro Araújo ', '(75) 99269-9823', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-04-02', '14:30', 'concluido', '2026-04-02T10:34:31.703245+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (966, 'Derlan Queiroz', '(75) 99136-2544', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-04-02', '15:30', 'concluido', '2026-04-01T17:05:05.219009+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (973, 'Marcos ', '(75) 99130-9559', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-04-02', '15:30', 'concluido', '2026-04-01T23:46:55.433608+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (986, 'Marcos', '(75) 99130-9559', 'Degradê - R$ 25', 25, 2, 'Denilson', '2026-04-02', '16:00', 'concluido', '2026-04-02T17:43:55.852432+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (969, 'Pedro Laranjeira', '(75) 99144-8096', 'Degradê - R$ 25', 25, 1, 'Geilson', '2026-04-02', '16:00', 'concluido', '2026-04-01T19:20:38.751244+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (972, 'Marcos ', '(75) 99130-9559', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-02', '17:00', 'concluido', '2026-04-01T23:30:32.113583+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (980, 'Emanuel', '(75) 99190-2797', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-02', '18:00', 'concluido', '2026-04-02T11:45:54.55186+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (961, 'Gledson Máximo ', '(75) 98118-4456', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-02', '18:30', 'concluido', '2026-04-01T13:29:10.224279+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (967, 'Natan Queiroz ', '(75) 99132-9319', 'Navalhado - R$ 25', 25, 1, 'Geilson', '2026-04-03', '08:30', 'concluido', '2026-04-01T17:30:36.433726+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (975, 'José Weslei ', '(75) 99146-2469', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-04-03', '08:30', 'concluido', '2026-04-02T00:38:33.583957+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (984, 'cara', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-04-03', '09:30', 'concluido', '2026-04-02T15:17:49.783894+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (960, 'RAPHAEL DOS ANJOS BRITO', '(75) 99261-6505', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-03', '09:30', 'concluido', '2026-04-01T13:02:38.272833+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (989, 'SAYMON MENDES GALVAO', '(75) 99112-7596', 'Navalhado - R$ 25', 25, 2, 'Denilson', '2026-04-03', '10:00', 'concluido', '2026-04-02T20:43:27.704587+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (987, 'Talison Santos', '(75) 99998-1298', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-04-03', '11:00', 'concluido', '2026-04-02T19:57:20.424148+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (977, 'marielsson', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-04-04', '09:30', 'concluido', '2026-04-02T09:36:35.567274+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (995, 'Levi', '(75) 99206-5982', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-04-04', '10:00', 'concluido', '2026-04-03T13:18:47.813738+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (992, 'Carlos Neto', '(75) 99232-5905', 'Corte Social - R$ 25', 25, 2, 'Denilson', '2026-04-04', '11:00', 'concluido', '2026-04-03T01:49:07.843174+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (990, 'Ueslei Damião santos ', '(75) 99142-2834', 'Corte e Barba - R$ 35', 35, 2, 'Denilson', '2026-04-04', '14:00', 'concluido', '2026-04-02T21:59:42.683137+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1001, 'Stephany Chagas ', '(75) 99294-7612', 'Degradê - R$ 25', 25, 2, 'Denilson', '2026-04-04', '14:30', 'concluido', '2026-04-03T23:28:18.671634+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (998, 'israel carvalho ', '(75) 99247-3570', 'Barba e Pezinho - R$ 15', 15, 2, 'Denilson', '2026-04-04', '15:30', 'concluido', '2026-04-03T15:01:44.348131+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1003, 'Marcos Antônio Silva de Queiroz', '(75) 99250-4975', 'Barba e Pezinho - R$ 15', 15, 2, 'Denilson', '2026-04-04', '16:00', 'concluido', '2026-04-04T09:47:26.147263+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1002, 'Leto', '(71) 99226-3219', 'Barba e Pezinho - R$ 15', 15, 1, 'Geilson', '2026-04-05', '08:30', 'concluido', '2026-04-04T09:07:38.587902+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1014, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-04-06', '08:30', 'bloqueado', '2026-04-05T20:51:03.808322+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1015, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-04-06', '09:30', 'bloqueado', '2026-04-05T20:51:03.808322+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1016, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-04-06', '10:00', 'bloqueado', '2026-04-05T20:51:03.808322+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1017, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-04-06', '11:00', 'bloqueado', '2026-04-05T20:51:03.808322+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1018, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-04-06', '18:30', 'bloqueado', '2026-04-05T20:51:03.808322+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1019, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-04-06', '18:00', 'bloqueado', '2026-04-05T20:51:03.808322+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1020, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-04-06', '17:30', 'bloqueado', '2026-04-05T20:51:03.808322+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (2776, 'Wellington Alves ', '(75) 99134-3491', 'Corte Social - R$ 25', 25, 1, 'Geilson', '2026-07-11', '11:00', 'confirmado', '2026-07-09T23:04:58.166941+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1032, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-06-19', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1035, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-07-10', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1036, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-07-17', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1037, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-07-24', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1038, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-07-31', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1039, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-08-07', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1040, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-08-14', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1041, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-08-21', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1042, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-08-28', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1043, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-09-04', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1044, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-09-11', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1045, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-09-18', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1046, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-09-25', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1047, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-10-02', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1048, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-10-09', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1049, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-10-16', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1050, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-10-23', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1051, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-10-30', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1052, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-11-06', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1053, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-11-13', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1054, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-11-20', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1055, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-11-27', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1056, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-12-04', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1057, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-12-11', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1058, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-12-18', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1059, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-12-25', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1060, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-01-01', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1061, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-01-08', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1062, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-01-15', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1063, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-01-22', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1064, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-01-29', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1065, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-02-05', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1066, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-02-12', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1067, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-02-19', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1068, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-02-26', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1069, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-03-05', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1070, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-03-12', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1071, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-03-19', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1072, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-03-26', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1073, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-04-02', '14:00', 'confirmado', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1275, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-04-13', '08:30', 'bloqueado', '2026-04-12T12:33:42.434688+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (2804, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-07-13', '17:00', 'bloqueado', '2026-07-13T02:24:48.848395+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1276, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 1, 'Geilson', '2026-04-13', '09:30', 'bloqueado', '2026-04-12T12:33:42.434688+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1023, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-17', '14:00', 'concluido', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1076, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-23', '09:30', 'concluido', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1024, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-24', '14:00', 'concluido', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1077, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-04-30', '09:30', 'concluido', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1025, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-05-01', '14:00', 'concluido', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1078, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-05-07', '09:30', 'concluido', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1026, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-05-08', '14:00', 'concluido', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1079, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-05-14', '09:30', 'concluido', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1027, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-05-15', '14:00', 'concluido', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1080, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-05-21', '09:30', 'concluido', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1028, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-05-22', '14:00', 'concluido', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1081, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-05-28', '09:30', 'concluido', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1029, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-05-29', '14:00', 'concluido', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1082, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-06-04', '09:30', 'concluido', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1030, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-06-05', '14:00', 'concluido', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1033, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-06-26', '14:00', 'concluido', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1031, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-06-12', '14:00', 'concluido', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (2805, 'BLOQUEIO', '', 'BLOQUEIO ADMIN', 0, 2, 'Denilson', '2026-07-13', '14:30', 'bloqueado', '2026-07-13T02:24:48.848395+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1034, 'Ikaro', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-07-03', '14:00', 'concluido', '2026-04-05T20:56:30.303466+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1084, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-06-18', '09:30', 'confirmado', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1087, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-07-09', '09:30', 'confirmado', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1089, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-07-23', '09:30', 'confirmado', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1090, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-07-30', '09:30', 'confirmado', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1091, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-08-06', '09:30', 'confirmado', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1092, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-08-13', '09:30', 'confirmado', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1093, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-08-20', '09:30', 'confirmado', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1094, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-08-27', '09:30', 'confirmado', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1095, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-09-03', '09:30', 'confirmado', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1096, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-09-10', '09:30', 'confirmado', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1097, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-09-17', '09:30', 'confirmado', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1098, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-09-24', '09:30', 'confirmado', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1099, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-10-01', '09:30', 'confirmado', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1100, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-10-08', '09:30', 'confirmado', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1101, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-10-15', '09:30', 'confirmado', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1102, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-10-22', '09:30', 'confirmado', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1103, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-10-29', '09:30', 'confirmado', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1104, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-11-05', '09:30', 'confirmado', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1105, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-11-12', '09:30', 'confirmado', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1106, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-11-19', '09:30', 'confirmado', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1107, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-11-26', '09:30', 'confirmado', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1108, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-12-03', '09:30', 'confirmado', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1109, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-12-10', '09:30', 'confirmado', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1110, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-12-17', '09:30', 'confirmado', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1111, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-12-24', '09:30', 'confirmado', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1112, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2026-12-31', '09:30', 'confirmado', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1113, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-01-07', '09:30', 'confirmado', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1114, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-01-14', '09:30', 'confirmado', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1115, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-01-21', '09:30', 'confirmado', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1116, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-01-28', '09:30', 'confirmado', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1117, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-02-04', '09:30', 'confirmado', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1118, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-02-11', '09:30', 'confirmado', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1119, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-02-18', '09:30', 'confirmado', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
INSERT INTO agendamentos (id, nome, telefone, servico, valor, barbeiro_id, barbeiro_nome, data_agendamento, horario, status, created_at)
VALUES (1120, 'Kekeu ', 'Sem telefone', 'Corte e Barba - R$ 35', 35, 1, 'Geilson', '2027-02-25', '09:30', 'confirmado', '2026-04-05T20:57:09.757185+00:00')
ON DUPLICATE KEY UPDATE
  nome = VALUES(nome),
  telefone = VALUES(telefone),
  servico = VALUES(servico),
  valor = VALUES(valor),
  barbeiro_id = VALUES(barbeiro_id),
  barbeiro_nome = VALUES(barbeiro_nome),
  data_agendamento = VALUES(data_agendamento),
  horario = VALUES(horario),
  status = VALUES(status);
