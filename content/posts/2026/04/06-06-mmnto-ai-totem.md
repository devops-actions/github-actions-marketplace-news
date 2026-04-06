---
title: Totem Shield
date: 2026-04-06 06:21:24 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/cli1.12.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/cli@1.12.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a GitHub Action designed to prevent coding mistakes by translating plain English rules into deterministic linting constraints, ensuring consistent enforcement without relying on AI models. It automates the process of observing errors, learning from them, and enforcing rules through sub-second, offline checks, reducing repetitive review cycles and improving code quality. Key capabilities include rule creation from markdown, integration with existing CI workflows, and support for multiple programming languages.

## What's Changed

### Minor Changes

-   c4f9746: 1.12.0 — The Umpire & The Router
    -   Standalone binary: lite-tier distribution works without Node.js, using @ast-grep/wasm for full AST rule coverage across linux-x64, darwin-arm64, win32-x64
    -   Ollama auto-detection: `totem init` detects local Ollama and defaults to gemma4 for classification
    -   ast-grep for ESLint properties: `no-restricted-properties` import uses precision AST matching
    -   Lazy WASM init: AST engine only initializes when lint/test commands need it
    -   GHA injection rule scope: narrowed to `run:` contexts, no false positives in `env:`/`with:` blocks
    -   Windows CI stability: fixed flaky orchestrator timeout

### Patch Changes

-   Updated dependencies [c4f9746]
    -   @mmnto/totem@1.12.0

