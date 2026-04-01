---
title: Fallow - Codebase Health
date: 2026-04-01 13:58:15 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.8.1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.8.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action, "Fallow," is a Rust-native tool designed to analyze TypeScript and JavaScript codebases for dead code, duplication, and complexity hotspots with minimal configuration and fast performance. It automates the detection of unused files, exports, and dependencies, identifies copy-pasted code blocks, and highlights overly complex functions to aid developers in optimizing and maintaining their code. Key features include support for real-time analysis, multiple detection modes, and automated suggestions for cleanup and refactoring.

## What's Changed

## Bug fix

- **`fallow init` no longer panics** — the global `--base` alias for `--changed-since` collided with Init's own `--base` flag, causing a runtime panic on every `fallow init` invocation. Init's flag is now `--branch`.

## Testing

- **58 new integration tests** — shared CLI binary test harness with coverage for `check`, `health`, `dupes`, `init`, exit codes, baselines, `--changed-since`, `--only`/`--skip`, and MCP end-to-end (param → arg-builder → real binary → JSON parse).
- **7 new test fixtures** — astro, mdx, complexity, config-file (.fallowrc.json), config-toml, hidden-dir-allowlist, error-no-package-json.
- **Human output snapshots** — first-ever insta snapshots of human-readable CLI output for check (unused files, unused exports), health (complexity findings), and dupes commands.
- **Total test count**: 5,179 → 5,237.

**Full Changelog**: https://github.com/fallow-rs/fallow-analysis/compare/v2.8.0...v2.8.1
