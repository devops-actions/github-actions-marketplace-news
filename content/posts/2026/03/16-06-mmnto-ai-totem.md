---
title: Totem Shield
date: 2026-03-16 06:13:00 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/mcp0.37.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/mcp@0.37.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a governance tool designed to ensure the safety and compliance of AI-assisted code by enforcing deterministic guardrails based on user-defined natural language rules. It automates the detection and prevention of unsafe or non-compliant code before it is committed, eliminating reliance on AI hallucinations and providing audit-ready compliance reporting. Key features include local, fast code validation, continuous learning from detected issues, and seamless integration with existing development tools and workflows.

## Release notes

### Patch Changes

-   382c77a: feat: `totem lint` — new command for fast compiled rule checks (zero LLM)

    Split from `totem shield`. `totem lint` runs compiled rules against your diff in ~2 seconds with no API keys needed. `totem shield` is now exclusively the AI-powered code review. `--deterministic` flag is deprecated with a warning.

    feat: semantic rule observability (Phase 1)

    Rules now track `createdAt`, `triggerCount`, `suppressCount`, and `lastTriggeredAt` metadata. `totem stats` displays rule metrics. Foundation for automated rule decay analysis.

    fix: shield rule scoping — dynamic import and match/exec rules narrowed

    Dynamic import rule scoped to command files only (not adapters/orchestrators). match/exec rule scoped to security-sensitive code only. `.cjs` rule excludes CI workflow YAML.

-   Updated dependencies [382c77a]
    -   @mmnto/totem@0.37.0

