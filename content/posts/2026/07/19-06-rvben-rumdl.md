---
title: rumdl-action
date: 2026-07-19 06:32:29 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.36
dependentsNumber: "6"
actionType: Composite
actionSummary: |
  **Summary:**
  
  rumdl is a high-performance Rust-based Markdown linter and formatter with over 76 lint rules, offering automatic formatting and zero dependencies. It's built for speed and supports multiple Markdown flavors, including GFM, MkDocs, MDX, Quarto, and MyST. The tool is highly configurable through TOML files and integrates well with various editors and CI/CD pipelines.
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.36**.

- This action is used across all versions by **6** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

**Summary:**

rumdl is a high-performance Rust-based Markdown linter and formatter with over 76 lint rules, offering automatic formatting and zero dependencies. It's built for speed and supports multiple Markdown flavors, including GFM, MkDocs, MDX, Quarto, and MyST. The tool is highly configurable through TOML files and integrates well with various editors and CI/CD pipelines.

## What's Changed


### Added

- **code-block-tools**: add shuck:format as a built-in shell formatter ([5b23261](https://github.com/rvben/rumdl/commit/5b232610a871755fd3900fe1b67f263b1fcd1474))

### Fixed

- **wasm**: stop double-converting already-character-based columns ([4178cdf](https://github.com/rvben/rumdl/commit/4178cdf8c0d64cba53340c17ce1dfa9a0ed9ff39))
- **tests**: resolve String addition compilation errors under Rust 1.96 (#737) ([38f36cf](https://github.com/rvben/rumdl/commit/38f36cf3dfb523f4ced6daf0b7e3f505018be713))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.36-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.36/rumdl-v0.2.36-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.36/rumdl-v0.2.36-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.36-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.36/rumdl-v0.2.36-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.36/rumdl-v0.2.36-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.36-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.36/rumdl-v0.2.36-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.36/rumdl-v0.2.36-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.36-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.36/rumdl-v0.2.36-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.36/rumdl-v0.2.36-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.36-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.36/rumdl-v0.2.36-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.36/rumdl-v0.2.36-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.36-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.36/rumdl-v0.2.36-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.36/rumdl-v0.2.36-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.36-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.36/rumdl-v0.2.36-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.36/rumdl-v0.2.36-x86_64-pc-windows-msvc.zip.sha256) |

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

