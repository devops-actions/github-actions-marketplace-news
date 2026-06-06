---
title: Maintainer Safe Ops
date: 2026-06-06 14:30:45 +00:00
tags:
  - rein051521
  - GitHub Actions
draft: false
repo: https://github.com/rein051521/maintainer-safe-ops
marketplace: https://github.com/marketplace/actions/maintainer-safe-ops
version: v0.1.5
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/rein051521/maintainer-safe-ops** to version **v0.1.5**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/maintainer-safe-ops) to find the latest changes.

## What's Changed

Adds a new detection rule and hardens CI permissions.

Added:
- MSO010_PRIVATE_KEY_BLOCK (high): detects hardcoded PEM key blocks.

Changed:
- CodeQL workflow grants security-events:write at the job level (least-privilege).

Verification: CI (3.10/3.11/3.12), CodeQL, OpenSSF Scorecard, the GitHub Action self-test, and release-check are green. 26 tests pass.

