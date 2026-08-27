---
title: rumdl-action
date: 2026-08-27 07:52:57 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.61
dependentsNumber: "8"
actionType: Composite
actionSummary: |
  ### Purpose and Functionality
  
  rumdl is a high-performance Markdown linter and formatter written in Rust. It offers a wide range of lint rules to ensure consistency and best practices in Markdown files, including built-in support for multiple Markdown flavors.
  
  ### Problem Solves or Tasks Automated
  
  - Ensures consistent formatting across Markdown files
  - Provides detailed error reporting with line numbers and descriptions
  - Offers automatic formatting capabilities for unfixable violations
  - Supports multiple Markdown flavors with auto-detection
  - Facilitates easy integration into CI/CD workflows
  
  ### Key Capabilities
  
  - Built for speed using Rust
  - Over 80 lint rules covering common Markdown issues
  - Automatic formatting with `--fix` option
  - Zero dependencies, single binary
  - Highly configurable through TOML-based configuration files
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.61**.

- This action is used across all versions by **8** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

### Purpose and Functionality

rumdl is a high-performance Markdown linter and formatter written in Rust. It offers a wide range of lint rules to ensure consistency and best practices in Markdown files, including built-in support for multiple Markdown flavors.

### Problem Solves or Tasks Automated

- Ensures consistent formatting across Markdown files
- Provides detailed error reporting with line numbers and descriptions
- Offers automatic formatting capabilities for unfixable violations
- Supports multiple Markdown flavors with auto-detection
- Facilitates easy integration into CI/CD workflows

### Key Capabilities

- Built for speed using Rust
- Over 80 lint rules covering common Markdown issues
- Automatic formatting with `--fix` option
- Zero dependencies, single binary
- Highly configurable through TOML-based configuration files

## What's Changed


### Added

- **cli**: add `--stdin-batch` for NUL-framed multi-document linting and `--stdin-batch-closed-world` for supplied-document-only link resolution


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.61-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.61/rumdl-v0.2.61-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.61/rumdl-v0.2.61-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.61-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.61/rumdl-v0.2.61-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.61/rumdl-v0.2.61-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.61-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.61/rumdl-v0.2.61-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.61/rumdl-v0.2.61-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.61-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.61/rumdl-v0.2.61-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.61/rumdl-v0.2.61-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.61-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.61/rumdl-v0.2.61-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.61/rumdl-v0.2.61-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.61-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.61/rumdl-v0.2.61-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.61/rumdl-v0.2.61-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.61-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.61/rumdl-v0.2.61-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.61/rumdl-v0.2.61-x86_64-pc-windows-msvc.zip.sha256) |

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

