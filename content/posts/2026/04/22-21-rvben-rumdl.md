---
title: rumdl-action
date: 2026-04-22 21:25:17 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.79
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.79**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The `rumdl` GitHub Action is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency and enforce best practices in Markdown files. It automates tasks such as identifying and fixing common Markdown issues, formatting files, and validating compliance with customizable linting rules. The action is optimized for speed, supports multiple Markdown flavors, and offers seamless integration into CI/CD workflows, making it an efficient tool for maintaining clean and standardized Markdown documentation.

## What's Changed


### Fixed

- **md051**: strip HTML comments from heading anchors ([e4e3c4b](https://github.com/rvben/rumdl/commit/e4e3c4b79126b7d8a90357edcba044ed7d473404))
- **md077**: accept task-item post-checkbox column to break MD013 reflow cycle ([1c3cbef](https://github.com/rvben/rumdl/commit/1c3cbef4cb2a5e0c9ff9c810c5012018f9ee3e18))
- **lint-context**: honor CommonMark Type-1 HTML blocks ([6f37e49](https://github.com/rvben/rumdl/commit/6f37e49cf9f54bf56c20bb88309cf7e9a052946a))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.79-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.79/rumdl-v0.1.79-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.79/rumdl-v0.1.79-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.79-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.79/rumdl-v0.1.79-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.79/rumdl-v0.1.79-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.79-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.79/rumdl-v0.1.79-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.79/rumdl-v0.1.79-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.79-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.79/rumdl-v0.1.79-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.79/rumdl-v0.1.79-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.79-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.79/rumdl-v0.1.79-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.79/rumdl-v0.1.79-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.79-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.79/rumdl-v0.1.79-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.79/rumdl-v0.1.79-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.79-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.79/rumdl-v0.1.79-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.79/rumdl-v0.1.79-x86_64-pc-windows-msvc.zip.sha256) |

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

