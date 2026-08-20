# 💈 Regras do Projeto & Diretrizes de Desenvolvimento: AtualEstilo Barbearia (React + SQL)

Este documento estabelece as diretrizes arquiteturais, regras de negócio, requisitos de segurança, padrões de design e o fluxo obrigatório de desenvolvimento guiado por testes (**TDD - Test-Driven Development**) para o projeto **AtualEstilo Barbearia**.

---

## 🚨 REGRA SUPREMA 1: Test-Driven Development (TDD) Obrigatório

> [!IMPORTANT]
> **Cada funcionalidade deve ser rigorosamente testada antes de passar para a próxima.**
> Nenhum código de funcionalidade é considerado finalizado sem os respectivos testes unitários/integração passarem com 100% de sucesso.

### Fluxo de Trabalho (Red-Green-Refactor):
1. **Red (Vermelho):** Escrever primeiro o teste que define o comportamento esperado da funcionalidade (ou componente/endpoint). Executar o teste e garantir que ele falhe.
2. **Green (Verde):** Implementar o código mínimo necessário para fazer o teste passar.
3. **Refactor (Refatorar):** Melhorar a estrutura, segurança e clareza do código, mantendo todos os testes verdes.
4. **Avançar:** Somente após os testes passarem, prosseguir para o próximo componente ou funcionalidade.

---

## 🚨 REGRA SUPREMA 2: Isolamento do Supabase

> [!CAUTION]
> **NÃO ALTERE NEM CONECTE NENHUMA INFORMAÇÃO DO SUPABASE ORIGINAL.**
> O projeto original em `D:\Trabalho\Atual-Stylus` e suas configurações de Supabase devem permanecer intactos. O novo projeto utiliza exclusivamente o banco de dados **SQL Relacional (MySQL / MariaDB da Hostinger)** através de uma API Node/Express protegida.

---

## 📱 Mapeamento de Funcionalidades do Sistema

Todas as funcionalidades do site original foram mapeadas e devem ser preservadas e aprimoradas nesta versão React:

### 1. Landing Page & Navegação
- **Header:** Logotipo sem fundo, menu de navegação desktop (`Início`, `Agendar`, `Sobre Nós`, `Meus Agendamentos`), e menu hambúrguer responsivo mobile com transição suave.
- **Hero Section:** Logo principal em destaque, texto de apresentação da barbearia, card de horário de funcionamento (`Seg - Sex: 08:30 - 18:30`, `Sábado: 08:30 - 18:30`, `Domingo: Fechado`) e botão CTA *"✂️ Agende Seu Horário"*.
- **Catálogo de Serviços:** Grid responsivo com 6 serviços:
  1. *Corte e Barba* (R$ 35,00) - `assets/corte-barba.jpg`
  2. *Corte Social* (R$ 25,00) - `assets/corte-social.jpg`
  3. *Degradê* (R$ 25,00) - `assets/degrade.jpg`
  4. *Navalhado* (R$ 25,00) - `assets/navalhado.jpg`
  5. *Corte Raspado* (R$ 20,00) - `assets/corte-raspado.jpg`
  6. *Barba e Pezinho* (R$ 15,00) - `assets/barba-pezinho.jpg`
  - Ao clicar em qualquer cartão de serviço, o sistema direciona automaticamente para a aba de agendamento com o serviço pré-selecionado.

### 2. Fluxo de Agendamento do Cliente (`/agendar`)
- **Etapa 1 - Barbeiro:** Escolha visual entre Geilson (ID 1) e Denilson (ID 2) com fotos e indicação de seleção.
- **Etapa 2 - Data:** Input de data com limite mínimo de hoje (`min=hoje`). Caso o cliente selecione Domingo, exibir aviso de que a barbearia não funciona aos domingos e bloquear a seleção de horários.
- **Etapa 3 - Horários Reativos:**
  - Carrega os horários de atendimento do barbeiro cadastrados no banco SQL (`barbeiros_config`).
  - Subtrai os horários já ocupados (`agendamentos` com status diferente de `cancelado`).
  - Se a data selecionada for hoje, remove horários que já passaram no relógio local.
  - Se não houver vagas, exibir *"Dia cheio! Sem horários disponíveis."*.
- **Etapa 4 - Serviço:** Dropdown com cálculo do valor correspondente.
- **Etapa 5 - Nome Completo:** Input de texto com sanitização de caracteres.
- **Etapa 6 - WhatsApp:** Input com máscara de telefone estrita `(XX) XXXXX-XXXX` (exige 15 caracteres válidos).
- **Botão de Confirmação:** Permanece desabilitado até o formulário estar 100% preenchido com WhatsApp válido. Mostra feedback contextual de preenchimento.
- **Proteção contra Concorrência:** Revalidação atômica no banco antes de confirmar a inserção para impedir agendamentos duplos no mesmo milissegundo.
- **Notificação WhatsApp:** Redirecionamento automático com mensagem formatada para o barbeiro correto (Geilson: `5575991309594` | Denilson: `5575991073283`) incluindo link para o cliente cancelar caso precise.
- **Persistência Local (`localStorage`):** Salva os dados do cliente para preenchimento automático em visitas futuras.

### 3. Meus Agendamentos (Autoatendimento)
- Campo para digitar o WhatsApp com máscara.
- Consulta ao banco de agendamentos pendentes (`status = 'confirmado'` e `data >= hoje`).
- Exibição em cards com serviço, data em formato brasileiro (`DD/MM/AAAA`), horário e nome do barbeiro.
- Botão *"❌ Cancelar Agendamento"* com confirmação prévia:
  - Altera o status no banco para `cancelado` (liberando o horário imediatamente).
  - Abre o WhatsApp do barbeiro com mensagem pronta informando o cancelamento.

### 4. Sobre Nós & Rodapé
- Seção institucional com a história da barbearia, fotos dos barbeiros, missão e valores.
- Rodapé com endereço (Rua Monsenhor Carlos Olimpio, 31, Barrocas-BA), telefone de contato, horários e links do Instagram e WhatsApp.

### 5. Painel Administrativo (`/admin` e `/login`)
- **Autenticação:** Formulário de login protegido por senha criptografada (bcrypt) e token JWT. Rotas de admin bloqueiam acessos sem token válido.
- **Abas de Gestão:**
  - **⏳ Pendentes:** Agendamentos confirmados agrupados por dia da semana em português (Ex: *"📅 Quinta-feira, 15 de Março de 2026"*). Ações: `✅ Concluir` (muda para `concluido`) e `🗑️ Liberar` (cancela).
  - **✅ Concluídos:** Histórico de atendimentos realizados. Ação: `🗑️ Apagar` (exclusão permanente).
  - **🚫 Bloqueios:** Lista de horários bloqueados de hoje em diante. Ação: `🗑️ Liberar`.
  - **⚙️ Configurações:** Edição dinâmica dos horários de atendimento de cada barbeiro (adicionar novo horário, remover com um clique e salvar no banco SQL).
- **Ações Rápidas do Administrador:**
  - Cadastro manual de agendamento unitário.
  - Opção *"Cliente Fixo"* (recorrente semanal por 52 semanas / 1 ano).
  - Bloqueio unitário de horário.
  - **Bloqueio em Lote:** Modal interativo com grid visual de horários do dia selecionado, permitindo selecionar múltiplos slots livres e bloqueá-los de uma vez só.
- **Filtros Avançados:** Filtro por texto (nome/telefone), filtro por data e filtro por barbeiro com contador em tempo real.

---

## 🎨 Diretrizes de Design & UI/UX (Preto e Branco)

1. **Paleta de Cores Monocromática Premium (Black & White):**
   - Fundo principal: `#000000` (Preto puro) e `#141414` / `#1c1c1c` (Carvão escuro fosco).
   - Destaques / Acentos: `#ffffff` (Branco puro) e `#e5e7eb` / `#cccccc` (Prata / Cinza claro).
   - Textos: `#ffffff` (Títulos e destaques), `#f3f4f6` (Branco suave) e `#9ca3af` (Cinza médio).
   - Botões Principais: Fundo `#ffffff` com texto `#000000` e hover suave.
   - Ações de perigo / Cancelamento: `#ef4444` / `#7f1d1d` (Vermelho carmesim para alertas).
   - Ações de conclusão: `#22c55e` (Verde esmeralda para confirmações no admin).
2. **Tipografia:** Fonte moderna e legível (`Outfit`, `Inter`, `Segoe UI`).
3. **Micro-Animações:** Efeitos suaves de `fade-in`, `slide-up`, `scale-in`, `hover-lift` e `pulse` nos botões de ação e cards.
4. **Navegação em Páginas Dedicadas:** Cada seção (`Início`, `Agendar`, `Sobre Nós`, `Meus Agendamentos`, `Login`, `Admin`) é uma página completa e isolada.
5. **Responsividade:** Layout 100% fluido em celulares de 320px até telas ultrawide.

---

## 🔒 Protocolo de Segurança do Código

1. **Prevenção de SQL Injection:**
   - Proibida qualquer concatenação de strings em queries SQL.
   - Utilizar estritamente consultas parametrizadas (`?`) com o driver `mysql2/promise`.
2. **Sanitização de Dados:**
   - Sanitização de strings para evitar injeção de tags HTML/scripts (XSS).
   - Validação estrita de formatos (telefone com 15 caracteres, data válida no formato `YYYY-MM-DD`, horário no formato `HH:MM`).
3. **Autenticação Segura:**
   - Senhas de administrador armazenadas com hash `bcrypt` (fator de custo 10).
   - Assinatura de tokens JWT com expiração configurada.
4. **Proteção HTTP & Rate Limiting:**
   - Headers seguros via `Helmet`.
   - Rate limit configurado para evitar ataques de força bruta no login e flooding em agendamentos.
5. **Segredos e Credenciais:**
   - Arquivo `.env` incluído no `.gitignore`.
   - Template `.env.example` disponibilizado para configuração na Hostinger.

---

## 🗄️ Configuração do Banco de Dados SQL na Hostinger

1. Acesse o **hPanel da Hostinger** -> **Bancos de Dados MySQL**.
2. Crie um novo banco de dados (ex: `u123456789_atualestilo`) e usuário com senha forte.
3. Abra o **phpMyAdmin** do banco criado.
4. Importe o arquivo `schema.sql` para criar as tabelas `barbeiros_config`, `agendamentos` e `admin_users`.
5. Importe o arquivo `seed.sql` para carregar a configuração inicial dos barbeiros (Geilson e Denilson) e o usuário administrador padrão.
6. Configure as variáveis de ambiente no arquivo `.env` da aplicação.

---

## 🐳 Execução com Docker & Docker Compose

O projeto está totalmente configurado para execução em containers Docker:

### Como rodar com Docker Compose:
```bash
# 1. Iniciar aplicação completa (Frontend + Backend + Banco MySQL + phpMyAdmin)
docker compose up --build -d

# 2. Acessos locais disponíveis:
# - Aplicação React + API: http://localhost:3001
# - phpMyAdmin (Gestão SQL local): http://localhost:8080 (Usuário: root / Senha: root_password_segura)
# - MySQL Port: 3306
```


- [ ] **TDD 1 - Utilitários:** Testes da máscara de telefone e formatadores de data.
- [ ] **TDD 2 - API SQL & Horários:** Testes de cálculo de slots disponíveis e exclusão de horários passados/ocupados.
- [ ] **TDD 3 - Concorrência:** Teste de inserção com validação de horário livre.
- [ ] **TDD 4 - Cancelamento:** Teste de cancelamento e liberação imediata do slot.
- [ ] **TDD 5 - Autenticação:** Teste de login com senha correta e rejeição com senha incorreta.
- [ ] **TDD 6 - Bloqueios em Lote:** Teste de inserção múltipla de bloqueios.
- [ ] **TDD 7 - UI Components:** Renderização correta de cards de serviços, barbeiros e formulários.
