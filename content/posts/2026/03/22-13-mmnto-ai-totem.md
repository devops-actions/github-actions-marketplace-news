---
title: Totem Shield
date: 2026-03-22 13:22:55 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/cli1.3.17
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/cli@1.3.17**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a GitHub Action and CLI tool that compiles project-specific architectural rules into persistent, deterministic guardrails for CI workflows. It automates the enforcement of coding and architectural standards across repositories, ensuring consistency and compliance without requiring repeated input to AI coding agents. Key capabilities include cross-repository shared memory, model-agnostic rule enforcement, and a fully deterministic system that operates independently of AI or network connections, making it suitable for secure and air-gapped environments.

## Release notes

### Patch Changes

-   God Object cleanup: extract.ts (804→566), shield.ts (587→475), audit.ts (560→510), lance-store.ts (523→285). Suspicious lesson detection + semantic dedup moved to core. Nit extraction from CodeRabbit review bodies. Compiler quality gate for untested error rules. Wind tunnel CI gate.
-   Updated dependencies
    -   @mmnto/totem@1.3.17

