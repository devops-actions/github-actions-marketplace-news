---
title: rumdl-action
date: 2026-08-13 05:53:50 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.55
dependentsNumber: "7"
actionType: Composite
actionSummary: |
  rumdl is a high-performance Markdown linter and formatter written in Rust, offering speed, extensive lint rules, automatic formatting with `--fix`, and support for multiple Markdown flavors. It's designed to help maintain consistent and best practices in Markdown files, providing modern CLI features and integration options for various environments.
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.55**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter written in Rust, offering speed, extensive lint rules, automatic formatting with `--fix`, and support for multiple Markdown flavors. It's designed to help maintain consistent and best practices in Markdown files, providing modern CLI features and integration options for various environments.

## What's Changed


### Fixed

- **lsp**: honor per-directory config across workspace features ([2c7670f](https://github.com/rvben/rumdl/commit/2c7670fb5ba5bf156bd9756111da80559f3c4c92))
- **core**: align path-aware document processing across adapters ([7285b7a](https://github.com/rvben/rumdl/commit/7285b7ad7b1c9d3a7ec17b59f93704dfaa38b9dc))

### Performance

- **lsp**: construct workspace index rules directly ([864e42a](https://github.com/rvben/rumdl/commit/864e42a891364827bb98cbc908affe17a0241d14))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.55-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.55/rumdl-v0.2.55-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.55/rumdl-v0.2.55-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.55-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.55/rumdl-v0.2.55-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.55/rumdl-v0.2.55-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.55-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.55/rumdl-v0.2.55-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.55/rumdl-v0.2.55-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.55-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.55/rumdl-v0.2.55-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.55/rumdl-v0.2.55-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.55-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.55/rumdl-v0.2.55-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.55/rumdl-v0.2.55-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.55-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.55/rumdl-v0.2.55-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.55/rumdl-v0.2.55-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.55-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.55/rumdl-v0.2.55-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.55/rumdl-v0.2.55-x86_64-pc-windows-msvc.zip.sha256) |

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

