---
title: rumdl-action
date: 2026-04-01 06:15:39 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.64
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.64**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency and best practices in Markdown files. It automates the detection and correction of common Markdown issues with 71 linting rules, supports multiple Markdown flavors, and provides fast performance with features like intelligent caching for efficient CI/CD integration. The tool is highly configurable, operates as a standalone binary with no runtime dependencies, and offers installation options for various ecosystems, including Rust, Python, and npm.

## What's Changed


### Added

- **lsp**: add enableLinkNavigation config option ([3056d7c](https://github.com/rvben/rumdl/commit/3056d7cb434c7921272440f3487e2e9041413602))

### Fixed

- **md063**: capitalize words following period-terminated tokens in title case ([0adc21f](https://github.com/rvben/rumdl/commit/0adc21fd661f1e5f6f26d66b531bd32b32d60ff5))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.64-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.64/rumdl-v0.1.64-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.64/rumdl-v0.1.64-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.64-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.64/rumdl-v0.1.64-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.64/rumdl-v0.1.64-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.64-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.64/rumdl-v0.1.64-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.64/rumdl-v0.1.64-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.64-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.64/rumdl-v0.1.64-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.64/rumdl-v0.1.64-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.64-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.64/rumdl-v0.1.64-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.64/rumdl-v0.1.64-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.64-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.64/rumdl-v0.1.64-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.64/rumdl-v0.1.64-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.64-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.64/rumdl-v0.1.64-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.64/rumdl-v0.1.64-x86_64-pc-windows-msvc.zip.sha256) |

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

