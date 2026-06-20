---
title: Tribunal PR Gate
date: 2026-06-20 15:06:50 +00:00
tags:
  - eviano
  - GitHub Actions
draft: false
repo: https://github.com/eviano/tribunal
marketplace: https://github.com/marketplace/actions/tribunal-pr-gate
version: v0.1.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/eviano/tribunal** to version **v0.1.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tribunal-pr-gate) to find the latest changes.

## What's Changed

Performance — the Action now runs a **prebuilt, self-contained bundle** instead of installing dependencies and compiling TypeScript on every run.

- Per-PR action time drops from ~40-90s to a few seconds (no `npm ci` / `tsc` at runtime).
- `action-dist/cli.cjs` (single esbuild bundle) is committed; CI verifies it stays in sync with `src/`.
- No usage change: `uses: eviano/tribunal@v1`.
