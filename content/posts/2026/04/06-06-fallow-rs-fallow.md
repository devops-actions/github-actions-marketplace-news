---
title: Fallow - Codebase Health
date: 2026-04-06 06:21:58 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.13.3
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.13.3**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action, **Fallow**, is a Rust-based code analysis tool for TypeScript and JavaScript projects. It automates the detection of unused code, code duplication, and high-complexity functions, providing a fast, zero-configuration solution for maintaining cleaner, more efficient codebases. Key capabilities include identifying dead code, circular dependencies, boundary violations, duplicate code, and code quality issues across monorepos or single projects, with options for real-time analysis and automated cleanup.

## What's Changed

### Changed

- **Human output readability** — all abbreviations spelled out: "deps" → "dependencies", "MI" → "maintainability", "dep" → "dependency". Affects health vital signs, dead-code summary, combined header, markdown tables, and score deductions.
- **Section headers in dead-code output** — human format now groups findings under `── Unused Code ──`, `── Dependencies ──`, and `── Structure ──` headers for faster scanning.
- **Labeled metrics and deductions** — health score deductions prefixed with "Deductions:", metrics lines prefixed with "Metrics:" across health, combined, and audit commands.

### Fixed

- **Boundaries excluded from default `fallow list`** — no more "Boundaries: not configured" noise; use `--boundaries` explicitly. (#49 by @M-Hassan-Raza)
- **Ecosystem runner error handling** — install failures no longer silently swallowed, stderr separated from JSON output. (#48 by @M-Hassan-Raza)
- **Stale `fallow check` in benchmark and conformance scripts** — replaced with canonical `dead-code` command.

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.13.2...v2.13.3
