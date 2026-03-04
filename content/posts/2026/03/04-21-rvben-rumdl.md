---
title: rumdl-action
date: 2026-03-04 21:27:06 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.39
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.39**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter built with Rust to ensure consistency and best practices in Markdown files. It automates tasks such as detecting and fixing formatting issues, supports multiple Markdown flavors, and provides fast linting with intelligent caching for CI/CD and editor integrations. Its key capabilities include speed, zero dependencies, automatic formatting, and configurable lint rules, making it a robust tool for maintaining clean and standardized Markdown documentation.

## Release notes


### Fixed

- **Rustdoc**: Skip MD033, MD040, MD051, and MD054 for doc comment blocks to
  eliminate false positives — HTML warning blocks (`<div class="warning">`),
  unlabeled code blocks (default to Rust), rustdoc anchors (`#method.bar`),
  and shortcut intra-doc links (`[crate::module]`) are all valid rustdoc syntax
  ([#438](https://github.com/rvben/rumdl/issues/438), reported by @sorairolake)
- **Config**: Fix `include` patterns in `.rumdl.toml` not discovering `.rs`
  files — config-based include now correctly expands the file type filter to
  include Rust files alongside markdown
  ([#438](https://github.com/rvben/rumdl/issues/438), reported by @sorairolake)


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.39-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.39/rumdl-v0.1.39-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.39/rumdl-v0.1.39-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.39-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.39/rumdl-v0.1.39-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.39/rumdl-v0.1.39-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.39-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.39/rumdl-v0.1.39-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.39/rumdl-v0.1.39-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.39-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.39/rumdl-v0.1.39-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.39/rumdl-v0.1.39-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.39-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.39/rumdl-v0.1.39-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.39/rumdl-v0.1.39-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.39-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.39/rumdl-v0.1.39-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.39/rumdl-v0.1.39-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.39-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.39/rumdl-v0.1.39-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.39/rumdl-v0.1.39-x86_64-pc-windows-msvc.zip.sha256) |

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

