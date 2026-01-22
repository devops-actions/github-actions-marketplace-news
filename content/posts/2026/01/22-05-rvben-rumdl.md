---
title: rumdl-action
date: 2026-01-22 05:56:39 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.0.223
dependentsNumber: "14"
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.0.223**.
- This action is used across all versions by **14** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter written in Rust, designed to ensure consistency and adherence to best practices in Markdown files. It automates tasks such as identifying and fixing common Markdown issues, formatting files, and supporting multiple Markdown flavors, while offering fast processing, detailed error reporting, and integration with CI/CD pipelines. With zero dependencies and highly configurable options, rumdl provides an efficient solution for maintaining clean and standardized Markdown documentation.

## Release notes


### Added

- **MD060: `column-align` option for table cell text alignment** ([#317](https://github.com/rvben/rumdl/issues/317))
  - Options: `left`, `center`, `right` to force alignment for all columns
  - Complements existing table formatting rules

- **Documentation site** ([rumdl.dev](https://rumdl.dev))
  - Rule documentation with examples and configuration guides

### Fixed

- **Embedded markdown respects per-file-ignores and inline config**
  - Both `rumdl check` and `rumdl fmt` now honor `<!-- rumdl-disable -->` comments
  - Per-file-ignores configuration applies to embedded markdown blocks

- **Fix mode re-lint uses filtered rules** ([#319](https://github.com/rvben/rumdl/issues/319))
  - After applying fixes, re-linting respects per-file-ignores and inline config

- **MD030: Auto-fix applies custom spacing config** ([#318](https://github.com/rvben/rumdl/issues/318))
  - Custom `ul_single`, `ol_single`, etc. values now applied during fix

### Changed

- **Documentation improvements**
  - Fixed MD051 location in RULES.md tables (thanks @Ravlen in #315)
  - Added Flavors section to README (closes #316)
  - Added Discord server link to issue templates (thanks @pygarap in #321)


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.0.223-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.223/rumdl-v0.0.223-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.223/rumdl-v0.0.223-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.223-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.223/rumdl-v0.0.223-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.223/rumdl-v0.0.223-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.223-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.223/rumdl-v0.0.223-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.223/rumdl-v0.0.223-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.223-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.223/rumdl-v0.0.223-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.223/rumdl-v0.0.223-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.223-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.223/rumdl-v0.0.223-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.223/rumdl-v0.0.223-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.223-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.223/rumdl-v0.0.223-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.223/rumdl-v0.0.223-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.223-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.0.223/rumdl-v0.0.223-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.223/rumdl-v0.0.223-x86_64-pc-windows-msvc.zip.sha256) |

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

