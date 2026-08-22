import { describe, it, expect, beforeEach } from 'vitest';
import { AuthService } from '../src/services/authService.js';
import { InMemoryDatabase } from '../src/db/inMemoryDb.js';

describe('Auth Service & Security (TDD)', () => {
  let db;
  let authService;

  beforeEach(() => {
    db = new InMemoryDatabase();
    authService = new AuthService(db, 'test_jwt_secret_123456');
  });

  it('deve realizar login com sucesso fornecendo credenciais válidas', async () => {
    const res = await authService.login('admin@atualestilo.com', 'admin123');
    expect(res).toBeDefined();
    expect(res.token).toBeDefined();
    expect(res.user.email).toBe('admin@atualestilo.com');
  });

  it('deve rejeitar login com senha incorreta', async () => {
    await expect(authService.login('admin@atualestilo.com', 'senha_errada'))
      .rejects.toThrow('Credenciais inválidas');
  });

  it('deve rejeitar login com email não cadastrado', async () => {
    await expect(authService.login('inexistente@barbearia.com', 'admin123'))
      .rejects.toThrow('Credenciais inválidas');
  });

  it('deve validar token JWT gerado e retornar os dados do usuário', () => {
    const { token } = authService.gerarToken({ id: 1, email: 'admin@atualestilo.com' });
    const payload = authService.verificarToken(token);
    expect(payload.email).toBe('admin@atualestilo.com');
    expect(payload.id).toBe(1);
  });
});
