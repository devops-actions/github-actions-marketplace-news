---
title: Remyx Outrider
date: 2026-06-10 23:18:54 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.5.1
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.5.1**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## What's Changed

**Selection-pass improvements + self-dogfooding workflow.**

- **Extension-shape relevance floor recalibrated 0.90 → 0.85.** Admits high-tier candidates in the 0.85-0.90 boundary band that the old hard cut was over-rejecting on relevance alone. The other three extension gates (pipeline-compatible I/O, team-direction signal, no-existing-implementation) carry the structural-fit load; the relevance floor is now a top-band sanity check.
- **Recovery strategies for missing or broken links in the selection prompt.** Explicit guidance for the agent when paper context is broken or incomplete: arxiv URL variant chain (abs / html / pdf / ar5iv), `web.archive.org` fallback for dead live URLs, four-step recovery chain when the engine reports `github_url: (none)` (gh search by method name → abstract grep → HF model-card cross-reference → project-page one-hop), login-wall detection, and a ~3-turn-per-candidate failure budget. "No code found" becomes a verdict reached after recovery, not a default.
- **Self-dogfooding workflow** (`.github/workflows/outrider.yml`) — Outrider runs against itself weekly via `uses: ./` so HEAD changes get dogfooded immediately rather than via a pinned release.

10 new tests; 259/259 pass.
