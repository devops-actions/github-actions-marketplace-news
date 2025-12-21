---
title: rumdl-action
date: 2025-12-21 21:13:52 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.0.199
dependentsNumber: "1"
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.0.199**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter built with Rust, designed to enforce consistency and best practices in Markdown files. It automates tasks like identifying and fixing common Markdown issues with 57 lint rules, offering fast processing, detailed error reporting, and integration-friendly functionality for CI/CD workflows and editor tools. Its capabilities include automatic formatting, intelligent caching for improved performance, and extensive configuration options, all provided as a lightweight, dependency-free solution.

## Release notes


### Fixed

- **MD063 (heading-capitalization): Fix preserve-cased-words for iOS and ignore-words for first word** (fixes #215, #216)
  - `preserve-cased-words` now correctly detects words starting with lowercase followed by uppercase (e.g., "iOS", "eBay")
  - `ignore-words` in sentence case now properly preserves words at the start of headings (e.g., "nvim" stays "nvim")
  - Previously, "iOS" was incorrectly converted to "ios" and "nvim config" became "Nvim config"

### Changed

- **Dependencies: Migrate from deprecated serde_yaml to serde_yml**
  - Replace unmaintained serde_yaml 0.9.34 with maintained fork serde_yml 0.0.12
  - Eliminates deprecation warnings during compilation
  - Compatible API with no behavior changes


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.0.199-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.199/rumdl-v0.0.199-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.199/rumdl-v0.0.199-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.199-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.199/rumdl-v0.0.199-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.199/rumdl-v0.0.199-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.199-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.199/rumdl-v0.0.199-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.199/rumdl-v0.0.199-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.199-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.199/rumdl-v0.0.199-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.199/rumdl-v0.0.199-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.199-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.199/rumdl-v0.0.199-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.199/rumdl-v0.0.199-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.199-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.199/rumdl-v0.0.199-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.199/rumdl-v0.0.199-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.199-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.0.199/rumdl-v0.0.199-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.199/rumdl-v0.0.199-x86_64-pc-windows-msvc.zip.sha256) |

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

