---
title: Cargo Perf
date: 2026-01-13 13:23:12 +00:00
tags:
  - cschuman
  - GitHub Actions
draft: false
repo: https://github.com/cschuman/cargo-perf
marketplace: https://github.com/marketplace/actions/cargo-perf
version: v0.6.0
dependentsNumber: "0"
---


Version updated for **https://github.com/cschuman/cargo-perf** to version **v0.6.0**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cargo-perf) to find the latest changes.

## Action Summary

The `cargo-perf` GitHub Action is designed to perform static analysis on Rust code to identify issues related to async correctness and runtime performance. It automates the detection of common bugs such as blocking operations in async contexts, potential deadlocks, and inefficient code patterns like unoptimized loops or resource mismanagement. Additionally, it integrates seamlessly into CI pipelines, with features like strict rule enforcement, SARIF output for GitHub Code Scanning, and optional auto-fixing capabilities to streamline code quality and improve performance.

## Release notes

## What's New

### GitHub Action
- **Official CI integration** via `action.yml` - add cargo-perf to your workflow with minimal config
- **SARIF upload** to GitHub Code Scanning for inline annotations
- Configurable fail thresholds and outputs

### New Rules (14 total, up from 12)
- `hashmap-no-capacity`: Detects `HashMap::new()` followed by insert in loop
- `string-no-capacity`: Detects `String::new()` followed by push_str in loop

### New Auto-Fixes
- `unbounded-channel`: Replaces with bounded alternatives (`sync_channel`, `channel`)
- `async-block-in-async`: Replaces std blocking calls with tokio equivalents

## Other Changes
- Security and architecture improvements from code review
- Updated all dependencies to latest versions
- CI: Bumped actions/cache to v5 and actions/checkout to v6

**Full Changelog**: https://github.com/cschuman/cargo-perf/compare/v0.5.6...v0.6.0

## What's Changed
* ci: bump actions/checkout from 4 to 6 by @dependabot[bot] in https://github.com/cschuman/cargo-perf/pull/1
* ci: bump actions/cache from 4 to 5 by @dependabot[bot] in https://github.com/cschuman/cargo-perf/pull/2

## New Contributors
* @dependabot[bot] made their first contribution in https://github.com/cschuman/cargo-perf/pull/1

**Full Changelog**: https://github.com/cschuman/cargo-perf/compare/v0.5.6...v0.6.0
