---
title: rumdl-action
date: 2026-04-17 14:10:53 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.73
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.73**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency and best practices in Markdown files. It automates tasks such as detecting and fixing common Markdown issues, supports multiple Markdown flavors, and offers fast performance with intelligent caching for efficient CI/CD integration and editor workflows. With 71 lint rules, a modern CLI, and extensive configuration options, it provides a lightweight, dependency-free solution for maintaining high-quality Markdown documentation.

## What's Changed


### Fixed

- **test**: make test_performance_md051 actually exercise MD051 ([c550ef6](https://github.com/rvben/rumdl/commit/c550ef68738a623e040e512db722fe7235a36242))
- **md013,bench**: enforce CommonMark 3-space indent on thematic breaks; hoist LintContext out of bench loop ([1aafb9a](https://github.com/rvben/rumdl/commit/1aafb9a7997a0e04a4d98963ec446847ee7cd3f8))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.73-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.73/rumdl-v0.1.73-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.73/rumdl-v0.1.73-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.73-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.73/rumdl-v0.1.73-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.73/rumdl-v0.1.73-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.73-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.73/rumdl-v0.1.73-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.73/rumdl-v0.1.73-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.73-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.73/rumdl-v0.1.73-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.73/rumdl-v0.1.73-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.73-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.73/rumdl-v0.1.73-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.73/rumdl-v0.1.73-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.73-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.73/rumdl-v0.1.73-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.73/rumdl-v0.1.73-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.73-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.73/rumdl-v0.1.73-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.73/rumdl-v0.1.73-x86_64-pc-windows-msvc.zip.sha256) |

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

