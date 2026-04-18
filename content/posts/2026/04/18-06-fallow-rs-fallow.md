---
title: Fallow - Codebase Health
date: 2026-04-18 06:28:16 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.40.3
dependentsNumber: "8"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.40.3**.

- This action is used across all versions by **8** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action, **Fallow**, is a Rust-native codebase analyzer designed for TypeScript and JavaScript projects. It automates the detection of unused code, duplication, complexity issues, and architectural concerns without requiring any configuration. Its key capabilities include identifying dead code (e.g., unused files, exports, and dependencies), detecting code duplication and circular dependencies, and analyzing code complexity, all with high performance and support for various frameworks.

## What's Changed

## Fixed

- **Sidecar discovery now finds the real signed binary instead of the Node wrapper.** Every v2.40.0 / v2.40.1 / v2.40.2 user who ran `fallow health --production-coverage` for the first time after `npm install @fallow-cli/fallow-cov` hit `Error: Sidecar binary at .../node_modules/.bin/fallow-cov is missing its signature file ... The fallow CLI refuses to spawn an unsigned sidecar.` (exit code 4).

## What was happening

`node_modules/.bin/fallow-cov` is a Node wrapper script that re-execs the real binary in the platform subpackage (e.g. `@fallow-cli/fallow-cov-darwin-arm64/fallow-cov`). The real binary ships with an adjacent `.sig` file; the wrapper has no `.sig` next to it. The Phase 2.5 signature gate looked at the wrapper path and correctly refused to spawn an unsigned binary, even though the signed one was sitting right there in the platform subdirectory.

## The fix

Sidecar discovery now walks up ancestors looking for `node_modules/@fallow-cli/fallow-cov-*/fallow-cov` first (matching whichever platform subpackage npm's `optionalDependencies` filter installed), then falls back to `node_modules/.bin/fallow-cov` for non-npm-optionalDependency layouts. `FALLOW_COV_BIN` / `FALLOW_COV_BINARY_PATH` env-var overrides still take precedence.

## Upgrade

Patch-only; no behavior changes outside the sidecar discovery path. If you were running v2.40.0..v2.40.2 with `FALLOW_COV_BINARY_PATH=...` as a workaround, you can drop it after upgrading to v2.40.3.

Found via end-to-end smoke test of `fallow@2.40.2` + `@fallow-cli/fallow-cov@0.1.5`.

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.40.2...v2.40.3

