---
title: Angular Setup
date: 2026-08-21 14:13:52 +00:00
tags:
  - mayurrawte
  - GitHub Actions
draft: false
repo: https://github.com/mayurrawte/github-angular-actions
marketplace: https://github.com/marketplace/actions/angular-setup
version: v2.0.0
dependentsNumber: "10"
actionType: Composite
actionSummary: |
  This GitHub Action sets up Angular CLI on Node.js with caching for npm, yarn, and pnpm. It allows for specifying the desired version of Angular CLI, Node.js, and package manager. The action provides zero configuration by default and exposes an output indicating the installed Angular CLI version.
---


Version updated for **https://github.com/mayurrawte/github-angular-actions** to version **v2.0.0**.

- This action is used across all versions by **10** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/angular-setup) to find the latest changes.

## Action Summary

This GitHub Action sets up Angular CLI on Node.js with caching for npm, yarn, and pnpm. It allows for specifying the desired version of Angular CLI, Node.js, and package manager. The action provides zero configuration by default and exposes an output indicating the installed Angular CLI version.

## What's Changed

## What's new in v2

Complete rewrite as a composite action — no more bundled JS, no npm deps, faster cold-starts.

### New features

- **Multi-package-manager support**: npm, yarn, pnpm (auto-detects and caches the right one)
- **Configurable Node.js version** (default: 22) — replaces hardcoded Node 14
- **Cross-platform**: Ubuntu, Windows, macOS — all tested in CI
- **Smart caching**: lockfile-hash based caching via setup-node, opt-out with `cache: 'false'`
- **Custom Angular CLI version**: pin to any version (e.g. `17.3.8`) or use `latest`
- **`cli-version` output**: the installed CLI version for downstream steps
- **No more node_modules in the action** — composite means zero install overhead

### Quick start

```yaml
- uses: mayurrawte/github-angular-actions@v2
  with:
    version: 'latest'
    node-version: '22'
    package-manager: 'pnpm'
- run: ng build --configuration=production
```

### Breaking changes from v1

- Action is now composite (was: Node.js). No user-facing impact unless you were reading the action's source.
- Default Node.js is now 22 (was: 14). Override with `node-version: '18'` if needed.
- Default Angular CLI is `latest` (was: pinned). Pin with `version: '17.3.8'` if you need stability.

See [CHANGELOG.md](https://github.com/mayurrawte/github-angular-actions/blob/master/CHANGELOG.md) for full details.
