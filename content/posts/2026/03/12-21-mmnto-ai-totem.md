---
title: Totem Shield
date: 2026-03-12 21:39:34 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/totem0.30.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/totem@0.30.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is an AI control plane for local development that acts as a state manager for AI systems, addressing issues like memory loss, hallucinated code, and repeated errors in AI development workflows. It compiles a syntax-aware, embedded vector index locally within your project, enabling AI agents to reference constraints, architectural decisions, and past lessons before generating code. Totem automates multi-agent orchestration, defensive context management, and drift detection, offering developers a transparent, Git-native solution that eliminates reliance on cloud-based platforms while enhancing collaboration and reducing repetitive mistakes.

## Release notes

### Patch Changes

-   d0be9c6: Add compile --export as Step 5 of totem wrap, exclude export targets from deterministic shield, throw NoLessonsError in compile command

