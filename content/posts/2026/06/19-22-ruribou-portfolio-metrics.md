---
title: ruribou Portfolio Metrics
date: 2026-06-19 22:18:33 +00:00
tags:
  - ruribou
  - GitHub Actions
draft: false
repo: https://github.com/ruribou/portfolio-metrics
marketplace: https://github.com/marketplace/actions/ruribou-portfolio-metrics
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/ruribou/portfolio-metrics** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ruribou-portfolio-metrics) to find the latest changes.

## What's Changed

## ruribou Portfolio Metrics v1.1.0

Maintenance release of **ruribou Portfolio Metrics**, a fork of
[lowlighter/metrics](https://github.com/lowlighter/metrics). This release is
tooling- and CI-focused — there are no user-facing behavior changes, and
existing workflows pinned to `@v1` continue to work unchanged.

### Usage

```yaml
- uses: ruribou/portfolio-metrics@v1
  with:
    token: ${{ secrets.METRICS_TOKEN }}
    user: ruribou
```

Pin to `@v1` to follow the latest v1.x, `@v1.1` for the latest 1.1.x, or
`@v1.1.0` to pin exactly.

### What's changed since v1.0.0

- 🔧 **TypeScript migration** — dropped `.mts`/`.mjs` in favor of `.ts` (ESM)
  across the fork's sources and modernized the toolchain.
- 🧹 **Inline lint feedback** — added reviewdog to surface ESLint warnings
  directly on pull requests.
- ⚙️ **CI role split** — clarified the workflow split between `main` and work
  branches, and scoped CI to run on PRs to `main` and `main` pushes only.
- 🐛 Removed an unused `Dict` type import in `instance.ts`.

### Notes

- Licensed under MIT, same as upstream.
- Floating git tags `v1` and `v1.1` now point at this release, so `@v1` /
  `@v1.1` action pins resolve correctly.

