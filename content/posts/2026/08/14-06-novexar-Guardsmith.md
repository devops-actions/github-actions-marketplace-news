---
title: GuardSmith Lint
date: 2026-08-14 06:17:25 +00:00
tags:
  - novexar
  - GitHub Actions
draft: false
repo: https://github.com/novexar/Guardsmith
marketplace: https://github.com/marketplace/actions/guardsmith-lint
version: v0.4.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  GuardSmith is a governance toolkit that automates the distribution and validation of AI coding standards. It provides an AI-based system to verify compliance with predefined standards, including ESLint + official configurations, and offers features such as project creation, policy verification, drift detection, CI integration, and multi-level deployment.
---


Version updated for **https://github.com/novexar/Guardsmith** to version **v0.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/guardsmith-lint) to find the latest changes.

## Action Summary

GuardSmith is a governance toolkit that automates the distribution and validation of AI coding standards. It provides an AI-based system to verify compliance with predefined standards, including ESLint + official configurations, and offers features such as project creation, policy verification, drift detection, CI integration, and multi-level deployment.

## What's Changed

## What's new

- **Self-contained CLI bundle on GitHub Releases** (`guardsmith-cli-v0.4.0.tar.gz`) — run GuardSmith **without any npm registry access** (air-gapped / restricted egress environments). Only GitHub + Node.js 20+ required:

  ```bash
  gh release download v0.4.0 --repo novexar/Guardsmith --pattern 'guardsmith-cli-*.tar.gz'
  tar -xzf guardsmith-cli-*.tar.gz
  node guardsmith-cli/guard.mjs lint
  ```

- **Action `source` input** — `source: release` runs the action from the Releases bundle instead of npx (npm registry not required). Default remains `npm`.
- **npm READMEs (JA/EN)** — `@guardsmith/core` / `@guardsmith/cli` 0.2.2 now ship bilingual READMEs (the npm pages previously showed no description).
- `guard version` command; `guard new` reference tag decoupled from the npm version (standards remain at v0.2.1).

---

npm レジストリへ到達できない環境向けの**依存同梱バンドル**を添付しました(GitHub と Node.js 20+ のみで動作)。Action は `source: release` で npm 不要になります。npm パッケージ 0.2.2 には日英併記の README を同梱しています。
