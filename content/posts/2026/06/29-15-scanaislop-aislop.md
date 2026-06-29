---
title: aislop — AI Code Quality Gate
date: 2026-06-29 15:12:00 +00:00
tags:
  - scanaislop
  - GitHub Actions
draft: false
repo: https://github.com/scanaislop/aislop
marketplace: https://github.com/marketplace/actions/aislop-ai-code-quality-gate
version: v0.13.1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/scanaislop/aislop** to version **v0.13.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aislop-ai-code-quality-gate) to find the latest changes.

## What's Changed

Patch release: calibrates the new `ai-slop/hidden-fallback` rule, points Dependabot at `develop`, and pulls in routine dependency and CI-action updates.

## Install

```bash
npx aislop@0.13.1 scan .
# or globally:
npm i -g aislop@0.13.1
```

## Fixed

- **`ai-slop/hidden-fallback` false positives** — no longer flags error-message defaults (`err?.message || "Failed to load"`), empty-string normalizers (`?? ""`), or optional env-var defaults. String fallbacks count as masked only for status/success tokens (`"ok"`, `"success"`, …).
- **Comment masker regex literals** — regex literals containing `/*` inside character classes no longer break comment masking through end-of-file.

## Changed

- **Dependabot targets `develop`** instead of `main`.
- **Dependency & CI-action bumps** — oxlint, Biome, expo-doctor, tar, and GitHub Actions (`actions/checkout`, `actions/setup-node`, `pnpm/action-setup`). Knip 5→6 reverted (parser not ready for v6 unused-files format).

## Numbers

- 1365 tests passing
- Self-scan: 100/100

Full notes in [CHANGELOG.md](https://github.com/scanaislop/aislop/blob/main/CHANGELOG.md).
