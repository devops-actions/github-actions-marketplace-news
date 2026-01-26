---
title: rumdl-action
date: 2026-01-26 21:45:00 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.1
dependentsNumber: "17"
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.1**.
- This action is used across all versions by **17** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The `rumdl` GitHub Action is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency and best practices in Markdown files. It automates tasks such as identifying and fixing common Markdown issues, supports multiple Markdown flavors, and provides fast, configurable linting with zero dependencies. Its key capabilities include automatic formatting, detailed error reporting, and integration with CI/CD workflows for streamlined development processes.

## Release notes


### Fixed

- **MD013: Preserve MkDocs snippet delimiters during reflow** ([#338](https://github.com/rvben/rumdl/issues/338))
  - `-8<-` and `--8<--` delimiters now stay on their own lines when reflowing list items
  - Prevents MkDocs Snippets extension syntax from being corrupted

- **MD013: Detect same-line closing tags for script/style elements** ([#339](https://github.com/rvben/rumdl/issues/339))
  - Self-closing tags like `<script src="..."></script>` no longer cause subsequent lines to be skipped
  - Lines after inline script/style tags are now properly checked for line length

- **MD013: Improve reflow handling for config and MkDocs syntax** ([#335](https://github.com/rvben/rumdl/issues/335), [#337](https://github.com/rvben/rumdl/issues/337))
  - Recognize `abbreviations` config option (was showing "unknown option" error)
  - Preserve attrlist syntax `{: .class }` on its own line during reflow

- **MD013: Require space after period for numbered list detection** ([#336](https://github.com/rvben/rumdl/issues/336))
  - Prevents "failed to converge after 100 iterations" error on certain inputs
  - Version numbers like `1.2.3` no longer mistakenly detected as list items

- **MD013: Handle email autolinks correctly**
  - Email addresses in angle brackets (e.g., `<user@example.com>`) no longer break HTML tag extraction

- **MD005/MD030: Use blockquote-aware indent calculation**
  - List continuation detection now correctly handles blockquote prefixes
  - Multi-line list item detection accounts for blockquote nesting

### Changed

- **Shared blockquote utilities for indent calculation**
  - Centralized logic for calculating indentation within blockquotes
  - Improves consistency across MD005, MD030, and MD032 rules


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.1-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.1/rumdl-v0.1.1-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.1/rumdl-v0.1.1-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.1-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.1/rumdl-v0.1.1-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.1/rumdl-v0.1.1-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.1-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.1/rumdl-v0.1.1-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.1/rumdl-v0.1.1-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.1-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.1/rumdl-v0.1.1-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.1/rumdl-v0.1.1-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.1-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.1/rumdl-v0.1.1-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.1/rumdl-v0.1.1-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.1-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.1/rumdl-v0.1.1-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.1/rumdl-v0.1.1-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.1-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.1/rumdl-v0.1.1-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.1/rumdl-v0.1.1-x86_64-pc-windows-msvc.zip.sha256) |

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

