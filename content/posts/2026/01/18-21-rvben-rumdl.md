---
title: rumdl-action
date: 2026-01-18 21:31:43 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.0.221
dependentsNumber: "14"
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.0.221**.
- This action is used across all versions by **14** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency, enforce best practices, and automate corrections in Markdown files. It addresses common issues with 57 lint rules, offers automatic formatting and intelligent caching for speed, and provides a modern, configurable CLI suitable for use in CI/CD pipelines and editor integrations. The tool is lightweight with zero dependencies and multiple installation options, making it accessible for diverse workflows.

## Release notes


### Added

- **Embedded markdown linting in fenced code blocks**
  - Lint markdown content inside ` ```markdown ` code blocks
  - Provides lint warnings for markdown examples in documentation
  - Auto-fix support formats embedded markdown preserving code fence indentation

### Fixed

- **MD064: Remove `max-consecutive-spaces` config, improve sentence detection**
  - Removed conceptually inconsistent `max-consecutive-spaces` option
  - Share sentence detection logic with text reflow (DRY)
  - Add proper abbreviation detection (Dr., Prof., e.g., i.e., Mr., Mrs.)
  - Add CJK sentence-ending punctuation support (。, ！, ？)
  - Fix UTF-8 byte boundary handling for multi-byte characters

- **MD055/MD056: Handle tables inside blockquotes in fix mode**
  - Tables within blockquotes now preserve `> ` prefix when fixed
  - Pipe style and column count fixes work correctly in nested contexts

- **MD060: Improve alignment detection for CJK and delimiter styles**
  - Better handling of CJK character widths in table alignment
  - Improved delimiter row style detection

- **MD069: Respect inline disable comments in fix mode**
  - `<!-- markdownlint-disable MD069 -->` now properly prevents fixes
  - Exposed inline config checks for rule disable detection

- **MD058/MD065: Recognize blockquote continuation lines as blank**
  - Lines with only `>` are now treated as blank for table separation rules
  - Fixes false positives in blockquoted content

- **Text reflow: Recognize sentence boundaries with quotation marks**
  - Sentences ending with closing quotes (`.\"`, `!\"`, `?\"`) now detected correctly
  - Supports both straight and curly quotation marks

### Changed

- **Refactored sentence detection into shared module**
  - New `sentence_utils` module provides reusable sentence boundary detection
  - Used by both MD064 (consecutive spaces) and text reflow (MD013)
  - Reduces code duplication by ~100 lines


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.0.221-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.221/rumdl-v0.0.221-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.221/rumdl-v0.0.221-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.221-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.221/rumdl-v0.0.221-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.221/rumdl-v0.0.221-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.221-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.221/rumdl-v0.0.221-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.221/rumdl-v0.0.221-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.221-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.221/rumdl-v0.0.221-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.221/rumdl-v0.0.221-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.221-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.221/rumdl-v0.0.221-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.221/rumdl-v0.0.221-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.221-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.221/rumdl-v0.0.221-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.221/rumdl-v0.0.221-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.221-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.0.221/rumdl-v0.0.221-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.221/rumdl-v0.0.221-x86_64-pc-windows-msvc.zip.sha256) |

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

