---
title: oss-signal
date: 2026-06-13 14:41:54 +00:00
tags:
  - SalmonPlays
  - GitHub Actions
draft: false
repo: https://github.com/SalmonPlays/oss-signal
marketplace: https://github.com/marketplace/actions/oss-signal
version: v0.9.8
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/SalmonPlays/oss-signal** to version **v0.9.8**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oss-signal) to find the latest changes.

## What's Changed

`oss-signal` v0.9.8 makes no-fail trial workflows produce a stronger evidence bundle in one run.

## Added

- Generated trial workflows now upload both `oss-signal-report.md` and `oss-signal-adoption-pack.md`.
- Adoption packs now tell maintainers that the copied workflow publishes both artifacts without failing pull requests.
- Tests verify that generated trial workflows keep adoption evidence available while avoiding `fail-under` gates.

## Verification

- `npm run check`
- `node src/cli.js . --format workflow --output docs/examples/maintainer-trial-workflow.yml`
- `node src/cli.js platformatic/massimo --format adoption --output docs/examples/adoption-pack.md`
- `npm publish --dry-run`

