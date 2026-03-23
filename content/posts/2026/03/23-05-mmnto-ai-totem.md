---
title: Totem Shield
date: 2026-03-23 05:54:01 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/mcp1.3.19
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/mcp@1.3.19**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a GitHub Action that automates the enforcement of architectural rules and coding standards within a project by creating a persistent, model-agnostic memory layer. It ensures consistent rule compliance across AI coding agents (e.g., Copilot, Claude) and provides deterministic CI guardrails to catch violations before code is pushed. Key features include cross-repo knowledge sharing, offline enforcement without reliance on external APIs or networks, and compatibility with both AI-assisted and non-AI workflows.

## Release notes

### Patch Changes

-   feat: markdown-magic deterministic doc injection
    -   Integrated markdown-magic with 4 transforms (RULE_COUNT, HOOK_LIST, CHMOD_HOOKS, COMMAND_TABLE)
    -   Wired docs:inject into totem wrap pipeline (step 5/6, after LLM docs, before compile)
    -   9 unit tests for transforms, runs in 0.02s
    -   Eliminates stale hardcoded values in docs across releases

-   Updated dependencies
    -   @mmnto/totem@1.3.19

