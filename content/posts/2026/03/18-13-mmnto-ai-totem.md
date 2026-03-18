---
title: Totem Shield
date: 2026-03-18 13:33:26 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/cli1.1.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/cli@1.1.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

**Totem** is a GitHub Action and CLI tool designed to provide AI coding agents with a persistent, shared memory of project-specific architectural rules, ensuring consistent adherence to coding standards across sessions and tools. It automates the creation and enforcement of deterministic guardrails for codebases, preventing common architectural mistakes and enhancing collaboration between AI agents like Copilot, Claude, and Gemini. Additionally, it supports non-code repositories and offers planning tools to guide AI agents with context-aware implementation plans, improving project quality and reducing manual oversight.

## Release notes

### Minor Changes

-   4c0b2cd: Release 1.1.0 — Tier 2 AST engine, cross-totem queries, and totem explain.

    ### Highlights

    -   **Tier 2 AST engine**: Compiled rules now support Tree-sitter S-expression queries alongside regex. Enables structural rule matching that regex alone can't express.
    -   **Cross-totem queries**: New `linkedIndexes` config lets `totem spec` query knowledge from other totem-managed directories (e.g., strategy repos, design docs) alongside the primary project index.
    -   **totem init --bare**: Zero-config initialization for non-code repositories — notes, docs, ADRs, infrastructure configs. No package.json required.
    -   **totem explain**: Look up the full lesson behind any compiled rule violation. Supports partial hash prefix matching. Zero LLM, instant.
    -   **TODO guardrail rules**: 3 new baseline rules catch `// TODO: implement` stubs, `throw new Error("Not implemented")`, and empty catch blocks. Baseline now ships 15 pre-compiled rules.
    -   **Dimension mismatch detection**: `totem sync` writes `index-meta.json`. Switching embedding providers without rebuilding the index now throws a clear error instead of silently returning garbage results.
    -   **Compiled rules reverted to curated set**: The 147 hand-audited rules are preserved. Blind recompilation with Flash produced regressions — compiler improvements tracked in #670.

### Patch Changes

-   Updated dependencies [4c0b2cd]
    -   @mmnto/totem@1.1.0

