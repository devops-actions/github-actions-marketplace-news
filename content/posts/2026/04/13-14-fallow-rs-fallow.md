---
title: Fallow - Codebase Health
date: 2026-04-13 14:21:04 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.31.0
dependentsNumber: "7"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.31.0**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action provides a Rust-native codebase analysis tool, designed for TypeScript and JavaScript projects, to detect and address unused code, duplication, complexity issues, and architectural violations. It automates tasks such as identifying dead code, circular dependencies, and stale suppression comments, while supporting framework conventions and auto-detecting entry points. With sub-second performance and zero configuration required, it simplifies code maintenance and improves project health.

## What's Changed

## Features

- **5 new framework plugins** -- Hardhat, UnoCSS, Qwik, Convex, and pnpm are now auto-detected (85 to 90 total plugins)
- **LSP binary via npm** -- `fallow-lsp` is now included in the npm package. The VS Code extension resolves it from `node_modules/.bin/fallow-lsp` without a separate install

## Bug Fixes

- **`production: true` no longer excludes Angular `app.config.ts`** -- the `**/*.config.*` glob was too broad, matching Angular's `src/app/app.config.ts` (a runtime file) and breaking the import chain. Narrowed to root-only matching with `literal_separator(true)`. Also added `app.config.ts` to the Angular plugin's `always_used` list. ([#111](https://github.com/fallow-rs/fallow/issues/111))
- **Health test no longer fails with global git signing** -- isolated temp repo operations from global git config

## Install / Upgrade

```bash
npm install -g fallow@latest
```

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.30.0...v2.31.0
