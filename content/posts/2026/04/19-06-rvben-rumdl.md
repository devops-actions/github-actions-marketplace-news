---
title: rumdl-action
date: 2026-04-19 06:44:32 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.74
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.74**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

**Summary:**  
The `rumdl` GitHub Action is a high-performance Markdown linter and formatter, built with Rust, that ensures consistency and best practices in Markdown files. It automates linting, formatting, and error detection, offering over 70 rules, auto-fix capabilities, and support for multiple Markdown flavors like GFM, MDX, and Quarto. Designed for speed and CI/CD integration, it provides a modern CLI, intelligent caching, and zero-dependency installation options.

## What's Changed


### Fixed

- **md077**: emit atomic compound fix for under-indented fences in lists ([455822c](https://github.com/rvben/rumdl/commit/455822c55ca947ea9065edf09e4303a596a471f7))
- **doctests**: correct rotted imports and blockquote indent assertions ([0238728](https://github.com/rvben/rumdl/commit/0238728025b2a4676b01d060b8380538972c4376))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.74-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.74/rumdl-v0.1.74-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.74/rumdl-v0.1.74-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.74-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.74/rumdl-v0.1.74-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.74/rumdl-v0.1.74-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.74-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.74/rumdl-v0.1.74-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.74/rumdl-v0.1.74-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.74-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.74/rumdl-v0.1.74-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.74/rumdl-v0.1.74-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.74-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.74/rumdl-v0.1.74-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.74/rumdl-v0.1.74-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.74-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.74/rumdl-v0.1.74-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.74/rumdl-v0.1.74-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.74-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.74/rumdl-v0.1.74-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.74/rumdl-v0.1.74-x86_64-pc-windows-msvc.zip.sha256) |

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

