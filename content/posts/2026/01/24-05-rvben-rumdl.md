---
title: rumdl-action
date: 2026-01-24 05:38:01 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.0
dependentsNumber: "14"
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.0**.
- This action is used across all versions by **14** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The GitHub Action "rumdl" is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency and best practices in Markdown files. It automates the detection and correction of common Markdown issues, supports multiple Markdown flavors, and offers fast performance with intelligent caching for CI/CD pipelines and editor integrations. Key capabilities include 57 linting rules, automatic formatting, zero dependencies, and extensive configuration options, making it ideal for developers seeking efficient Markdown management.

## Release notes


### 🎉 First Stable Release

rumdl reaches production-ready status after validation against 99,291 markdown files
across 51 popular repositories (kubernetes, react, vscode, rust-lang, tensorflow, and more)
with **zero false positives detected**.

### Added

- **CLI: `fmt --check` flag for CI usage**
  - Returns non-zero exit code if files would be modified
  - Enables dry-run formatting checks in CI pipelines

- **Fuzz testing infrastructure**
  - Fix idempotency fuzzer verifies fixes don't oscillate
  - Run with `make fuzz` (requires nightly Rust)

### Fixed

- **MD032: Single-pass idempotency for list blank lines**
  - Fixes edge case where multiple fix passes could produce different results

- **MD050: Correct byte range for fix replacement**
  - Fixes auto-fix for strong emphasis style in certain edge cases

### Changed

- **README: Added "Used By" section** with notable projects using rumdl
- **README: Updated SchemaStore section** to reflect current status


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.0-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.0/rumdl-v0.1.0-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.0/rumdl-v0.1.0-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.0-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.0/rumdl-v0.1.0-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.0/rumdl-v0.1.0-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.0-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.0/rumdl-v0.1.0-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.0/rumdl-v0.1.0-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.0-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.0/rumdl-v0.1.0-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.0/rumdl-v0.1.0-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.0-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.0/rumdl-v0.1.0-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.0/rumdl-v0.1.0-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.0-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.0/rumdl-v0.1.0-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.0/rumdl-v0.1.0-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.0-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.0/rumdl-v0.1.0-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.0/rumdl-v0.1.0-x86_64-pc-windows-msvc.zip.sha256) |

## Installation

### Using uv (Recommended)
```bash
uv tool install rumdl
```

### Using pip
```bash
pip install rumdl
```

### Using pipx
```bash
pipx install rumdl
```

### Direct Download
Download the appropriate binary for your platform from the table above, extract it, and add it to your PATH.

