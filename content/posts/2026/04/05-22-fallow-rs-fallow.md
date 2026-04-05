---
title: Fallow - Codebase Health
date: 2026-04-05 22:00:51 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.13.1
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.13.1**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action, **Fallow**, is a high-performance codebase analyzer designed for TypeScript and JavaScript projects. It automates the detection of unused code, code duplication, complexity issues, and architectural problems, providing insights to improve code quality and maintainability. Key features include sub-second analysis, zero configuration, and the ability to auto-detect entry points and evaluate changes in real-time, making it highly efficient for both small and large-scale projects.

## What's Changed

## Bug fixes

- **Init hook uses canonical command name** — `fallow init --hooks` now generates hooks with `fallow dead-code` instead of the legacy `fallow check` alias. The internal `--base` field is renamed to `--branch` to match the CLI flag. (#43 by @M-Hassan-Raza)
- **Legacy command name cleanup** — replaced `fallow check` with `fallow dead-code` in user-facing messages: combined output suggestion, GitHub Action PR review body, VS Code extension diagram, and conformance test script.
- **Documentation consistency** — fixed stale `--base` → `--branch` references across `AGENTS.md`, `docs/backwards-compatibility.md`, and companion repos.

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.13.0...v2.13.1
