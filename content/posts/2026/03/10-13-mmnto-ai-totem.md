---
title: Totem Shield
date: 2026-03-10 13:24:29 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/cli0.22.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/cli@0.22.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

**Totem** is an AI control plane designed to provide persistent, context-aware memory for local AI development. It prevents AI agents from "forgetting" critical project decisions, constraints, and architectural rules by embedding a syntax-aware vector index (LanceDB) within the project directory. Totem acts as a state manager, architectural linter, and multi-agent orchestrator, automating defensive context management and ensuring AI systems produce consistent, informed, and high-quality outputs without relying on cloud-based solutions.

## Release notes

### Minor Changes

-   b3a07b8: ### 0.22.0 — AST Gating, OpenAI Orchestrator, Security Hardening

    **New Features**

    -   **Tree-sitter AST gating** for deterministic shield — reduces false positives by classifying diff additions as code vs. non-code (#287)
    -   **Generic OpenAI-compatible orchestrator** — supports OpenAI API, Ollama, LM Studio, and any OpenAI-compatible local server via BYOSD pattern (#285, #293)
    -   **`totem handoff --lite`** — zero-LLM session snapshots with ANSI-sanitized git output (#281, #288)
    -   **CI drift gate** with adversarial evaluation harness (#280)
    -   **Concise lesson headings** — shorter, more searchable headings from extract (#271, #278)

    **Security Hardening**

    -   Extract prompt injection hardening with explicit SECURITY NOTICE for untrusted PR fields (#279, #289, #295)
    -   Path containment checks in drift detection to prevent directory traversal (#284)
    -   ANSI terminal injection sanitization in handoff and git metadata (#292)

    **Bug Fixes**

    -   GCA on-demand review configuration fixes (#278, #282)
    -   GitHub Copilot lesson export confirmed working via existing `config.exports` (#294)

### Patch Changes

-   Updated dependencies [b3a07b8]
    -   @mmnto/totem@0.22.0

