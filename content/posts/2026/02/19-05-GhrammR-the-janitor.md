---
title: The Janitor Stop the Slop
date: 2026-02-19 05:58:28 +00:00
tags:
  - GhrammR
  - GitHub Actions
draft: false
repo: https://github.com/GhrammR/the-janitor
marketplace: https://github.com/marketplace/actions/the-janitor-stop-the-slop
version: v5.9.4
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/GhrammR/the-janitor** to version **v5.9.4**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/the-janitor-stop-the-slop) to find the latest changes.

## Action Summary

The Janitor is a GitHub Action and CLI tool designed to automate the detection and removal of unused or duplicate code (dead symbols) from Python, Rust, JavaScript/TypeScript, and C++ codebases. By analyzing static reference graphs and running deletion simulations, it ensures safe and precise removal of redundant functions, classes, and files, helping developers reduce maintenance overhead and improve code quality. The action also offers features like duplicate code detection, false-positive protection, and optional integrity attestation for compliance and auditing purposes.

## Release notes

## What's New

### Language-Aware Test Runner Auto-Detection
- **`detect_test_runner()`**: Automatically detects Pytest, Cargo, Go, and Npm test frameworks
- **No more `--skip-tests`**: Test verification is always on, framework-detected per project
- **Baseline + post-cleanup comparison**: Only rollback if Janitor caused NEW test failures (pre-existing failures are skipped)

### Cross-File Dedup Detection
- Groups structural clones across the entire repo (not per-file)
- **TRUE DUPLICATES** (byte-identical source ranges) vs **STRUCTURAL PATTERNS** (same AST shape, different literals)
- Content equality guard prevents merging structurally similar but semantically distinct functions

### Shadow Simulation Hardened
- Fresh shadow tree on every clean run (no stale symlinks)
- Writes cleaned byte content into shadow (replaces whole-file unmap)
- Python repos: shadow simulate → verify tests → physical excision
- Compiled repos: baseline pre-flight → physical excision → post-cleanup verification + rollback

### Polyglot Source Collection
- `collect_source_files()` replaces Python-only collector
- Covers .py .rs .js .jsx .ts .tsx .go .c .cpp .cxx .cc .h .hpp .java .cs

### GitHub Actions
- All workflows pinned to `step-security/harden-runner@5ef0c07d... # v2.14.2`
