---
title: Totem Shield
date: 2026-03-11 05:54:16 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/totem0.24.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/totem@0.24.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a local-first AI memory and orchestration tool designed to address the "amnesia" problem in AI development, where models forget project-specific decisions, constraints, and architectural context. It acts as a state manager and control plane, embedding a syntax-aware vector index in your project to serve as a shared memory for AI agents, ensuring they adhere to documented rules and avoid repeating past mistakes. Totem automates defensive context management, multi-agent orchestration, and architectural linting, enabling developers to maintain control, improve AI-generated outputs, and streamline workflows without relying on cloud-based platforms.

## Release notes

### Patch Changes

-   3b8e53b: feat: git hook enforcement — block main commits + deterministic shield gate

    `totem init` now installs two enforcement hooks alongside the existing post-merge hook:

    -   **pre-commit**: blocks direct commits to `main`/`master` (override with `git commit --no-verify`)
    -   **pre-push**: runs `totem shield --deterministic` before push, bails instantly if no compiled rules exist (zero Node startup penalty for Lite tiers)

    Both hooks are idempotent, chain-friendly (append to existing hooks without clobbering), and cross-platform. Non-shell hooks (Node/Python) are detected and safely skipped.

    Also fixes truncated lesson headings — `generateLessonHeading` no longer appends ellipsis on truncation, and the extract prompt uses positive structural constraints for better LLM compliance.

