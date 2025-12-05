---
title: cargo-rail
date: 2025-12-05 21:04:38 +00:00
tags:
  - loadingalias
  - GitHub Actions
draft: false
repo: https://github.com/loadingalias/cargo-rail-action
marketplace: https://github.com/marketplace/actions/cargo-rail
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/loadingalias/cargo-rail-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cargo-rail) to find the latest changes.

## Release notes

## cargo-rail-action

  Graph-aware change detection for Rust monorepos. **Test only what changed.**

  ### Features
  - Detects affected crates via dependency graph analysis
  - Pre-built binaries for fast installation (no compile time)
  - Matrix output for parallel testing
  - Auto-detects docs-only changes to skip tests
  - Works with PR base or main/master branches

  ### Quick Start

  ```yaml
  - uses: loadingalias/cargo-rail-action@v1
    id: rail

  - run: cargo test -p "$crate"
    for: ${{ steps.rail.outputs.crates }}

  Links

  - https://github.com/loadingalias/cargo-rail-action
  - https://github.com/loadingalias/cargo-rail
