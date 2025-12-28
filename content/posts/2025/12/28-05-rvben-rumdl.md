---
title: rumdl-action
date: 2025-12-28 05:37:33 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.0.205
dependentsNumber: "4"
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.0.205**.
- This action is used across all versions by **4** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The GitHub Action "rumdl" is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency and best practices in Markdown files. It automates tasks such as identifying common issues, applying 57 lint rules, and auto-formatting files, while offering zero dependencies, fast performance, and integration capabilities for CI/CD pipelines. Its modern, configurable CLI and caching mechanism make it ideal for improving productivity and maintaining high-quality documentation in projects.

## Release notes


### Fixed

- **MD037: Skip multi-line inline code spans**
  - Asterisks inside code spans that cross line boundaries no longer trigger false positives
  - Uses pulldown-cmark for accurate multi-line code span detection

- **MD031: Don't require blank line after frontmatter**
  - Code blocks and admonitions immediately after YAML/TOML frontmatter no longer trigger warnings
  - Matches markdownlint behavior for frontmatter handling

- **MD034: Handle URLs with parentheses in path** (fixes #240)
  - URLs like `https://example.com/page_(1)` no longer incorrectly flag the closing parenthesis
  - Centralized URL pattern handling for consistent behavior

- **MD046: Detect mixed whitespace indented code blocks**
  - Indented code blocks using tabs or mixed whitespace are now properly detected
  - 4-space indented fences correctly identified as indented code blocks

- **Heading fixes: Preserve original whitespace**
  - Auto-fix for heading rules now preserves the original spacing around heading text

- **CLI: Support rule aliases in --enable/--disable flags**
  - Rule aliases (e.g., `blanks-around-fences` for MD031) now work with CLI flags

### Changed

- **Regex patterns: Centralize URL detection**
  - Consolidated URL patterns with documentation for maintainability
  - Removed unused URL_REGEX and BARE_URL_REGEX

- **Tab expansion: Consolidate into shared utility**
  - CommonMark-compliant tab expansion now uses shared `visual_indent` utility
  - Consistent indentation detection across all rules


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.0.205-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.205/rumdl-v0.0.205-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.205/rumdl-v0.0.205-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.205-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.205/rumdl-v0.0.205-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.205/rumdl-v0.0.205-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.205-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.205/rumdl-v0.0.205-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.205/rumdl-v0.0.205-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.205-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.205/rumdl-v0.0.205-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.205/rumdl-v0.0.205-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.205-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.205/rumdl-v0.0.205-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.205/rumdl-v0.0.205-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.205-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.205/rumdl-v0.0.205-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.205/rumdl-v0.0.205-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.205-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.0.205/rumdl-v0.0.205-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.205/rumdl-v0.0.205-x86_64-pc-windows-msvc.zip.sha256) |

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

