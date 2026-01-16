---
title: rumdl-action
date: 2026-01-16 05:59:33 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.0.218
dependentsNumber: "13"
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.0.218**.
- This action is used across all versions by **13** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency and adherence to best practices in Markdown files. It automates tasks such as identifying and fixing common Markdown issues, offers configurable linting rules, and provides fast performance with intelligent caching for efficient CI/CD integration and developer workflows. Its capabilities include automatic formatting, detailed error reporting, and support for multiple installation methods, making it a modern and versatile tool for Markdown file management.

## Release notes


### Added

- **Style Guide Preset examples**
  - Google Markdown style guide config (`examples/google-style.toml`)
  - Prettier-compatible markdown config (`examples/prettier-style.toml`)

### Fixed

- **MD032: Eliminate false positives on real-world repos**
  - Tested against Rust Book (478 files) and MDN Content (14,100 files) with zero false positives
  - Treat HTML comments as transparent for blank line checks
  - Skip blank line warning when exiting blockquotes (boundary provides separation)
  - Handle prose numbered items like "Chapter 19." (sentence continuation detection)
  - Fix lazy continuation for code span continuations and nested sublists
  - Remove incorrect uppercase heuristic that was closing lists prematurely

- **Config: Correct rule alias mappings**
  - Add `descriptive-link-text` alias for MD059
  - Fix `table-cell-alignment` alias to map to MD060 (was incorrectly MD059)

- **Config: Warn on per-file-ignores patterns with commas**
  - Detects when patterns contain commas without braces
  - Suggests correct glob syntax: `{*.md,*.txt}` instead of `*.md,*.txt`


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.0.218-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.218/rumdl-v0.0.218-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.218/rumdl-v0.0.218-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.218-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.218/rumdl-v0.0.218-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.218/rumdl-v0.0.218-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.218-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.218/rumdl-v0.0.218-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.218/rumdl-v0.0.218-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.218-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.218/rumdl-v0.0.218-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.218/rumdl-v0.0.218-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.218-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.218/rumdl-v0.0.218-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.218/rumdl-v0.0.218-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.218-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.218/rumdl-v0.0.218-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.218/rumdl-v0.0.218-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.218-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.0.218/rumdl-v0.0.218-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.218/rumdl-v0.0.218-x86_64-pc-windows-msvc.zip.sha256) |

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

