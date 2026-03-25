---
title: Totem Shield
date: 2026-03-25 13:43:26 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/mcp1.5.3
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/mcp@1.5.3**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a governance tool that creates a persistent memory layer for AI coding agents and compiles architectural rules into enforceable CI guardrails. It automates the process of maintaining and enforcing coding standards across projects and repositories, ensuring consistency and compliance without repeatedly instructing AI agents. Key capabilities include offline rule enforcement, cross-repository rule sharing, and integration with Git pipelines and enterprise dashboards, making it suitable for both AI-assisted and manual coding workflows.

## Release notes

### Patch Changes

-   ### Shield Redesign — Structured Verdicts + Deterministic Fast-Path (#910)

    -   Three-stage pipeline: file classification → hybrid diff filtering → Zod-validated JSON findings
    -   Non-code diffs (docs, YAML, config) skip LLM entirely for instant PASS
    -   Severity levels (CRITICAL/WARN/INFO) with deterministic pass/fail — LLM no longer decides the gate
    -   V1 regex fallback for custom `.totem/prompts/shield.md` overrides

    ### Compile Pipeline Reliability (#939, #941)

    -   Pre-push hook auto-verifies compile manifest; auto-compiles if stale then aborts push
    -   `totem lint` emits non-blocking staleness warning when manifest is out of date
    -   Compiler normalizes shallow fileGlobs (`*.ts` → `**/*.ts`) for external tool compatibility
    -   `sanitizeFileGlobs` guards against non-string and empty entries

    ### CLI Performance (#943)

    -   Converted ~90 static imports to dynamic `await import()` across 25 command files
    -   Heavy modules only loaded when the specific command is executed
    -   Startup latency reduced for lightweight operations (`--help`, `--version`)

    ### Error Logging (#849)

    -   Standardized `[Totem Error]` prefix across all CLI error output
    -   `handleError` now consistently tags errors with guard against double-prefixing

-   Updated dependencies
    -   @mmnto/totem@1.5.3

