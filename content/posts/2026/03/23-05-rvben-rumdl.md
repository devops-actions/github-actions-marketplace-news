---
title: rumdl-action
date: 2026-03-23 05:53:46 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.58
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.58**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The **rumdl** GitHub Action is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistent formatting and adherence to best practices in Markdown files. It automates tasks like detecting and fixing common Markdown issues, supports multiple Markdown flavors, and provides a highly configurable experience with zero runtime dependencies. Optimized for speed and CI/CD workflows, it offers 71 lint rules, automatic formatting, and detailed error reporting, making it an efficient solution for maintaining clean and standardized Markdown documentation.

## Release notes


### Fixed

- **MD037**: Detect spacing issues in bold metadata patterns like `** Key**: value` — the doc pattern exemption was too broad, suppressing valid MD037 warnings when `**` was followed by `:` (thanks @vEnhance in [#539](https://github.com/rvben/rumdl/pull/539))
- **MDX support**: All rules now skip MDX comments (`{/* ... */}`) alongside HTML comments — MD010, MD011, MD018, MD022, MD028, MD030, MD032, MD033, MD034, MD036, MD046, MD052, MD066, MD067, MD068, MD069, MD070, MD075, MD076, MD077


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.58-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.58/rumdl-v0.1.58-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.58/rumdl-v0.1.58-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.58-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.58/rumdl-v0.1.58-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.58/rumdl-v0.1.58-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.58-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.58/rumdl-v0.1.58-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.58/rumdl-v0.1.58-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.58-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.58/rumdl-v0.1.58-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.58/rumdl-v0.1.58-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.58-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.58/rumdl-v0.1.58-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.58/rumdl-v0.1.58-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.58-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.58/rumdl-v0.1.58-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.58/rumdl-v0.1.58-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.58-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.58/rumdl-v0.1.58-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.58/rumdl-v0.1.58-x86_64-pc-windows-msvc.zip.sha256) |

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

