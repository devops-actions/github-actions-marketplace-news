---
title: aislop — AI Code Quality Gate
date: 2026-06-06 22:39:45 +00:00
tags:
  - scanaislop
  - GitHub Actions
draft: false
repo: https://github.com/scanaislop/aislop
marketplace: https://github.com/marketplace/actions/aislop-ai-code-quality-gate
version: v0.11.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/scanaislop/aislop** to version **v0.11.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aislop-ai-code-quality-gate) to find the latest changes.

## What's Changed

PR-scoped quality gates and set-and-forget CI.

- **PR-scoped gating:** `scan`/`ci --changes --base <ref>` gate a PR on only the files it changed; an unresolved base ref fails the run instead of passing an empty scan (#185).
- **`forceFixable` flag** in `scan --json` for findings only `fix -f` resolves (#192).
- **Set-and-forget CI:** moving `@v1` Action tag + `version: latest`; `init` and docs updated; the release pipeline re-points `v1` automatically.
- **Node 24** across `.nvmrc`, the Action default, and CI docs (floor stays `>=20`); version fallback now derived from package.json.
- **Marketplace Action** renamed to `aislop — AI Code Quality Gate` (published by scanaislop).

New Bitbucket Pipelines recipe in the docs. Full changelog in CHANGELOG.md.
