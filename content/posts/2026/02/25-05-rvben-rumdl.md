---
title: rumdl-action
date: 2026-02-25 05:55:26 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.28
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.28**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The `rumdl` GitHub Action is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency and best practices in Markdown files. It automates the detection and resolution of common Markdown issues with 57 configurable lint rules, supports multiple Markdown flavors, and offers features like automatic formatting, intelligent caching, and CI/CD integration. Its focus on speed, zero dependencies, and modern CLI make it an efficient tool for developers.

## Release notes


### Added

- **Import**: `rumdl import` now preserves original rule aliases (e.g., `no-hard-tabs`
  instead of `MD010`) in the generated config file
  ([#460](https://github.com/rvben/rumdl/issues/460))
- **Code Block Tools**: Per-language configs now support an `enabled` field to disable
  linting/formatting for specific languages while keeping the configuration
  ([#458](https://github.com/rvben/rumdl/issues/458))

### Fixed

- **MD044**: Vale (`<!-- vale ... -->`) and remark-lint (`<!-- lint ... -->`) inline
  configuration directives are now skipped when checking proper names
  ([#456](https://github.com/rvben/rumdl/issues/456))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.28-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.28/rumdl-v0.1.28-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.28/rumdl-v0.1.28-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.28-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.28/rumdl-v0.1.28-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.28/rumdl-v0.1.28-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.28-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.28/rumdl-v0.1.28-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.28/rumdl-v0.1.28-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.28-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.28/rumdl-v0.1.28-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.28/rumdl-v0.1.28-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.28-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.28/rumdl-v0.1.28-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.28/rumdl-v0.1.28-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.28-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.28/rumdl-v0.1.28-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.28/rumdl-v0.1.28-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.28-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.28/rumdl-v0.1.28-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.28/rumdl-v0.1.28-x86_64-pc-windows-msvc.zip.sha256) |

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

