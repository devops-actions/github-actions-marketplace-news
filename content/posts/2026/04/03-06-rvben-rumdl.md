---
title: rumdl-action
date: 2026-04-03 06:18:53 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.66
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.66**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The `rumdl` GitHub Action is a high-performance Markdown linter and formatter built in Rust, designed to ensure consistency and best practices in Markdown files. It automates tasks such as identifying and fixing formatting issues, enforcing 71 lint rules, and supporting different Markdown flavors like GFM and MDX, all with a focus on speed and simplicity. Its key capabilities include automatic formatting, intelligent caching for faster subsequent runs, and seamless integration with CI/CD pipelines.

## What's Changed


### Added

- **vscode**: implement multiline warning range support in VS Code fix simulation ([7e4e70b](https://github.com/rvben/rumdl/commit/7e4e70b64496609fb4b4038cd95fb0b3f911eda2))

### Fixed

- **md075**: skip pipes inside math spans to prevent false positives ([0420515](https://github.com/rvben/rumdl/commit/0420515230f5f94aaa458e41c960cbd71074d313))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.66-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.66/rumdl-v0.1.66-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.66/rumdl-v0.1.66-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.66-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.66/rumdl-v0.1.66-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.66/rumdl-v0.1.66-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.66-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.66/rumdl-v0.1.66-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.66/rumdl-v0.1.66-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.66-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.66/rumdl-v0.1.66-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.66/rumdl-v0.1.66-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.66-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.66/rumdl-v0.1.66-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.66/rumdl-v0.1.66-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.66-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.66/rumdl-v0.1.66-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.66/rumdl-v0.1.66-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.66-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.66/rumdl-v0.1.66-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.66/rumdl-v0.1.66-x86_64-pc-windows-msvc.zip.sha256) |

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

