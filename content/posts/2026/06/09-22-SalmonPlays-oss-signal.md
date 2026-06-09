---
title: oss-signal
date: 2026-06-09 22:52:59 +00:00
tags:
  - SalmonPlays
  - GitHub Actions
draft: false
repo: https://github.com/SalmonPlays/oss-signal
marketplace: https://github.com/marketplace/actions/oss-signal
version: v0.9.1
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/SalmonPlays/oss-signal** to version **v0.9.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oss-signal) to find the latest changes.

## What's Changed

`oss-signal` v0.9.1 adds compact maintainer triage output and improves package reviewer evidence.

## Changes

- Added `--format summary` for a one-screen CLI and Action readout.
- Added [summary-output.md](../summary-output.md) and [examples/github-summary.txt](../examples/github-summary.txt).
- Included the root [REVIEWER_PACKET.md](../../REVIEWER_PACKET.md) in the npm package tarball so reviewers can inspect the shortest evidence path from an installed package.
- Kept Markdown, JSON, SARIF, issue, plan, workflow, and inventory formats unchanged.

## Verification

- `npm run check`
- `npm publish --dry-run`

