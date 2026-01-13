---
title: rumdl-action
date: 2026-01-13 22:05:04 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.0.216
dependentsNumber: "12"
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.0.216**.
- This action is used across all versions by **12** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The "rumdl" GitHub Action is a high-performance Markdown linter and formatter built with Rust to ensure consistency and best practices in Markdown files. It automates tasks such as detecting and fixing common Markdown issues, formatting files, and reporting linting errors, making it ideal for CI/CD pipelines and editor integration. Key capabilities include fast execution, intelligent caching, automatic formatting, and extensive configurability with zero runtime dependencies.

## Release notes


### Added

- **MD072: Custom key order for frontmatter sorting** (fixes #290)
  - New `key-order` config option to define preferred key ordering
  - Keys in the order list appear first, unlisted keys sort alphabetically after
  - Example: `key-order = ["title", "date", "author"]` puts title first

### Fixed

- **MD060: Preserve blockquote prefix when formatting tables**
  - Tables inside blockquotes (e.g., `> | A | B |`) now correctly preserve the prefix
  - Supports nested blockquotes (`>>`, `>>>`) with proper prefix preservation
  - Works with all formatting styles (aligned, compact, tight)

- **MD057: Skip link patterns inside LaTeX math spans** (fixes #289)
  - Link-like patterns inside `$...$` or `$$...$$` are no longer flagged as broken links
  - Prevents false positives from LaTeX commands that resemble markdown links

- **MD030: Skip empty marker lines without content** (fixes #288)
  - Lines with only a list marker (no content) are now skipped
  - Prevents incorrect warnings about spacing on empty list items

- **MD031/MD032/MD058/MD065: Auto-fix preserves nested blockquote prefix** (fixes #268)
  - When inserting blank lines in blockquotes, the blockquote prefix is now preserved
  - Works correctly with nested blockquotes (`>>`, `>>>`)
  - Blank blockquote lines use `>` without trailing space (per markdownlint-cli)

- **MD005/MD007: Prevent oscillation between rules**
  - Ordered and unordered list items are now tracked in separate groups
  - Fixes cases where MD005 and MD007 would fight over indentation


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.0.216-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.216/rumdl-v0.0.216-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.216/rumdl-v0.0.216-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.216-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.216/rumdl-v0.0.216-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.216/rumdl-v0.0.216-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.216-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.216/rumdl-v0.0.216-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.216/rumdl-v0.0.216-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.216-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.216/rumdl-v0.0.216-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.216/rumdl-v0.0.216-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.216-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.216/rumdl-v0.0.216-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.216/rumdl-v0.0.216-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.216-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.216/rumdl-v0.0.216-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.216/rumdl-v0.0.216-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.216-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.0.216/rumdl-v0.0.216-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.216/rumdl-v0.0.216-x86_64-pc-windows-msvc.zip.sha256) |

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

