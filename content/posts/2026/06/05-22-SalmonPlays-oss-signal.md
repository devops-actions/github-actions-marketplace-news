---
title: oss-signal
date: 2026-06-05 22:34:17 +00:00
tags:
  - SalmonPlays
  - GitHub Actions
draft: false
repo: https://github.com/SalmonPlays/oss-signal
marketplace: https://github.com/marketplace/actions/oss-signal
version: v0.8.4
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/SalmonPlays/oss-signal** to version **v0.8.4**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oss-signal) to find the latest changes.

## What's Changed

`oss-signal` v0.8.4 fixes OpenSSF Scorecard workflow publication after the Node.js 24 opt-in release.

## Changed

- Scoped `FORCE_JAVASCRIPT_ACTIONS_TO_NODE24` to the Scorecard artifact upload step instead of setting it globally in the Scorecard workflow.
- Kept the Node.js 24 opt-in for generated trial workflows, dogfood workflows, and copyable examples where it avoids GitHub Actions Node.js 20 deprecation warnings.

## Verify

```bash
npm ci
npm run check
npm publish --dry-run
```

The release is compatibility-focused and keeps the v0.8 workflow output contract unchanged.

