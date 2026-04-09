---
title: Fallow - Codebase Health
date: 2026-04-09 22:03:30 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.26.1
dependentsNumber: "4"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.26.1**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action, **Fallow**, is a Rust-native codebase analyzer designed for TypeScript and JavaScript projects. It automates the detection of dead code, code duplication, and overly complex functions, while also identifying architectural issues like circular dependencies and boundary violations. With zero configuration required, sub-second performance, and support for framework-specific plugins, it simplifies maintaining clean, efficient, and scalable codebases.

## What's Changed

## Changed

- **Health: churn disk cache and parallel git log** — churn analysis results are now cached to disk and git log calls run in parallel, significantly reducing health command runtime on repos with long histories. New `--performance` flag prints timing breakdown per analysis phase.

## Fixed

- **VS Code extension: stale LSP binary after extension update** — the version check that detects outdated auto-downloaded binaries silently skipped re-downloading when `--version` output could not be parsed, leaving a stale binary in place. Now writes a `.fallow-version` marker file alongside downloaded binaries and treats unknown-version binaries as stale. Also warns when a PATH-resolved binary is outdated relative to the extension. ([#90](https://github.com/fallow-rs/fallow/issues/90))
- **GitHub Action: multiple JSON objects in bare invocation** — `analyze.sh` now handles bare invocations that produce multiple JSON objects instead of failing to parse.

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.26.0...v2.26.1
