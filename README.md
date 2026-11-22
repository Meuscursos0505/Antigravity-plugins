# Antigravity Plugins Suite

Repositório adaptado e otimizado da suíte de plugins para o ecossistema **Antigravity** (Google DeepMind / Gemini CLI & IDE).

---

## 🧭 Guias Rápidos & Documentação

* 📘 **[Guia Prático para Iniciantes e Não Programadores](GUIA_PRATICO.md):** Aprenda como usar todo este potencial sem precisar escrever uma linha de código.
* 📚 **[Catálogo Completo dos 57 Plugins (Pra que serve e Quando usar)](PLUGINS.md):** Lista detalhada de cada plugin com exemplos de comandos prontos para você copiar e colar.

---

## 🚀 Visão Geral

Este repositório contém **57 plugins e utilitários de engenharia**, agora 100% integrados e reformatados para o ecossistema Antigravity:

* **Subagentes Especializados:** Arquitetos de software, revisores de PRs, exploradores de código e simplificadores adaptados para os modelos Antigravity (Flash-Lite, Flash, Pro).
* **Skills Nativas (`SKILL.md`):** Manuais operacionais e diretrizes técnicas diretamente utilizáveis pelas skills nativas do Antigravity.
* **Ferramentas MCP (Model Context Protocol):** Conectores prontos para Playwright, GitHub, GitLab, Firebase, Linear, Discord e muito mais.
* **Suporte a LSPs:** Configurações pré-prontas para servidores de linguagem (TypeScript, Python, Go, Rust, C#, Kotlin, Swift, Ruby, etc.).

---

## 💡 O que é cada elemento? (Glossário Simples)

* 🧰 **Plugin:** Uma caixa de ferramentas temática completa (ex: um pacote só para desenvolvimento de novas telas ou só para segurança).
* 📖 **Skill (Habilidade):** Um manual com instruções passo a passo e regras rigorosas que ensinam a IA a executar tarefas sem cometer erros.
* 🤖 **Subagente:** Um especialista dedicado que a IA principal chama para tarefas focadas (ex: um arquiteto para planejar ou um revisor para auditar).
* 🔌 **MCP (Model Context Protocol):** Conexões externas que permitem à IA controlar programas reais (navegador web, GitHub, banco de dados, etc.).

---

## 📦 Estrutura dos Arquivos

```text
Antigravity-plugins/
├── GUIA_PRATICO.md           # Guia didático passo a passo para iniciantes
├── PLUGINS.md                # Catálogo detalhado dos 57 plugins (o que faz, quando usar e exemplos)
├── plugins/                  # Pasta com todos os 57 plugins adaptados
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

---

## 🧩 Resumo Rápido dos Plugins Mais Populares

| Plugin | Para que serve? | Quando usar? |
| :--- | :--- | :--- |
| **`feature-dev`** | Conduz o desenvolvimento de novos projetos e recursos do início ao fim. | Sempre que quiser criar uma ideia ou recurso novo do zero. |
| **`code-review`** | Executa auditoria minuciosa com alta precisão e sem falsos alarmes. | Antes de publicar ou quando quiser validar se há bugs no código. |
| **`code-simplifier`** | Refatora e reduz código confuso mantendo o funcionamento idêntico. | Quando o código estiver grande, redundante ou bagunçado. |
| **`commit-commands`** | Padroniza e automatiza mensagens de salvamento no Git e no GitHub. | Para salvar o trabalho com histórico limpo e profissional. |
| **`frontend-design`** | Ensina a IA diretrizes visuais modernas e acessíveis. | Ao desenhar interfaces, botões, formulários e layouts web. |
| **`security-guidance`** | Protege seu sistema contra vazamento de senhas e brechas. | Antes de colocar qualquer aplicação no ar ou expor dados. |
| **`playwright`** | Abre o navegador e clica nos botões para testar de verdade. | Para checar se telas e formulários funcionam na prática. |

*(Consulte o documento **[PLUGINS.md](PLUGINS.md)** para ver os detalhes e exemplos de todos os 57 plugins).*

---

## 🔄 Adaptações Realizadas para o Antigravity

1. **Ferramentas (`tools`):** Substituição das chamadas proprietárias (`Bash`, `Read`, `Edit`, `Write`) para as ferramentas padrão do Antigravity (`run_command`, `read_file`, `edit_file`, `write_file`, `search_web`).
2. **Modelos:** Mapeamento de tiers de inteligência para o motor do Antigravity (`flash_lite`, `flash`, `pro`, `inherit`).
3. **Skills & Commands:** Todos os comandos e procedimentos agora utilizam o formato unificado `SKILL.md` com YAML frontmatter válido.
4. **Dupla Compatibilidade:** Todos os manifests suportam simultaneamente a leitura raiz (`plugin.json`) e o subdiretório de convenção (`.claude-plugin/plugin.json`).

---

## 📄 Licença

Este projeto preserva as licenças originais dos respectivos plugins e códigos de terceiros sob as licenças de código aberto correspondentes (verifique os arquivos `LICENSE` em cada pasta de plugin).
