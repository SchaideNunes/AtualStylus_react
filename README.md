<div align="center">

# 💈 AtualEstilo Barbearia
### *Sistema de Gestão & Agendamento Digital de Alta Performance*

[![React](https://img.shields.io/badge/Frontend-React%2018%20%7C%20Vite-61DAFB?style=for-the-badge&logo=react&logoColor=black)](https://react.dev/)
[![MySQL](https://img.shields.io/badge/Database-MySQL%20%7C%20MariaDB-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![PHP](https://img.shields.io/badge/Backend-PHP%20REST%20%7C%20Node.js-777BB4?style=for-the-badge&logo=php&logoColor=white)](https://www.php.net/)
[![Vitest](https://img.shields.io/badge/Tests-55%20Passed%20(100%25)-6E9F18?style=for-the-badge&logo=vitest&logoColor=white)](https://vitest.dev/)
[![License](https://img.shields.io/badge/License-Proprietary-000000?style=for-the-badge)](#)

[🌐 Acessar Demonstração Online](https://atualestilo.com) • [✨ Funcionalidades](#-principais-funcionalidades) • [🛡️ Segurança](#-arquitetura-e-seguran%C3%A7a) • [🚀 Como Executar](#-guia-de-instala%C3%A7%C3%A3o-e-execu%C3%A7%C3%A3o)

---

</div>

## 📌 Sobre o Projeto

O **AtualEstilo Barbearia** é uma solução completa de presença digital e gestão operacional projetada especificamente para barbearias de alto padrão. 

Combinando uma **experiência de usuário premium (Dark & Platinum aesthetic)** no frontend com uma arquitetura de banco de dados relacional robusta, o sistema automatiza todo o fluxo de reservas dos clientes, elimina conflitos de horários por meio de validações atômicas e entrega um painel administrativo completo para gestão de faturamento, bloqueios de agenda e controle de clientes recorrentes.

---

## ✂️ Principais Funcionalidades

### 📱 1. Experiência do Cliente
* **Landing Page Editorial:** Design responsivo com badge de funcionamento em tempo real (*Aberto Agora* vs *Fechado hoje*), catálogo de serviços integrado e história institucional.
* **Motor de Agendamento Inteligente (`/agendar`):**
  * Escolha interativa de profissionais com fotos e agendas individualizadas.
  * Cálculo dinâmico de vagas livres (subtração em tempo real de horários ocupados e horários passados).
  * Bloqueio automático de domingos e feriados configurados.
  * Máscara de telefone estrita com validação e persistência local (`localStorage`) para agilizar futuras visitas.
  * **Proteção contra Concorrência:** Validação atômica no banco antes de confirmar para impedir agendamentos simultâneos no mesmo slot.
  * **Notificação WhatsApp Automática:** Redirecionamento com mensagem estruturada direto para o barbeiro selecionado.
* **Autoatendimento do Cliente (`/meus-agendamentos`):**
  * Consulta instantânea de agendamentos ativos apenas informando o número do WhatsApp.
  * Cancelamento facilitado com 1 clique e notificação automática de liberação de horário para o barbeiro.

---

### 🛡️ 2. Painel de Controle Administrativo (`/admin`)
* **Autenticação Segura:** Proteção por token JWT e criptografia de senhas com `bcrypt` (10 rounds).
* **Gestão de Atendimentos:**
  * Visualização organizada por data com filtros avançados (por barbeiro, período ou busca textual por cliente).
  * Ações rápidas de conclusão (`✅ Concluir`) e liberação (`🗑️ Liberar`).
* **Bloqueio de Horários em Lote:** Modal com grid visual para selecionar múltiplos horários livres de um dia e bloqueá-los simultaneamente com um único clique.
* **Módulo de Clientes Fixos (Recorrência):**
  * Agendamento automatizado semanal (52 semanas), quinzenal (26 semanas) ou mensal (12 semanas).
  * Agrupamento visual por cliente e exclusão em lote de horários futuros.
* **Configuração Dinâmica de Horários:**
  * Adição e remoção de slots de atendimento diretamente pelo painel, salvando instantaneamente no banco de dados.

---

## 🏗️ Arquitetura e Engenharia

```
                       ┌─────────────────────────┐
                       │   React 18 + Vite SPA   │
                       │ (Tailored Vanilla CSS)  │
                       └────────────┬────────────┘
                                    │  JSON API
            ┌───────────────────────┴───────────────────────┐
            ▼                                               ▼
┌─────────────────────────┐                     ┌─────────────────────────┐
│     PHP REST API        │                     │   Node.js / Express     │
│ (Hostinger Shared Host) │                     │ (VPS / Docker Compose)  │
└───────────┬─────────────┘                     └───────────┬─────────────┘
            │                                               │
            └───────────────────────┬───────────────────────┘
                                    ▼
                       ┌─────────────────────────┐
                       │   MySQL 8.0 Database    │
                       │  (Prepared Statements)  │
                       └─────────────────────────┘
```

### 🔒 Protocolos de Segurança & Performance:
1. **Prevenção de SQL Injection:** 100% das consultas utilizam *Prepared Statements* parametrizados com PDO / MySQL2.
2. **Proteção contra Força Bruta & DoS:** Rate Limiting configurado para endpoints de login e agendamento.
3. **Cabeçalhos de Segurança:** Configuração ativa de `Helmet`, `X-Content-Type-Options: nosniff` e `X-Frame-Options: SAMEORIGIN`.
4. **Otimização de Ativos:** Imagens no formato moderno `.webp` com compressão sem perda de qualidade e `Gzip/Deflate` ativo no `.htaccess`.
5. **Cobertura de Testes (TDD):** **55 testes unitários e de integração** garantindo estabilidade no cálculo de datas, máscaras e regras de negócio.

---

## 🛠️ Tecnologias Utilizadas

| Camada | Tecnologia | Destaques |
| :--- | :--- | :--- |
| **Frontend** | React 18, Vite | SPA ultrarrápida, Lucide Icons, Modular CSS |
| **Backend (Produção)** | PHP 8.x REST API | Conexão nativa PDO, compatível com qualquer hospedagem cPanel/hPanel |
| **Backend (VPS/Dev)** | Node.js, Express | API modular com Express Router, JWT e Bcrypt |
| **Banco de Dados** | MySQL / MariaDB | Tabelas relacionais com chaves estrangeiras e índices otimizados |
| **Qualidade & Testes**| Vitest, Testing Library | Test-Driven Development (TDD) com 100% de sucesso |
| **Servidor Web** | Apache / LiteSpeed | `.htaccess` otimizado com rotas SPA, SSL forçado e cache |

---

## 📂 Estrutura do Repositório

```
Atual_Stylus_React/
├── api/                       # Backend REST em PHP nativo (Hostinger Compartilhada)
│   ├── config.php             # Carregador de variáveis de ambiente (.env)
│   ├── db.php                 # Conexão PDO segura com MySQL
│   ├── jwt.php                # Gerador e validador de tokens JWT
│   └── index.php              # Roteador central de endpoints REST
├── public/assets/             # Identidade visual, logos e imagens em .webp
├── server/                    # Backend Node.js / Express (para Docker e VPS)
│   ├── src/db/                # Drivers MySQL e banco InMemory de testes
│   ├── src/routes/            # Definição de rotas Express
│   ├── src/services/          # Regras de negócio de agendamentos e autenticação
│   └── tests/                 # Testes de integração da API Node
├── src/
│   ├── components/            # Componentes reutilizáveis e Modais administrativos
│   ├── pages/                 # Páginas (Home, Agendamento, MeusAgendamentos, Sobre, Login, Admin)
│   ├── services/              # Cliente HTTP desacoplado
│   ├── styles/                # Sistema de design tokens e estilos responsivos
│   ├── tests/                 # Testes unitários do Frontend (Vitest + JSDOM)
│   └── utils/                 # Formatadores de data, telefone e geradores WhatsApp
├── scripts/                   # Scripts de build, migração e empacotamento
├── .htaccess                  # Configuração do servidor web (HTTPS, rotas SPA, Gzip)
├── docker-compose.yml         # Orquestração de containers locais (App + MySQL + phpMyAdmin)
├── schema.sql                 # Estrutura DDL do banco de dados relacional
├── seed.sql                   # Carga inicial com barbeiros e credenciais de admin
└── migration_supabase_to_mysql.sql # Script completo de migração histórica
```

---

## 🚀 Guia de Instalação e Execução

### 💻 1. Executando Localmente (Ambiente de Desenvolvimento)

```bash
# 1. Clone o repositório
git clone https://github.com/SchaideNunes/AtualStylus_react.git
cd AtualStylus_react

# 2. Instale as dependências
npm install

# 3. Configure as variáveis de ambiente
cp .env.example .env

# 4. Inicie a aplicação (Frontend + Backend)
npm run dev

# 5. Executar os testes automatizados
npm test
```

---

### 🐳 2. Executando com Docker Compose

Suba todo o ecossistema (Aplicação + MySQL + phpMyAdmin) com um único comando:

```bash
docker compose up --build -d
```
* **Aplicação:** `http://localhost:3001`
* **phpMyAdmin:** `http://localhost:8080` *(Usuário: `root` / Senha: `root_password_segura`)*

---

### 🌐 3. Implantação na Hostinger (Hospedagem Web)

1. No **hPanel da Hostinger**, crie um banco de dados MySQL e importe o arquivo `migration_supabase_to_mysql.sql`.
2. Configure o arquivo `.env` na pasta `public_html` com os dados de conexão do banco.
3. Envie os arquivos compilados da pasta `dist`, a pasta `api` e o `.htaccess` para a `public_html`.
4. O site estará instantaneamente online com HTTPS e integração completa!

---

## 👥 Contribuidores & Créditos

* **Desenvolvimento & Arquitetura:** [Schaide Nunes](https://github.com/SchaideNunes)
* **Barbearia Parceira:** AtualEstilo Barbearia (Barrocas - BA)

---

<div align="center">
  <sub>Desenvolvido com excelência técnica, foco em conversão e experiência de usuário. 💈✂️</sub>
</div>
