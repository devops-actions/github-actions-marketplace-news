---
title: rumdl-action
date: 2026-05-03 06:39:34 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.87
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.87**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency and best practices in Markdown files. It automates tasks like linting, formatting, and auto-fixing violations, while providing support for multiple Markdown flavors (e.g., GFM, MDX) and intelligent caching for optimized performance. With zero dependencies, CLI error reporting, and CI/CD integration, rumdl simplifies Markdown file management for developers.

## What's Changed


### Added

- **config**: fall back to ~/.rumdl.toml and ~/rumdl.toml as user config ([8557089](https://github.com/rvben/rumdl/commit/855708960aa85877d1fb4aff0c116cb01348020c))

### Fixed

- **code-block-tools**: use yamlfmt lint mode for YAML (#606) ([0296f86](https://github.com/rvben/rumdl/commit/0296f8691e253baa77b53a3c52f7c95f4b7acbf2))
- **MD038**: preserve spaces around nested backticks (#605) ([a9552c6](https://github.com/rvben/rumdl/commit/a9552c652e070e34042e47e07096ef16730a19d6))
- **MD013**: keep closing quote with parenthetical splits (#601) ([9a47b99](https://github.com/rvben/rumdl/commit/9a47b99ba60771902c3d0d3346456e0ae38a3d6e))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.87-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.87/rumdl-v0.1.87-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.87/rumdl-v0.1.87-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.87-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.87/rumdl-v0.1.87-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.87/rumdl-v0.1.87-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.87-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.87/rumdl-v0.1.87-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.87/rumdl-v0.1.87-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.87-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.87/rumdl-v0.1.87-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.87/rumdl-v0.1.87-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.87-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.87/rumdl-v0.1.87-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.87/rumdl-v0.1.87-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.87-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.87/rumdl-v0.1.87-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.87/rumdl-v0.1.87-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.87-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.87/rumdl-v0.1.87-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.87/rumdl-v0.1.87-x86_64-pc-windows-msvc.zip.sha256) |

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

