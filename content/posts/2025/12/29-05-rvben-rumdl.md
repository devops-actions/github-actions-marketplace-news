---
title: rumdl-action
date: 2025-12-29 05:32:24 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.0.206
dependentsNumber: "4"
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.0.206**.
- This action is used across all versions by **4** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency and best practices in Markdown files. It automates tasks like identifying common Markdown issues, applying automatic fixes, and formatting files, making it ideal for CI/CD pipelines and editor integrations. Its key capabilities include speed, zero dependencies, extensive lint rules, and highly configurable options, offering a modern and efficient solution for Markdown file management.

## Release notes


### Fixed

- **MD013: Apply inline config before should_skip optimization** (fixes #241)
  - Inline configuration (e.g., `<!-- markdownlint-configure-file {"MD013": {"tables": false}} -->`) was not being applied when files had short lines
  - The should_skip optimization now uses effective config after parsing inline overrides

- **CLI: Warn about unknown rules in --enable/--disable flags** (fixes #243)
  - Using non-existent rule names now produces a warning instead of silently ignoring them
  - Invalid rules in all config entry points (CLI flags, config files) are now validated

- **MD034: Fix panic with multi-byte URLs and unbalanced parentheses**
  - URLs containing non-ASCII characters (e.g., Chinese Wikipedia URLs) followed by unbalanced parentheses no longer cause a panic
  - Fixed by using byte indices instead of character indices for string slicing


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.0.206-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.206/rumdl-v0.0.206-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.206/rumdl-v0.0.206-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.206-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.206/rumdl-v0.0.206-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.206/rumdl-v0.0.206-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.206-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.206/rumdl-v0.0.206-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.206/rumdl-v0.0.206-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.206-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.206/rumdl-v0.0.206-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.206/rumdl-v0.0.206-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.206-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.206/rumdl-v0.0.206-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.206/rumdl-v0.0.206-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.206-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.206/rumdl-v0.0.206-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.206/rumdl-v0.0.206-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.206-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.0.206/rumdl-v0.0.206-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.206/rumdl-v0.0.206-x86_64-pc-windows-msvc.zip.sha256) |

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

