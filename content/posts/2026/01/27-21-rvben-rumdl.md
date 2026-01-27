---
title: rumdl-action
date: 2026-01-27 21:41:40 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.2
dependentsNumber: "17"
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.2**.
- This action is used across all versions by **17** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter built with Rust to ensure consistency and best practices in Markdown files. It automates the detection and correction of common Markdown issues with 57 linting rules, supports multiple Markdown flavors, and offers fast performance with intelligent caching for efficient CI/CD integration. With zero dependencies and a modern CLI, rumdl simplifies Markdown maintenance while providing detailed error reporting and customization options.

## Release notes


### Fixed

- **LSP: Only auto-fix on manual saves, not autosave** ([#340](https://github.com/rvben/rumdl/issues/340))
  - Prevents unwanted fixes when VS Code autosaves in the background
  - Auto-fix now only triggers on explicit Cmd+S / Ctrl+S saves

- **MD032: Add auto-fix for lazy continuation lines** ([#342](https://github.com/rvben/rumdl/issues/342))
  - When `allow-lazy-continuation = false`, lazy continuation lines now get proper indentation
  - Detects all inline formatting at line start (emphasis, strong, strikethrough, links, images, code)
  - Handles nested lists, blockquotes, and nested blockquotes correctly

- **MD037: Fix range calculation for emphasis spacing** ([#343](https://github.com/rvben/rumdl/pull/343)) (thanks @kachick)
  - Fix ranges are now stored as absolute positions, preventing double-adjustment in fix mode

### Added

- **Test: Smoke test profile for package managers** ([#341](https://github.com/rvben/rumdl/pull/341)) (thanks @kachick)
  - `make test-smoke` runs stable tests excluding flaky proptest/stress tests
  - Useful for Nix and other package managers requiring deterministic test runs


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.2-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.2/rumdl-v0.1.2-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.2/rumdl-v0.1.2-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.2-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.2/rumdl-v0.1.2-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.2/rumdl-v0.1.2-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.2-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.2/rumdl-v0.1.2-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.2/rumdl-v0.1.2-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.2-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.2/rumdl-v0.1.2-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.2/rumdl-v0.1.2-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.2-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.2/rumdl-v0.1.2-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.2/rumdl-v0.1.2-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.2-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.2/rumdl-v0.1.2-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.2/rumdl-v0.1.2-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.2-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.2/rumdl-v0.1.2-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.2/rumdl-v0.1.2-x86_64-pc-windows-msvc.zip.sha256) |

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

