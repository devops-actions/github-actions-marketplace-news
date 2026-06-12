---
title: oss-signal
date: 2026-06-12 06:44:19 +00:00
tags:
  - SalmonPlays
  - GitHub Actions
draft: false
repo: https://github.com/SalmonPlays/oss-signal
marketplace: https://github.com/marketplace/actions/oss-signal
version: v0.9.6
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/SalmonPlays/oss-signal** to version **v0.9.6**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oss-signal) to find the latest changes.

## What's Changed

`oss-signal` v0.9.6 makes adoption packs easier for external maintainers to answer.

## Added

- Added a maintainer decision checklist to `--format adoption`.
- Added explicit response paths for no-fail workflow trials, focused PRs, documented not-applicable exceptions, and out-of-scope declines.
- Added a direct trial feedback issue link so maintainers can share useful negative or neutral feedback without treating it as adoption.
- Added tests that keep the adoption pack factual and response-oriented.

## Verification

- `npm run check`
- `node src/cli.js platformatic/massimo --format adoption --output docs/examples/adoption-pack.md`
- `npm publish --dry-run`

