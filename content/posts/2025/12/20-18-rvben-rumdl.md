---
title: rumdl-action
date: 2025-12-20 18:49:22 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.0.198
dependentsNumber: "1"
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.0.198**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency and best practices in Markdown files. It automates linting, formatting, and fixing common Markdown issues with 57 rules, offering fast performance, zero dependencies, and support for CI/CD workflows. The tool is highly configurable, developer-friendly, and ideal for both standalone use and integration into editors or pipelines.

## Release notes


### Fixed

- **MD057 (link-target-exists): Support mdBook and doc site .html links**
  - Links to `.html` files now correctly resolve when corresponding `.md` source exists
  - Handles mdBook, Jekyll, Hugo and similar doc generators that compile `.md` to `.html`
  - Applied to both single-file `check()` and cross-file validation
  - Reduces false positives in documentation projects like rustc-dev-guide


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.0.198-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.198/rumdl-v0.0.198-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.198/rumdl-v0.0.198-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.198-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.198/rumdl-v0.0.198-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.198/rumdl-v0.0.198-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.198-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.198/rumdl-v0.0.198-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.198/rumdl-v0.0.198-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.198-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.198/rumdl-v0.0.198-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.198/rumdl-v0.0.198-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.198-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.198/rumdl-v0.0.198-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.198/rumdl-v0.0.198-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.198-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.198/rumdl-v0.0.198-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.198/rumdl-v0.0.198-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.198-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.0.198/rumdl-v0.0.198-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.198/rumdl-v0.0.198-x86_64-pc-windows-msvc.zip.sha256) |

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

