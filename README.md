# 💈 AtualEstilo Barbearia - React & Hostinger SQL

Aplicação web moderna desenvolvida em **React (Vite)** com backend **Node.js / Express** e banco de dados **SQL Relacional (MySQL / MariaDB da Hostinger)**, projetada com foco em alta performance, segurança, design premium e desenvolvimento guiado por testes (**TDD**).

---

## 🚀 Tecnologias Utilizadas

- **Frontend:** React 18, Vite, Lucide Icons, Vanilla CSS Design System (Dark mode & Gold accents).
- **Backend & API:** Node.js, Express, MySQL2 (Prepared Statements), Helmet, Rate Limiting, CORS, JWT, Bcrypt.
- **Banco de Dados:** MySQL / MariaDB (Compatível com Hostinger e Docker).
- **Testes & Qualidade:** Vitest, React Testing Library, JSDOM (31 testes automatizados).
- **Containerização:** Docker & Docker Compose.

---

## 📂 Estrutura do Projeto

```
Atual_Stylus_React/
├── public/assets/         # Imagens e identidade visual da barbearia
├── server/
│   ├── src/
│   │   ├── db/            # Pool MySQL com Prepared Statements e fallback InMemory
│   │   ├── middleware/    # Proteção de autenticação JWT e segurança
│   │   ├── routes/        # Rotas da API REST
│   │   ├── services/      # Lógica de negócio de agendamentos e auth
│   │   ├── app.js         # Configuração do Express
│   │   └── server.js      # Entrypoint do servidor
│   └── tests/             # Testes unitários e de integração do backend
├── src/
│   ├── components/        # Componentes reutilizáveis (Navbar, Footer, ServiceCard, ModalBloqueio)
│   ├── pages/             # Páginas (Home, Agendamento, MeusAgendamentos, Sobre, Login, Admin)
│   ├── services/          # Client API HTTP
│   ├── styles/            # CSS tokens, animações e estilo do painel administrativo
│   ├── tests/             # Testes de componentes React (TDD)
│   └── utils/             # Utilitários (máscaras de telefone, datas, links do WhatsApp)
├── Dockerfile             # Multi-stage build para produção
├── docker-compose.yml     # Compose com App + MySQL + phpMyAdmin
├── GEMINI.md              # Diretrizes e regras do projeto
├── schema.sql             # Estrutura DDL para o banco MySQL
└── seed.sql               # Carga inicial dos barbeiros e admin
```

---

## 🛠️ Como Executar o Projeto

### Opção 1: Execução Local com Node.js

1. **Instale as dependências:**
   ```bash
   npm install
   ```

2. **Configure o arquivo `.env`:**
   ```bash
   cp .env.example .env
   ```
   *(Preencha as credenciais do seu banco de dados MySQL ou deixe para usar em modo standalone)*

3. **Inicie o servidor de desenvolvimento:**
   ```bash
   npm run dev
   ```
   - Frontend: `http://localhost:5173`
   - Backend API: `http://localhost:3001`

4. **Rodar a suíte de testes:**
   ```bash
   npm test
   ```

---

### Opção 2: Execução com Docker & Docker Compose

Suba todo o ecossistema (App + Banco MySQL + phpMyAdmin) com um único comando:

```bash
docker compose up --build -d
```

- **Aplicação:** `http://localhost:3001`
- **phpMyAdmin:** `http://localhost:8080` (Usuário: `root` | Senha: `root_password_segura`)
- **Porta MySQL:** `3306`

---

## 🗄️ Implantação no Banco de Dados SQL da Hostinger

1. No **hPanel da Hostinger**, crie uma base de dados MySQL (ex: `u123456789_atualestilo`) e seu usuário/senha.
2. Abra o **phpMyAdmin** da Hostinger.
3. Importe o arquivo `schema.sql` para criar as tabelas (`barbeiros_config`, `agendamentos`, `admin_users`).
4. Importe o arquivo `seed.sql` para carregar as configurações padrão dos barbeiros (Geilson e Denilson) e o usuário admin inicial.
5. No arquivo `.env` da aplicação em produção, informe as credenciais geradas na Hostinger:
   ```env
   DB_HOST=localhost
   DB_PORT=3306
   DB_USER=u123456789_seu_usuario
   DB_PASSWORD=sua_senha_segura
   DB_NAME=u123456789_atualestilo
   ```

---

## 🛡️ Segurança Implementada

- ✅ **Proteção Total contra SQL Injection:** Prepared Statements (`?`) em 100% das queries.
- ✅ **Senhas Criptografadas:** Hash `bcrypt` (10 rounds) para administradores.
- ✅ **Sessões Protegidas:** Tokens JWT com tempo de expiração.
- ✅ **Rate Limiting & Helmet:** Proteção contra ataques de força bruta e cabeçalhos HTTP reforçados.
- ✅ **Isolamento de Concorrência:** Validação atômica de horários livres no momento da reserva.
- ✅ **Zero Supabase Touch:** O Supabase original não sofreu qualquer alteração.
