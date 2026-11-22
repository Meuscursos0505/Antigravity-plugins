# Antigravity Plugins Suite

Repositório adaptado e otimizado da suíte de plugins para o ecossistema **Antigravity** (Google DeepMind / Gemini CLI & IDE).

---

## 🚀 Visão Geral

Este repositório contém **57 plugins e utilitários de engenharia**, agora 100% integrados e reformatados para o ecossistema Antigravity:

* **Subagentes Especializados:** Arquitetos de software, revisores de PRs, exploradores de código e simplificadores adaptados para os modelos Antigravity (Flash-Lite, Flash, Pro).
* **Skills Nativas (`SKILL.md`):** Manuais operacionais e diretrizes técnicas diretamente utilizáveis pelas skills nativas do Antigravity.
* **Ferramentas MCP (Model Context Protocol):** Conectores prontos para Playwright, GitHub, GitLab, Firebase, Linear, Discord e muito mais.
* **Suporte a LSPs:** Configurações pré-prontas para servidores de linguagem (TypeScript, Python, Go, Rust, C#, Kotlin, Swift, Ruby, etc.).

---

## 📦 Estrutura dos Plugins

```text
Antigravity-plugins/
├── plugins/
│   ├── code-review/          # Revisão cirúrgica de código e PRs com agentes avaliadores
│   ├── feature-dev/          # Arquitetura, exploração e implementação ponta-a-ponta
│   ├── pr-review-toolkit/    # Subagentes especializados para erros, tipos e testes em PRs
│   ├── code-simplifier/      # Refatoração e eliminação de complexidade acidental
│   ├── commit-commands/      # Automação de commits semânticos, branch e PR
│   ├── frontend-design/      # Diretrizes e arquitetura de interfaces modernas
│   ├── security-guidance/    # Verificações de segurança e prevenção de vulnerabilidades
│   ├── typescript-lsp/       # Servidor de linguagem TypeScript/JavaScript
│   ├── pyright-lsp/          # Servidor de linguagem Python (Pyright)
│   ├── playwright/           # Testes e automação de navegador via MCP
│   └── ...                   # Mais de 50 plugins adaptados
├── catalog.json              # Índice unificado com metadados de todos os plugins
├── install.ps1               # Script de instalação para Windows (PowerShell)
├── install.sh                # Script de instalação para Linux / macOS
└── README.md                 # Documentação oficial
```

---

## 🛠️ Como Instalar e Usar no Antigravity

### 1. Instalação Completa (Recomendado)

No Windows (PowerShell):
```powershell
.\install.ps1 -All
```

No Linux ou macOS:
```bash
chmod +x ./install.sh
./install.sh --all
```

Os plugins serão copiados diretamente para o diretório de plugins do seu Antigravity (`~/.gemini/config/plugins/`), ficando imediatamente disponíveis.

### 2. Instalação de um Plugin Específico

Exemplo para instalar apenas o plugin de desenvolvimento de features:
```powershell
.\install.ps1 -PluginName feature-dev
```

Ou o kit de revisão de PRs:
```powershell
.\install.ps1 -PluginName pr-review-toolkit
```

---

## 🧩 Principais Plugins em Destaque

| Plugin | Descrição | Componentes |
| :--- | :--- | :--- |
| **`feature-dev`** | Conduz o desenvolvimento de novas funcionalidades desde a análise arquitetural até o review. | `agents/` (`code-architect`, `code-explorer`, `code-reviewer`), `skills/` |
| **`code-review`** | Executa auditoria minuciosa em pull requests com filtragem de falso positivo e alta precisão. | `commands/`, `skills/` |
| **`pr-review-toolkit`** | Conjunto de subagentes para validação profunda de código em PRs. | `agents/`, `skills/` |
| **`code-simplifier`** | Refatora e reduz duplicações e código confuso mantendo a corretude do comportamento. | `agents/`, `skills/` |
| **`commit-commands`** | Padronização de mensagens de commit e automação de push e criação de PRs. | `commands/`, `skills/` |
| **`security-guidance`** | Padrões de segurança defensiva para desenvolvimento de APIs e frontends. | `hooks/`, `skills/` |
| **`playwright`** | Automação e testes ponta-a-ponta com navegador via servidor MCP. | `.mcp.json`, `skills/` |
| **`github` & `gitlab`** | Gestão de issues, revisões e pull requests integrado via MCP. | `.mcp.json` |

---

## 🔄 Adaptações Realizadas para o Antigravity

1. **Ferramentas (`tools`):** Substituição das chamadas proprietárias (`Bash`, `Read`, `Edit`, `Write`) para as ferramentas padrão do Antigravity (`run_command`, `read_file`, `edit_file`, `write_file`, `search_web`).
2. **Modelos:** Mapeamento de tiers de inteligência para o motor do Antigravity (`flash_lite`, `flash`, `pro`, `inherit`).
3. **Skills & Commands:** Todos os comandos e procedimentos agora utilizam o formato unificado `SKILL.md` com YAML frontmatter válido.
4. **Dupla Compatibilidade:** Todos os manifests suportam simultaneamente a leitura raiz (`plugin.json`) e o subdiretório de convenção (`.claude-plugin/plugin.json`).

---

## 📄 Licença

Este projeto preserva as licenças originais dos respectivos plugins e códigos de terceiros sob as licenças de código aberto correspondentes (verifique os arquivos `LICENSE` em cada pasta de plugin).
