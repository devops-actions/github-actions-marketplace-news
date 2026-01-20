---
title: rumdl-action
date: 2026-01-20 21:41:50 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.0.222
dependentsNumber: "14"
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.0.222**.
- This action is used across all versions by **14** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The `rumdl` GitHub Action is a high-performance Markdown linter and formatter built with Rust to ensure consistency and best practices in Markdown files. It automates tasks such as identifying and fixing formatting issues, enforcing linting rules, and validating multiple Markdown flavors. Designed for speed and ease of integration into CI/CD pipelines, it provides configurable linting, automatic fixes, detailed error reporting, and supports various installation methods without dependencies.

## Release notes


### Fixed

- **MD018: Comprehensive false positive fixes** ([#314](https://github.com/rvben/rumdl/issues/314))
  - Skip content inside HTML comments (e.g., Jupyter cell markers `#%%`)
  - Skip indented patterns to match markdownlint behavior
  - Skip YAML comments inside frontmatter
  - Flag all malformed headings at line start

- **Tables inside list items** ([#314](https://github.com/rvben/rumdl/issues/314))
  - Tables embedded in list items are now detected, linted, and formatted correctly
  - Validate delimiter indentation for list-table detection

- **MD009: Correct 1-indexed column in ASCII path**
  - Column numbers in diagnostics now match editor positions

- **Schema: Include all flavor aliases** ([#312](https://github.com/rvben/rumdl/issues/312))
  - Added `gfm`, `github`, `commonmark`, `qmd`, `rmd`, `rmarkdown` to schema
  - JSON schema now matches documentation

- **CLI: Prevent duplicate config and use canonical rule list**
  - Fixes edge case where config could be loaded multiple times

### Performance

- **Optimize code detection and cache hash computation**
  - Faster detection of code blocks and spans

- **Cache per-file globsets**
  - Significant speedup for rules using file-specific patterns


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.0.222-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.222/rumdl-v0.0.222-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.222/rumdl-v0.0.222-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.222-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.222/rumdl-v0.0.222-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.222/rumdl-v0.0.222-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.222-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.222/rumdl-v0.0.222-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.222/rumdl-v0.0.222-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.222-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.222/rumdl-v0.0.222-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.222/rumdl-v0.0.222-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.222-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.222/rumdl-v0.0.222-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.222/rumdl-v0.0.222-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.222-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.222/rumdl-v0.0.222-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.222/rumdl-v0.0.222-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.222-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.0.222/rumdl-v0.0.222-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.222/rumdl-v0.0.222-x86_64-pc-windows-msvc.zip.sha256) |

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

