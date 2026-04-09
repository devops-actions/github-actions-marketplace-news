---
title: Fallow - Codebase Health
date: 2026-04-09 14:15:40 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.23.1
dependentsNumber: "4"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.23.1**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action is a Rust-based codebase analyzer for TypeScript and JavaScript projects, designed to detect issues such as unused code, duplication, complexity, and architectural violations. It automates the process of auditing and optimizing codebases by identifying dead code, circular dependencies, copy-pasted code, and overly complex functions with minimal configuration and rapid performance. Key features include dead code removal previews, real-time analysis on changes, and integration with monorepos or framework-specific conventions.

## What's Changed

## Fix: explicit `lspPath` setting takes priority over local `node_modules`

v2.23.0 introduced local `node_modules/.bin` binary resolution but placed it above the explicit `fallow.lspPath` setting. An explicit setting represents stronger user intent and should not be silently overridden.

**Resolution order (corrected):**

1. `fallow.lspPath` setting (explicit, always wins)
2. `node_modules/.bin/` in workspace root (devDependency)
3. System `PATH`
4. Extension global storage (auto-downloaded)

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.23.0...v2.23.1
