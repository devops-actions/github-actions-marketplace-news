---
title: Fallow - Codebase Health
date: 2026-04-12 13:50:07 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.29.1
dependentsNumber: "6"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.29.1**.

- This action is used across all versions by **6** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action provides a high-performance codebase analysis tool for TypeScript and JavaScript projects, focusing on identifying unused code, duplication, complexity, and architectural issues. Designed to be fast, Rust-based, and configuration-free, it automates tasks such as detecting dead code, circular dependencies, and code duplication, while offering features like real-time analysis, framework-specific plugins, and automated fixes for dead code cleanup. This tool streamlines maintaining clean, efficient, and scalable codebases, especially in large projects or monorepos.

## What's Changed

## Fix

**Feature flag inline suppression now works** ([#108](https://github.com/fallow-rs/fallow/issues/108) follow-up)

`// fallow-ignore-next-line feature-flag` and `// fallow-ignore-file feature-flag` now suppress feature flag findings in the `fallow flags` command. Previously, the JSON output suggested this comment as an action but the command never consulted the suppression system, so the comment was silently ignored.

```js
// fallow-ignore-next-line feature-flag
const darkMode = process.env.FEATURE_DARK_MODE;

const newCheckout = process.env.FEATURE_NEW_CHECKOUT; // still reported
```

Both the built-in detection loop and the custom SDK/env-prefix detection loop now call `is_suppressed()` / `is_file_suppressed()` with `IssueKind::FeatureFlag`.

## Upgrade

```bash
npx @fallow-cli/fallow      # or
cargo install fallow-cli
```

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.29.0...v2.29.1
