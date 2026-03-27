---
title: rumdl-action
date: 2026-03-27 13:56:40 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.62
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.62**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter, built with Rust, designed to ensure consistency and best practices in Markdown files. It automates tasks such as identifying and fixing common Markdown issues, supports multiple Markdown flavors, and provides fast performance with intelligent caching, making it ideal for CI/CD pipelines and editor integrations. Featuring 71 lint rules, auto-formatting capabilities, and extensive configurability, rumdl eliminates the need for additional dependencies while delivering a modern, efficient command-line experience.

## Release notes

### Added

- **config**: Support markdownlint-cli2 configuration format — the `config:` wrapper key is automatically detected and unwrapped ([#547](https://github.com/rvben/rumdl/issues/547))
- **config**: Auto-discover `.markdownlint-cli2.jsonc`, `.markdownlint-cli2.yaml`, and `.markdownlint-cli2.yml` config files with correct precedence over plain `.markdownlint.*` files

### Fixed

- **MD057**: Reset file existence cache in `cross_file_check()` to prevent stale LSP diagnostics after fixing broken links ([#548](https://github.com/rvben/rumdl/issues/548))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.62-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.62/rumdl-v0.1.62-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.62/rumdl-v0.1.62-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.62-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.62/rumdl-v0.1.62-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.62/rumdl-v0.1.62-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.62-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.62/rumdl-v0.1.62-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.62/rumdl-v0.1.62-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.62-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.62/rumdl-v0.1.62-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.62/rumdl-v0.1.62-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.62-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.62/rumdl-v0.1.62-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.62/rumdl-v0.1.62-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.62-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.62/rumdl-v0.1.62-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.62/rumdl-v0.1.62-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.62-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.62/rumdl-v0.1.62-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.62/rumdl-v0.1.62-x86_64-pc-windows-msvc.zip.sha256) |

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
