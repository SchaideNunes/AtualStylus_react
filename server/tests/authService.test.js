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

  it('deve realizar login com sucesso para os dois administradores cadastrados', async () => {
    const res1 = await authService.login('schaidenunes.dev@gmail.com', 'schaide134679852');
    expect(res1).toBeDefined();
    expect(res1.token).toBeDefined();
    expect(res1.user.email).toBe('schaidenunes.dev@gmail.com');

    const res2 = await authService.login('geilsonmoreira19@gmail.com', 'street567890');
    expect(res2).toBeDefined();
    expect(res2.token).toBeDefined();
    expect(res2.user.email).toBe('geilsonmoreira19@gmail.com');
  });

  it('deve rejeitar login com senha incorreta', async () => {
    await expect(authService.login('schaidenunes.dev@gmail.com', 'senha_errada'))
      .rejects.toThrow('Credenciais inválidas');
  });

  it('deve rejeitar login com email não cadastrado', async () => {
    await expect(authService.login('inexistente@barbearia.com', 'schaide134679852'))
      .rejects.toThrow('Credenciais inválidas');
  });

  it('deve validar token JWT gerado e retornar os dados do usuário', () => {
    const { token } = authService.gerarToken({ id: 1, email: 'schaidenunes.dev@gmail.com' });
    const payload = authService.verificarToken(token);
    expect(payload.email).toBe('schaidenunes.dev@gmail.com');
    expect(payload.id).toBe(1);
  });
});
