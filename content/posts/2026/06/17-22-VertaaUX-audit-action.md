---
title: VertaaUX Audit
date: 2026-06-17 22:43:25 +00:00
tags:
  - VertaaUX
  - GitHub Actions
draft: false
repo: https://github.com/VertaaUX/audit-action
marketplace: https://github.com/marketplace/actions/vertaaux-audit
version: v1.0.4
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/VertaaUX/audit-action** to version **v1.0.4**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vertaaux-audit) to find the latest changes.

## What's Changed

## Summary
- Updates GitHub Action runtime dependencies to patched current versions.
- Rebuilds the committed dist bundle so action consumers execute the patched dependency graph.
- Resolves npm audit findings from @actions/github / @actions/http-client / undici.

## Verification
- npm run lint
- npm test
- npm run build
- npm audit --audit-level=moderate
- npm pack --dry-run --json

## Upgrade
Users pinned to `VertaaUX/audit-action@v1` will receive this after the `v1` major tag moves to this release. Users pinned to `v1.0.3` should update to `v1.0.4`.
