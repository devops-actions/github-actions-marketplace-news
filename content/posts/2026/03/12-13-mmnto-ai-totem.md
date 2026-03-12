---
title: Totem Shield
date: 2026-03-12 13:35:17 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/mcp0.29.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/mcp@0.29.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is an AI state management and orchestration tool designed for local-first development, acting as a "shared brain" for AI agents. It solves the problem of AI forgetting project-specific knowledge by embedding a syntax-aware vector index directly into your codebase, enabling agents to access architectural constraints, decisions, and trap-logs. Key capabilities include defensive context management, multi-agent coordination, and Git-native memory versioning, ensuring reliable and scalable AI behavior without reliance on cloud-based platforms.

## Release notes

### Patch Changes

-   e311aff: Lesson injection into all orchestrator commands, totem audit, and Junie docs.
    -   **`totem audit`** — strategic backlog audit with human approval gate, interactive multi-select, shell injection prevention via `--body-file`, resilient batch execution (#362)
    -   **Lesson injection** — vector DB lessons now injected into shield (full bodies), triage (condensed), and briefing (condensed) via shared `partitionLessons()` + `formatLessonSection()` helpers (#370)
    -   **Junie docs** — MCP config example and export target docs in README (#371)
    -   **Lesson ContentType** — `add_lesson` MCP tool now uses `lesson` content type for better vector DB filtering (#377)
    -   **Versioned reflex upgrade** — `REFLEX_VERSION=2` with `detectReflexStatus()` and `upgradeReflexes()` for existing consumers (#375)
    -   **Spec lesson injection** — lessons injected as hard constraints into `totem spec` output (#366)

-   Updated dependencies [e311aff]
    -   @mmnto/totem@0.29.0

