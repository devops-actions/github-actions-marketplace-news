---
title: oss-signal
date: 2026-06-11 23:40:38 +00:00
tags:
  - SalmonPlays
  - GitHub Actions
draft: false
repo: https://github.com/SalmonPlays/oss-signal
marketplace: https://github.com/marketplace/actions/oss-signal
version: v0.9.4
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/SalmonPlays/oss-signal** to version **v0.9.4**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oss-signal) to find the latest changes.

## What's Changed

`oss-signal` v0.9.4 expands the machine-readable output contract.

## What Changed

- Added `docs/schema/inventory-output.schema.json` for `--inventory --format json`.
- Added `docs/schema/rules-catalog.schema.json` for `--list-rules --format json`.
- Added `docs/examples/inventory-report.json` as a committed inventory fixture.
- Added tests that parse the published schemas and JSON fixtures.

## Verification

- `npm run check`
- `npm publish --dry-run`
- clean install smoke for `oss-signal@0.9.4`

