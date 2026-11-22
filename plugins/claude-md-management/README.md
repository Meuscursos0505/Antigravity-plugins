# Antigravity.md Management Plugin

Tools to maintain and improve Antigravity.md files - audit quality, capture session learnings, and keep project memory current.

## What It Does

Two complementary tools for different purposes:

| | Antigravity-md-improver (skill) | /revise-Antigravity-md (command) |
|---|---|---|
| **Purpose** | Keep Antigravity.md aligned with codebase | Capture session learnings |
| **Triggered by** | Codebase changes | End of session |
| **Use when** | Periodic maintenance | Session revealed missing context |

## Usage

### Skill: Antigravity-md-improver

Audits Antigravity.md files against current codebase state:

```
"audit my Antigravity.md files"
"check if my Antigravity.md is up to date"
```

<img src="Antigravity-md-improver-example.png" alt="Antigravity.md improver showing quality scores and recommended updates" width="600">

### Command: /revise-Antigravity-md

Captures learnings from the current session:

```
/revise-Antigravity-md
```

<img src="revise-Antigravity-md-example.png" alt="Revise command capturing session learnings into Antigravity.md" width="600">

## Author

Isabella He (isabella@anthropic.com)
