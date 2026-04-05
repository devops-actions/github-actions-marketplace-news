---
title: Totem Shield
date: 2026-04-05 06:26:25 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/cli1.11.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/cli@1.11.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a GitHub Action and standard library for automated codebase governance that transforms institutional knowledge into enforceable rules, preventing recurring coding mistakes. By capturing lessons from code reviews or plain-English documentation, Totem generates deterministic constraints that block non-compliant code during CI/CD workflows or pre-push hooks. This eliminates repetitive review errors, reduces "bot-tax," and enables teams to maintain consistent coding standards without relying on rigid workflows or external AI agents.

## What's Changed

### Minor Changes

-   33039d1: 1.11.0 — The Import Engine

    Rule portability across tools, compiler safety, and thick baseline language packs.

    -   **Proactive Language Packs (#1152):** 50 baseline rules (up from 23) across TypeScript, Node.js Security, and Shell/POSIX. Sourced from @typescript-eslint, OWASP, and ShellCheck best practices.
    -   **Lesson Retirement Ledger (#1165):** `.totem/retired-lessons.json` tracks intentionally removed rules, preventing re-extraction during future import cycles.
    -   **Compiler Guard (#1177):** Rejects self-suppressing patterns (totem-ignore, totem-context, shield-context) at compile time.
    -   **ESLint Syntax/Properties (#1140):** `totem import --from-eslint` now handles `no-restricted-properties` (dot, optional chaining, bracket notation) and `no-restricted-syntax` (ForInStatement, WithStatement, DebuggerStatement).
    -   **Model Defaults (#1185):** `totem init` defaults updated to `claude-sonnet-4-6` (Anthropic) and `gpt-5.4-mini` (OpenAI).
    -   **Supported Models Refresh:** Gemini 2.5 deprecation warning, gemma4/qwen3 for Ollama, new embedding models.

### Patch Changes

-   Updated dependencies [33039d1]
    -   @mmnto/totem@1.11.0

