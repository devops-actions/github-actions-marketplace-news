---
title: Totem Shield
date: 2026-03-18 06:04:32 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/cli1.0.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/cli@1.0.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a CLI tool designed to enforce project-specific coding rules and guardrails for AI coding agents like Copilot, Claude Code, and others. It automates the process of converting plain English rules into deterministic AST/Regex checks, ensuring bad code is blocked before it commits, without relying on LLMs or risking hallucinations. Key capabilities include enforcing coding standards, providing pre-configured best practices, and enabling continuous learning to prevent recurring issues, offering robust, automated code quality assurance for AI-assisted development workflows.

## Release notes

### Major Changes

-   d49cdbf: Release 1.0.0 — Totem is production-ready.

    ### Highlights

    -   **Zero-config lint protection**: `totem init` now ships 13 pre-compiled universal baseline rules. Every user gets deterministic lint protection from Day 1 — no API keys, no LLM calls required.
    -   **Filesystem concurrency locks**: Sync and MCP mutations are now protected by PID-aware file locks with signal cleanup (SIGINT, SIGTERM, SIGHUP, SIGQUIT).
    -   **Portability audit**: CLI help grouped by tier, `requireGhCli()` guard on GitHub commands, dynamic orchestrator detection, configurable bot markers, expanded issue URL regex for GitLab/self-hosted.
    -   **TotemError consistency**: All error paths use structured `TotemError` hierarchy with recovery hints. Ollama model-not-found errors give actionable `ollama pull` instructions.
    -   **MCP race condition fix**: `getContext()` uses promise memoization to prevent duplicate connections from concurrent callers, with retry on transient failures.
    -   **Compiled rule audit**: 148 → 147 rules, 0 undefined severity, false positives on TotemError/type imports/stdlib imports eliminated.
    -   **Manual docs survive regeneration**: `docs/manual/` content is injected verbatim into `totem docs` output.

### Patch Changes

-   Updated dependencies [d49cdbf]
    -   @mmnto/totem@1.0.0

