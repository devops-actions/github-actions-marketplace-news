---
title: Fallow - Codebase Health
date: 2026-03-31 22:13:41 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.7.3
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.7.3**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action, "Fallow," is a Rust-native tool designed to analyze JavaScript and TypeScript codebases for dead code, duplication, and complexity issues. It automates the identification of unused files, exports, dependencies, code clones, and overly complex functions to improve code quality and maintainability. With zero configuration and sub-second analysis, it provides actionable insights and supports features like auto-removal previews and real-time reanalysis during development.

## What's Changed

### Fixed

- **`--format badge` now auto-enables `--score`** — previously `fallow health --complexity --format badge` would error because score computation wasn't triggered when explicit section flags were passed. Badge format now implies `--score`, matching the behavior of `--min-score`, `--trend`, and `--save-snapshot`.

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.7.2...v2.7.3
