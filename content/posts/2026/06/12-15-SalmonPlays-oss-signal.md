---
title: oss-signal
date: 2026-06-12 15:20:47 +00:00
tags:
  - SalmonPlays
  - GitHub Actions
draft: false
repo: https://github.com/SalmonPlays/oss-signal
marketplace: https://github.com/marketplace/actions/oss-signal
version: v0.9.7
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/SalmonPlays/oss-signal** to version **v0.9.7**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oss-signal) to find the latest changes.

## What's Changed

`oss-signal` v0.9.7 makes adoption packs easier to turn into public maintainer evidence.

## Added

- Added a "Share Public Evidence" section to `--format adoption`.
- Added direct adoption-report and trial-feedback issue links for maintainers who run, review, reply, merge, or decline.
- Added a copyable evidence note with repository, evidence link, maintainer decision, and concrete outcome fields.
- Added tests that keep adoption packs focused on real maintainer decisions instead of stars, reciprocal work, or artificial engagement.

## Verification

- `npm run check`
- `node src/cli.js platformatic/massimo --format adoption --output docs/examples/adoption-pack.md`
- `npm publish --dry-run`

