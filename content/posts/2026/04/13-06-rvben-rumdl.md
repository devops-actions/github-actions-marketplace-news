---
title: rumdl-action
date: 2026-04-13 06:27:22 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.70
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.70**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

**rumdl** is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency and enforce best practices in Markdown files. It automates the detection and fixing of common Markdown issues with 71 lint rules, supports multiple Markdown flavors, and provides a fast, zero-dependency CLI for integration into CI/CD pipelines or editor workflows. By offering features like auto-fixing, intelligent caching, and comprehensive configuration options, rumdl simplifies Markdown maintenance while significantly improving processing speed over alternative tools.

## What's Changed


### Fixed

- **MD044**: do not flag proper names inside bare-domain link text ([56a45df](https://github.com/rvben/rumdl/commit/56a45dfa92eb271a56cc8a9d4dc187fa732f1650))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.70-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.70/rumdl-v0.1.70-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.70/rumdl-v0.1.70-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.70-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.70/rumdl-v0.1.70-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.70/rumdl-v0.1.70-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.70-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.70/rumdl-v0.1.70-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.70/rumdl-v0.1.70-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.70-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.70/rumdl-v0.1.70-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.70/rumdl-v0.1.70-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.70-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.70/rumdl-v0.1.70-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.70/rumdl-v0.1.70-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.70-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.70/rumdl-v0.1.70-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.70/rumdl-v0.1.70-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.70-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.70/rumdl-v0.1.70-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.70/rumdl-v0.1.70-x86_64-pc-windows-msvc.zip.sha256) |

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

