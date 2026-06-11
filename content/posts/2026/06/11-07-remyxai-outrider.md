---
title: Remyx Outrider
date: 2026-06-11 07:21:37 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.5.2
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.5.2**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## What's Changed

**Small reliability patch for the selection-pass retry path.**

- **Retry timeout 90s → 180s.** The previous default was tight enough that the 5-turn retry budget (~10-15s per turn) routinely timed out before the agent could compose the JSON object — observed in the wild on complex candidate pools (~30+ candidates). 180s leaves headroom for slow API responses while still capping cost. Env-var-overridable via `REMYX_SELECTION_RETRY_TIMEOUT_S`.
- **Retry prompt now discourages re-verification.** The prose-instead-of-JSON failure mode is the agent continuing verification work past its turn budget. The retry prompt now explicitly says "you already did the verification work — do NOT re-verify, do NOT call any tools" so the retry exists to format an answer the agent already has, not to redo the analysis.

259/259 tests pass.
