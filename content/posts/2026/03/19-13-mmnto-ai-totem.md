---
title: Totem Shield
date: 2026-03-19 13:51:18 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/cli1.3.3
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/cli@1.3.3**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a GitHub Action and CLI tool designed to enforce project-specific architectural rules and coding standards across repositories, with or without the use of AI assistants. It provides a persistent, shared memory layer and a deterministic enforcement mechanism through pre-push git hooks, ensuring consistency and compliance without requiring real-time AI interaction or external dependencies. Totem simplifies governance and collaboration by automating rule enforcement, enabling cross-repository knowledge sharing, and supporting a wide range of AI coding agents.

## Release notes

### Patch Changes

-   167737c: ### Launch Polish
    -   README: Added "Why Totem" pillars, "Works Without AI" table, and "Totem Mesh" section — all front-and-center
    -   Dynamic baseline rule count in post-init message (was hardcoded)
    -   Linked store queries now distinguish network vs config errors (#666)
    -   Suppressed expected stderr noise in docs.test.ts (#547)
    -   console.log → console.error consistency in install-hooks.ts
    -   @mmnto/totem@1.3.3

