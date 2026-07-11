---
title: Hosho Prompt Reviewer
date: 2026-07-11 22:27:17 +00:00
tags:
  - HOSHO-AI
  - GitHub Actions
draft: false
repo: https://github.com/HOSHO-AI/Hosho-prompt-optimization-public
marketplace: https://github.com/marketplace/actions/hosho-prompt-reviewer
version: v1.41.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/HOSHO-AI/Hosho-prompt-optimization-public** to version **v1.41.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hosho-prompt-reviewer) to find the latest changes.

## What's Changed

## Taxonomy restructure — Provider-fit moves to Guidance, safety sub-factor retired

Mirrors the API taxonomy change (API #175). The PR-comment renderer's hardcoded taxonomy is load-bearing for the 4-macro score table, so it moves in lockstep:

- **Provider-fit** (`model-fit`) now buckets under the **Guidance** macro (was Structure) — its insights and macroScore are now consistent.
- The **`safety`** sub-factor is retired; deterministic agent-security convention findings now tag under **Inputs** (Guidance macro).
- Legacy v2-fallback mapping updated for coherence.

Rebuilt `dist/` bundle. `@v1` now points here.
