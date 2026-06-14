---
title: agents-md-lint
date: 2026-06-14 15:12:30 +00:00
tags:
  - Taiizor
  - GitHub Actions
draft: false
repo: https://github.com/Taiizor/agents-md-cookbook
marketplace: https://github.com/marketplace/actions/agents-md-lint
version: v1.0.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Taiizor/agents-md-cookbook** to version **v1.0.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agents-md-lint) to find the latest changes.

## What's Changed

First public release of **agents-md-cookbook** — the tested, tool-agnostic AGENTS.md kit.

## What's included
- **15 stack-specific AGENTS.md templates** (TS/Node, Python, Go, Rust, Java/Spring, .NET, Next.js, React/Vite, Django, FastAPI, Rails, monorepo, data/ML, React Native, minimal) — all lint-clean.
- **`agents-md-lint`** ([npm](https://www.npmjs.com/package/agents-md-lint)) — CLI + GitHub Action that scores an AGENTS.md against evidence-based best practices and fails CI on regressions.
- **`agents-md-migrate`** ([npm](https://www.npmjs.com/package/agents-md-migrate)) — converts `.cursorrules`, `CLAUDE.md`, `.windsurfrules`, Copilot/Cline/Aider configs into one AGENTS.md.
- A maintained **tool compatibility matrix** and a 4-doc handbook.

## Quick start
```bash
bunx agents-md-migrate          # convert legacy rule files -> AGENTS.md
bunx agents-md-lint AGENTS.md   # lint and score it
```

GitHub Action:
```yaml
- uses: Taiizor/agents-md-cookbook@v1
  with:
    path: AGENTS.md
```
