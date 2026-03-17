---
title: Totem Shield
date: 2026-03-17 05:52:18 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/cli0.44.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/cli@0.44.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a command-line tool that transforms plain English coding rules (in `.cursorrules` files) into deterministic AST/Regex-based checks to enforce coding standards and prevent bad code commits without relying on AI models or APIs. It automates rule enforcement, integrates with AI agents to enhance project memory, and provides pre-built guardrails for common development frameworks and tools, reducing errors and improving code quality.

## Release notes

### Minor Changes

-   ab254bf: feat: migrate 54 throw sites to TotemError hierarchy

    Every error now includes a `recoveryHint` telling the user exactly how to fix it. New error classes: `TotemOrchestratorError`, `TotemGitError`. New error code: `GIT_FAILED`. Includes rule fix exempting error class imports from the static import lint rule.

### Patch Changes

-   Updated dependencies [ab254bf]
    -   @mmnto/totem@0.44.0

