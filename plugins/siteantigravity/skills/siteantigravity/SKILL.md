---
name: siteantigravity
description: Orquestrador definitivo de criação de sites de alto nível em 6 fases integradas (Planejamento, Design Visual Awwwards, Construção TypeScript, Testes no Navegador, Auditoria de Código e Salvamento Git).
---

# 🚀 Pipeline /siteantigravity: Criação de Sites de Alto Padrão

Quando o usuário invocar `/siteantigravity` ou solicitar a criação de um site através deste fluxo, execute obrigatoriamente e sequencialmente as **6 Fases de Desenvolvimento**:

---

## 🏗️ FASE 1: Planejamento Arquitetural (O Arquiteto)
*Referência: `feature-dev`*

1. **Análise de Requisitos e Escopo:**
   - Compreenda o objetivo do site, público-alvo, persona e proposta de valor.
   - Escolha a pilha técnica ideal (ex: Next.js / React + Tailwind CSS v4 ou HTML5 + CSS semântico moderno + JS modular).
2. **Plano de Estrutura:**
   - Defina os arquivos a serem criados, separação de componentes, estrutura de pastas e ativos necessários antes de escrever o código.
   - Apresente um breve resumo da arquitetura proposta antes de iniciar a construção.

---

## 🎨 FASE 2: Visual & Estética de Alto Padrão (O Designer)
*Referência: `sitealtonivel` + `frontend-design`*

Aplique rigorosamente o padrão visual de classe mundial (*Awwwards, FWA, Framer Showcase*):
1. **Eliminação de Clichês de IA:**
   - PROIBIDO: Gradientes roxos padronizados sobre fundo preto opaco, cards repetitivos de 3 colunas sem propósito, emojis soltos como ícones principais ou textos centralizados monótonos.
2. **Tipografia Editorial:**
   - Use fontes de forte personalidade: *Satoshi, Cabinet Grotesk, Geist, Syne, Clash Display* ou serifadas contemporâneas via Google Fonts ou fontes locais.
3. **Acabamento Visual & Profundidade:**
   - Bordas refinadas de 1px (`border-white/10` ou `border-black/5`).
   - Efeitos de vidro líquido (*liquid glass*, `backdrop-blur-md`, reflexos sutis).
   - Paleta de cores sofisticada com contraste calibrado e hierarquia visual evidente.
4. **Movimento & Microinterações:**
   - Microinterações táteis no clique e hover de botões e links.
   - Rolagem suave e transições com física fluida (Spring physics, CSS transitions suaves ou Lenis/GSAP quando cabível).

---

## ⚡ FASE 3: Construção e Inteligência de Código (O Desenvolvedor)
*Referência: `typescript-lsp`*

1. **Implementação Modular:**
   - Escreva código limpo, semântico, componentizado e fortemente tipado quando em TypeScript.
   - Garanta importações limpas, sem dependências circulares e com tratamento adequado de estados vazios, carregamento e erro.
2. **Performance:**
   - Otimize imagens, carregamento de fontes e garanta performance visual estável a 60 FPS.

---

## 🧪 FASE 4: Teste Real de Execução e Responsividade (O Piloto de Testes)
*Referência: `playwright`*

1. **Responsividade Multi-Dispositivo:**
   - Garanta que o layout se adapte com perfeição tanto para mobile (375px/390px) quanto para desktop (1440px+).
2. **Validação de Fluxos:**
   - Se um servidor local estiver ativo ou os arquivos estiverem gerados, valide a renderização e interatividade dos botões, menus e formulários.

---

## 🛡️ FASE 5: Pente Fino, Limpeza e Segurança (O Auditor)
*Referência: `code-simplifier` + `security-guidance` + `code-review`*

1. **Simplificação de Código:**
   - Elimine códigos mortos, variáveis não utilizadas e reduza duplicações acidentais.
2. **Varredura de Segurança:**
   - Certifique-se de que não haja injeções de script (XSS), dados sensíveis ou credenciais expostas no código cliente.
3. **Auditoria de Qualidade:**
   - Valide se todos os links, botões e atributos de acessibilidade (ARIA, alt text) estão preenchidos.

---

## 🚀 FASE 6: Salvamento & Finalização (O DevOps)
*Referência: `commit-commands`*

1. **Documentação e Organização:**
   - Explique ao usuário exatamente o que foi criado e como visualizar o site.
2. **Histórico Git:**
   - Organize os arquivos no repositório com commits semânticos e claros (`feat: ...`).
