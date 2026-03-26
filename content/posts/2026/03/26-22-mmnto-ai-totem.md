---
title: Totem Shield
date: 2026-03-26 22:03:07 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/cli1.5.6
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/cli@1.5.6**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a governance tool that provides a persistent, model-agnostic memory layer and deterministic enforcement for AI-driven coding workflows. It automates the creation and application of architectural rules as guardrails across CI pipelines, ensuring consistency and compliance without requiring repeated instructions to AI agents like Copilot or Claude. Key capabilities include zero-LLM enforcement, offline operation, cross-repository rule sharing, and the ability to standardize and enforce coding rules across diverse tools and workflows.

## Release notes

### Patch Changes

-   fc607ce: ### 1.5.6 — Foundation & Hardening

    **Features:**

    -   Unified Findings Model (`TotemFinding`) — common output schema for lint and shield (ADR-071)
    -   `totem-context:` is now the primary override directive; `shield-context:` remains as silent alias
    -   `totem lint --format json` now includes a `findings[]` array alongside `violations[]`
    -   safe-regex validation for user-supplied DLP patterns — ReDoS-vulnerable patterns rejected at input time

    **Fixes:**

    -   `matchesGlob()` now correctly handles `*.test.*` and `dir/*.test.*` patterns (was doing literal string match)
    -   `readRegistry()` differentiates ENOENT from permission/parse errors via `onWarn` callback
    -   `TotemParseError` used for schema validation failures (was generic `Error`)
    -   Git hooks path resolved via `git rev-parse --git-path` (supports worktrees and custom `core.hooksPath`)
    -   `shield-hints.ts` uses `log.dim()` instead of raw ANSI escape codes
    -   `store.count()` failure no longer breaks sync
    -   `maxBuffer` (10MB) added to git diff commands — prevents ENOBUFS on large branch diffs
    -   Windows `ENOTEMPTY` flake fixed with `maxRetries` in test cleanup

    **Chores:**

    -   Dynamic imports in `doctor.ts` for startup latency
    -   8 new lessons extracted from bot reviews (305 compiled rules)
    -   Audited and removed 6 `totem-ignore` suppressions
    -   Updated compiled baseline hash and scope for JSON.parse rule

-   Updated dependencies [fc607ce]
    -   @mmnto/totem@1.5.6

