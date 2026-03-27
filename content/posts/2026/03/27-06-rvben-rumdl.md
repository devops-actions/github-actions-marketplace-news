---
title: rumdl-action
date: 2026-03-27 06:14:09 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.61
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.61**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The **rumdl** GitHub Action is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency and best practices in Markdown files. It automates tasks such as identifying issues with Markdown syntax, enforcing 71 linting rules, and performing auto-fixes or formatting with minimal manual intervention. Key capabilities include lightning-fast performance, support for multiple Markdown flavors (e.g., GFM, MDX), zero dependencies, and seamless integration into CI/CD pipelines or development workflows.

## Release notes


### Added

- **MD018**: Add `tags` config option to recognize `#word` patterns as tags independently of flavor ([#544](https://github.com/rvben/rumdl/issues/544))

### Fixed

- **MD042**: Treat bare `#` URL as empty link ([#546](https://github.com/rvben/rumdl/issues/546))
- **MD013**: Ignore punctuation inside inline code for sentence splitting ([#545](https://github.com/rvben/rumdl/issues/545))
- **MD063**: Skip invalid headings like Obsidian-style tags ([#544](https://github.com/rvben/rumdl/issues/544))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.61-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.61/rumdl-v0.1.61-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.61/rumdl-v0.1.61-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.61-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.61/rumdl-v0.1.61-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.61/rumdl-v0.1.61-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.61-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.61/rumdl-v0.1.61-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.61/rumdl-v0.1.61-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.61-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.61/rumdl-v0.1.61-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.61/rumdl-v0.1.61-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.61-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.61/rumdl-v0.1.61-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.61/rumdl-v0.1.61-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.61-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.61/rumdl-v0.1.61-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.61/rumdl-v0.1.61-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.61-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.61/rumdl-v0.1.61-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.61/rumdl-v0.1.61-x86_64-pc-windows-msvc.zip.sha256) |

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

