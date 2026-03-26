---
title: Fallow - Codebase Health
date: 2026-03-26 06:14:22 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.0.1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.0.1**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action, **Fallow**, is a Rust-native tool designed to analyze TypeScript and JavaScript codebases for dead code, duplication, and complexity hotspots. It automates the detection of unused files, exports, and dependencies, identifies copy-pasted code blocks, and highlights overly complex functions, aiding developers in optimizing and maintaining cleaner, more efficient codebases. With sub-second performance and zero configuration, it simplifies code health analysis and refactoring efforts.

## Release notes

## MCP Server: Full Global Flag Coverage

All global CLI flags are now exposed across all 7 MCP tools:

- **`--baseline` / `--save-baseline`** on `analyze`, `check_changed`, `find_dupes`, `check_health` — compare against saved baselines for incremental CI adoption
- **`--no-cache`** on all tools — force a full re-parse when needed
- **`--threads`** on all tools — control parallelism for resource-constrained environments
- **`--config`** gap-filled on `find_dupes` and `check_health`
- **`--workspace`** gap-filled on `find_dupes`, `fix_preview`, `fix_apply`

## GitHub Action: Complete Input Coverage

13 new inputs bring the action to full CLI parity:

| Input | Command | Description |
|-------|---------|-------------|
| `no-cache` | all | Disable incremental parse cache |
| `threads` | all | Control parser thread count |
| `only` / `skip` | bare | Select which analyses to run |
| `issue-types` | dead-code | Filter to specific issue types |
| `cross-language` | dupes | TS↔JS clone matching |
| `file-scores` | health | Per-file maintainability index |
| `hotspots` | health | Complex + frequently changing files |
| `targets` | health | Ranked refactoring recommendations |
| `complexity` | health | Complexity-only section |
| `since` / `min-commits` | health | Hotspot git history window |
| `save-snapshot` | health | Vital signs trend tracking |

## Bug Fixes

- **`fix` command in CI**: when `dry-run: false`, the action now correctly adds `--yes` (previously would hang waiting for TTY input)
- **`dead-code` alias**: all action case statements now handle both `dead-code` and legacy `check`
- **Bare invocation**: combined issue count, job summary, and PR comments now work when no command is specified

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.0.0...v2.0.1
