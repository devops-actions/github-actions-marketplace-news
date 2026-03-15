---
title: Totem Shield
date: 2026-03-15 13:32:30 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/totem0.35.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/totem@0.35.1**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a local-first governance compiler for AI agents that enables deterministic, git-native, and secure AI orchestration. It automates tasks such as multi-agent collaboration, context management, and AI behavior governance by providing features like embedded memory indexing, defensive context reflexes, and drift detection. Designed for enterprise-scale use, Totem emphasizes security, privacy, and developer control, offering a CLI-driven, modular approach to managing AI workflows without reliance on cloud-based solutions.

## Release notes

### Patch Changes

-   9cd061e: Bug blitz: four fixes from triage priorities.
    -   **#396:** Anthropic orchestrator uses model-aware max_tokens (Haiku 4K, Sonnet 8K, Opus 16K)
    -   **#397:** matchesGlob now supports single-star directory patterns (e.g., `src/*.ts`)
    -   **#398:** extractChangedFiles handles quoted paths with spaces
    -   **#399:** AST gate reads staged content (`git show :path`) before falling back to disk

