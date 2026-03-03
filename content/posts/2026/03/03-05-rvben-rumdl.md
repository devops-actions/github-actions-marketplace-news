---
title: rumdl-action
date: 2026-03-03 05:50:36 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.36
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.36**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter, built with Rust, that ensures consistency and adherence to best practices in Markdown files. It automates tasks like linting, formatting, and auto-fixing violations, and supports multiple Markdown flavors with zero runtime dependencies. Designed for speed and flexibility, it is well-suited for both local development and CI/CD workflows.

## Release notes


### Added

- **Lint**: Rust doc comment linting — `rumdl check` and `rumdl check --fix`
  now lint markdown inside `///` and `//!` doc comments in `.rs` files.
  Rules that don't apply to doc comments (MD041, MD047) are automatically
  skipped. Column numbers are remapped to the original source positions
  ([#438](https://github.com/rvben/rumdl/issues/438))

### Fixed

- **WASM**: Enable opt-in rules (like MD060) via per-rule `enabled = true`
  and `extend-enable` in WASM/Obsidian plugin configuration
  ([obsidian-rumdl#15](https://github.com/rvben/obsidian-rumdl/issues/15))
- **WASM**: Add `fixable`/`unfixable` config fields so fix scope restrictions
  work in WASM builds
- **WASM**: Set `enable_is_explicit` when `enable` is present, matching CLI
  behavior where `enable = []` means "no rules"
- **WASM**: Use canonical `MarkdownFlavor::from_str()` for flavor parsing so
  all aliases (`qmd`, `rmd`, `gfm`, `commonmark`, etc.) work in WASM


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.36-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.36/rumdl-v0.1.36-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.36/rumdl-v0.1.36-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.36-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.36/rumdl-v0.1.36-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.36/rumdl-v0.1.36-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.36-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.36/rumdl-v0.1.36-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.36/rumdl-v0.1.36-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.36-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.36/rumdl-v0.1.36-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.36/rumdl-v0.1.36-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.36-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.36/rumdl-v0.1.36-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.36/rumdl-v0.1.36-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.36-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.36/rumdl-v0.1.36-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.36/rumdl-v0.1.36-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.36-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.36/rumdl-v0.1.36-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.36/rumdl-v0.1.36-x86_64-pc-windows-msvc.zip.sha256) |

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

