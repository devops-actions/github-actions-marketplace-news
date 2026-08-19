---
title: rumdl-action
date: 2026-08-19 06:26:46 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.57
dependentsNumber: "7"
actionType: Composite
actionSummary: |
  **Summary:**
  rumdl is a high-performance, Rust-based Markdown linter and formatter that offers quick linting and automatic formatting capabilities. It supports multiple Markdown flavors with auto-detection, is zero-dependency, and highly configurable via TOML files. With intelligent caching, it significantly improves performance by only re-linting changed files.
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.57**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

**Summary:**
rumdl is a high-performance, Rust-based Markdown linter and formatter that offers quick linting and automatic formatting capabilities. It supports multiple Markdown flavors with auto-detection, is zero-dependency, and highly configurable via TOML files. With intelligent caching, it significantly improves performance by only re-linting changed files.

## What's Changed


### Fixed

- **MD013**: let a sentence open with a number under require-sentence-capital ([5060333](https://github.com/rvben/rumdl/commit/5060333b9237cf0f63b095df388d65e8b01799f5))
- **lsp**: keep a CRLF document's line endings through fixes and code actions ([c88a7da](https://github.com/rvben/rumdl/commit/c88a7da9afc9738b5be40a0dd4a233d273ec11e2))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.57-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.57/rumdl-v0.2.57-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.57/rumdl-v0.2.57-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.57-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.57/rumdl-v0.2.57-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.57/rumdl-v0.2.57-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.57-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.57/rumdl-v0.2.57-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.57/rumdl-v0.2.57-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.57-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.57/rumdl-v0.2.57-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.57/rumdl-v0.2.57-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.57-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.57/rumdl-v0.2.57-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.57/rumdl-v0.2.57-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.57-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.57/rumdl-v0.2.57-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.57/rumdl-v0.2.57-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.57-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.57/rumdl-v0.2.57-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.57/rumdl-v0.2.57-x86_64-pc-windows-msvc.zip.sha256) |

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

