---
title: Totem Shield
date: 2026-03-09 13:35:54 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/totem0.19.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/totem@0.19.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a local-first AI state management tool designed to address the problem of AI "amnesia" during development by acting as a control plane for AI workflows. It automates the creation of a syntax-aware, embedded vector index and orchestrates multiple AI agents, ensuring they adhere to project-specific constraints, document decisions, and avoid common errors before generating code. Key capabilities include architectural linting, defensive context management, multi-agent orchestration, and self-cleaning memory, all integrated into a Git-native, developer-friendly workflow.

## Release notes

### Minor Changes

-   feat: discriminated union config and fileGlobs scoping
    -   Extract shared orchestrator interface with discriminated union config schema
    -   Add `fileGlobs` scoping for compiled shield rules

