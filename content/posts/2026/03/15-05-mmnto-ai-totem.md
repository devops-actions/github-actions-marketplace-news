---
title: Totem Shield
date: 2026-03-15 05:57:12 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/totem0.35.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/totem@0.35.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a local-first governance compiler for AI agents, designed to provide deterministic, git-native, and secure orchestration of AI workflows. It automates tasks like multi-agent collaboration, behavioral trigger injection, memory management, and context-aware AI operations, while ensuring enterprise-grade security and privacy through a zero-telemetry architecture. Totem empowers developers by integrating seamlessly with their existing workflows, offering CLI-based control and composable commands to manage AI interactions without relying on opaque, cloud-based platforms.

## Release notes

### Minor Changes

-   f6074c4: Upgrade @lancedb/lancedb from 0.13.0 to 0.26.2.
    -   Fixes FTS (Full-Text Search) WAND panic (#491) — "pivot posting should have at least one document"
    -   Lance engine upgraded from v0.19 to v2.0.0 — improved search performance, FTS stability, and cache efficiency
    -   Users should run `totem sync --full` after upgrading to rebuild the index with the new engine format

