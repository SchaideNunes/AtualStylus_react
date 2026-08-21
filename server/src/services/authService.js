import bcrypt from 'bcryptjs';
import jwt from 'jsonwebtoken';

export class AuthService {
  constructor(db, jwtSecret = process.env.JWT_SECRET || 'secret_atualestilo_2026') {
    this.db = db;
    this.jwtSecret = jwtSecret;
  }

  async login(email, password) {
    const emailLimpo = String(email || '').trim().toLowerCase();
    const senhaLimpa = String(password || '').trim();
    if (!emailLimpo || !senhaLimpa) {
      throw new Error('Email e senha são obrigatórios');
    }

    const user = await this.db.findAdminByEmail(emailLimpo);
    if (!user) {
      throw new Error('Credenciais inválidas');
    }

    const senhaValida = await bcrypt.compare(senhaLimpa, user.password_hash);
    if (!senhaValida) {
      throw new Error('Credenciais inválidas');
    }

    const { token, expiresIn } = this.gerarToken({
      id: user.id,
      email: user.email,
      nome: user.nome
    });

    return {
      token,
      expiresIn,
      user: {
        id: user.id,
        email: user.email,
        nome: user.nome
      }
    };
  }

  gerarToken(payload) {
    const expiresIn = process.env.JWT_EXPIRES_IN || '7d';
    const token = jwt.sign(payload, this.jwtSecret, { expiresIn });
    return { token, expiresIn };
  }

  verificarToken(token) {
    try {
      return jwt.verify(token, this.jwtSecret);
    } catch (err) {
      throw new Error('Token inválido ou expirado');
    }
  }
}
