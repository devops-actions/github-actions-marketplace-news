---
title: oss-signal
date: 2026-06-11 15:45:34 +00:00
tags:
  - SalmonPlays
  - GitHub Actions
draft: false
repo: https://github.com/SalmonPlays/oss-signal
marketplace: https://github.com/marketplace/actions/oss-signal
version: v0.9.3
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/SalmonPlays/oss-signal** to version **v0.9.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oss-signal) to find the latest changes.

## What's Changed

`oss-signal` v0.9.3 adds explicit maintainer ownership to the rule catalog.

## What Changed

- Added a `maintainer-ownership` check for `MAINTAINERS.md`, `CODEOWNERS`, `.github/CODEOWNERS`, or `GOVERNANCE.md`.
- Increased the transparent rule catalog to 16 rules and 110 weighted points.
- Refreshed citation metadata so the packaged repository metadata matches the current maintainer workflow.

## Verification

- `npm run check`
- `node src/cli.js --list-rules --format json`
- `node src/cli.js . --format markdown`

