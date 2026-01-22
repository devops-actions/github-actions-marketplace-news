---
title: rumdl-action
date: 2026-01-22 21:43:59 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.0.224
dependentsNumber: "14"
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.0.224**.
- This action is used across all versions by **14** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The "rumdl" GitHub Action is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency and adherence to best practices in Markdown files. It automates the detection and correction of Markdown issues using 57 lint rules, supports multiple Markdown flavors, and provides fast performance with intelligent caching for efficient CI/CD workflows and editor integrations. Key capabilities include automatic formatting, customizable rules via TOML, and a modern CLI with detailed error reporting.

## Release notes


### Added

- **GitHub Action: `fail-on-error` and `output-file` inputs** ([#324](https://github.com/rvben/rumdl/issues/324), [#325](https://github.com/rvben/rumdl/issues/325))
  - `fail-on-error`: Control whether the workflow fails on violations (default: `true`)
  - `output-file`: Write lint results to a file for use in subsequent steps

- **LSP: `source.fixAll.rumdl` code action for fix-on-save**
  - Enables VS Code's "Fix All on Save" feature for rumdl
  - Configure with `editor.codeActionsOnSave: { "source.fixAll.rumdl": "explicit" }`


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.0.224-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.224/rumdl-v0.0.224-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.224/rumdl-v0.0.224-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.224-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.224/rumdl-v0.0.224-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.224/rumdl-v0.0.224-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.224-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.224/rumdl-v0.0.224-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.224/rumdl-v0.0.224-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.224-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.224/rumdl-v0.0.224-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.224/rumdl-v0.0.224-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.224-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.224/rumdl-v0.0.224-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.224/rumdl-v0.0.224-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.224-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.224/rumdl-v0.0.224-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.224/rumdl-v0.0.224-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.224-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.0.224/rumdl-v0.0.224-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.224/rumdl-v0.0.224-x86_64-pc-windows-msvc.zip.sha256) |

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

