# Antigravity Plugins Suite

RepositÃ³rio adaptado e otimizado da suÃ­te oficial de plugins da Anthropic (`anthropics/claude-plugins-`) para o ecossistema **Antigravity** (Google DeepMind / Gemini CLI & IDE).

---

## ðŸš€ VisÃ£o Geral

Este repositÃ³rio contÃ©m **57 plugins e utilitÃ¡rios de engenharia**, agora 100% integrados e reformatados para o ecossistema Antigravity:

* **Subagentes Especializados:** Arquitetos de software, revisores de PRs, exploradores de cÃ³digo e simplificadores adaptados para os modelos Antigravity (Flash-Lite, Flash, Pro).
* **Skills Nativas (`SKILL.md`):** Manuais operacionais e diretrizes tÃ©cnicas diretamente utilizÃ¡veis pelas skills nativas do Antigravity.
* **Ferramentas MCP (Model Context Protocol):** Conectores prontos para Playwright, GitHub, GitLab, Firebase, Linear, Discord e muito mais.
* **Suporte a LSPs:** ConfiguraÃ§Ãµes prÃ©-prontas para servidores de linguagem (TypeScript, Python, Go, Rust, C#, Kotlin, Swift, Ruby, etc.).

---

## ðŸ“¦ Estrutura dos Plugins

```text
Antigravity-plugins/
â”œâ”€â”€ plugins/
â”‚   â”œâ”€â”€ code-review/          # RevisÃ£o cirÃºrgica de cÃ³digo e PRs com agentes avaliadores
â”‚   â”œâ”€â”€ feature-dev/          # Arquitetura, exploraÃ§Ã£o e implementaÃ§Ã£o ponta-a-ponta
â”‚   â”œâ”€â”€ pr-review-toolkit/    # Subagentes especializados para erros, tipos e testes em PRs
â”‚   â”œâ”€â”€ code-simplifier/      # RefatoraÃ§Ã£o e eliminaÃ§Ã£o de complexidade acidental
â”‚   â”œâ”€â”€ commit-commands/      # AutomaÃ§Ã£o de commits semÃ¢nticos, branch e PR
â”‚   â”œâ”€â”€ frontend-design/      # Diretrizes e arquitetura de interfaces modernas
â”‚   â”œâ”€â”€ security-guidance/    # VerificaÃ§Ãµes de seguranÃ§a e prevenÃ§Ã£o de vulnerabilidades
â”‚   â”œâ”€â”€ typescript-lsp/       # Servidor de linguagem TypeScript/JavaScript
â”‚   â”œâ”€â”€ pyright-lsp/          # Servidor de linguagem Python (Pyright)
â”‚   â”œâ”€â”€ playwright/           # Testes e automaÃ§Ã£o de navegador via MCP
â”‚   â””â”€â”€ ...                   # Mais de 50 plugins adaptados
â”œâ”€â”€ catalog.json              # Ãndice unificado com metadados de todos os plugins
â”œâ”€â”€ install.ps1               # Script de instalaÃ§Ã£o para Windows (PowerShell)
â”œâ”€â”€ install.sh                # Script de instalaÃ§Ã£o para Linux / macOS
â””â”€â”€ README.md                 # DocumentaÃ§Ã£o oficial
```

---

## ðŸ› ï¸ Como Instalar e Usar no Antigravity

### 1. InstalaÃ§Ã£o Completa (Recomendado)

No Windows (PowerShell):
```powershell
.\install.ps1 -All
```

No Linux ou macOS:
```bash
chmod +x ./install.sh
./install.sh --all
```

Os plugins serÃ£o copiados diretamente para o diretÃ³rio de plugins do seu Antigravity (`~/.gemini/config/plugins/`), ficando imediatamente disponÃ­veis.

### 2. InstalaÃ§Ã£o de um Plugin EspecÃ­fico

Exemplo para instalar apenas o plugin de desenvolvimento de features:
```powershell
.\install.ps1 -PluginName feature-dev
```

Ou o kit de revisÃ£o de PRs:
```powershell
.\install.ps1 -PluginName pr-review-toolkit
```

---

## ðŸ§© Principais Plugins em Destaque

| Plugin | DescriÃ§Ã£o | Componentes |
| :--- | :--- | :--- |
| **`feature-dev`** | Conduz o desenvolvimento de novas funcionalidades desde a anÃ¡lise arquitetural atÃ© o review. | `agents/` (`code-architect`, `code-explorer`, `code-reviewer`), `skills/` |
| **`code-review`** | Executa auditoria minuciosa em pull requests com filtragem de falso positivo e alta precisÃ£o. | `commands/`, `skills/` |
| **`pr-review-toolkit`** | Conjunto de 6 subagentes para validaÃ§Ã£o profunda de cÃ³digo. | `agents/`, `skills/` |
| **`code-simplifier`** | Refatora e reduz duplicaÃ§Ãµes e cÃ³digo confuso mantendo a corretude do comportamento. | `agents/`, `skills/` |
| **`commit-commands`** | PadronizaÃ§Ã£o de mensagens de commit e automaÃ§Ã£o de push e criaÃ§Ã£o de PRs. | `commands/`, `skills/` |
| **`security-guidance`** | PadrÃµes de seguranÃ§a defensiva para desenvolvimento de APIs e frontends. | `hooks/`, `skills/` |
| **`playwright`** | AutomaÃ§Ã£o e testes ponta-a-ponta com navegador via servidor MCP. | `.mcp.json`, `skills/` |
| **`github` & `gitlab`** | GestÃ£o de issues, revisÃµes e pull requests integrado via MCP. | `.mcp.json` |

---

## ðŸ”„ AdaptaÃ§Ãµes Realizadas para o Antigravity

1. **Ferramentas (`tools`):** SubstituiÃ§Ã£o das chamadas proprietÃ¡rias (`Bash`, `Read`, `Edit`, `Write`) para as ferramentas padrÃ£o do Antigravity (`run_command`, `read_file`, `edit_file`, `write_file`, `search_web`).
2. **Modelos:** Mapeamento de tiers de inteligÃªncia para o motor do Antigravity (`flash_lite`, `flash`, `pro`, `inherit`).
3. **Skills & Commands:** Todos os comandos e procedimentos agora utilizam o formato unificado `SKILL.md` com YAML frontmatter vÃ¡lido.
4. **Dupla Compatibilidade:** Todos os manifests suportam simultaneamente a leitura raiz (`plugin.json`) e o subdiretÃ³rio de convenÃ§Ã£o (`.claude-plugin/plugin.json`).

---

## ðŸ“„ LicenÃ§a

Este projeto preserva as licenÃ§as originais dos respectivos plugins e cÃ³digos de terceiros da Anthropic e contribuidores sob a licenÃ§a correspondente (verifique os arquivos `LICENSE` em cada pasta de plugin).

