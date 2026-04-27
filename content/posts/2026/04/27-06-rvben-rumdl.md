---
title: rumdl-action
date: 2026-04-27 06:36:18 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.83
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.83**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

**rumdl** is a high-performance Markdown linter and formatter built in Rust, designed to enforce consistency and best practices in Markdown files through 71 linting rules and automatic formatting capabilities. It addresses common Markdown issues with speed, zero runtime dependencies, and support for multiple Markdown flavors like GFM and MDX, making it ideal for CI/CD pipelines and editor integrations. Its intelligent caching and modern CLI deliver a fast and user-friendly experience.

## What's Changed


### Fixed

- **lsp**: respect --config flag in server mode ([40f2a9d](https://github.com/rvben/rumdl/commit/40f2a9d1cd046a44282fb100e8f42052fa1e0ac0))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.83-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.83/rumdl-v0.1.83-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.83/rumdl-v0.1.83-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.83-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.83/rumdl-v0.1.83-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.83/rumdl-v0.1.83-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.83-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.83/rumdl-v0.1.83-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.83/rumdl-v0.1.83-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.83-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.83/rumdl-v0.1.83-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.83/rumdl-v0.1.83-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.83-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.83/rumdl-v0.1.83-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.83/rumdl-v0.1.83-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.83-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.83/rumdl-v0.1.83-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.83/rumdl-v0.1.83-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.83-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.83/rumdl-v0.1.83-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.83/rumdl-v0.1.83-x86_64-pc-windows-msvc.zip.sha256) |

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

