---
title: rumdl-action
date: 2026-01-11 21:29:00 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.0.214
dependentsNumber: "10"
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.0.214**.
- This action is used across all versions by **10** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The `rumdl` GitHub Action is a high-performance Markdown linter and formatter built with Rust, designed to enforce consistency and best practices in Markdown files. It automates tasks such as checking for style violations, formatting Markdown files, and fixing common issues. With its speed, zero dependencies, extensive rule set, and CI/CD integration, it provides an efficient and configurable solution for managing and improving Markdown quality in development workflows.

## Release notes


### Added

- **Per-file flavor configuration** (fixes #283)
  - Configure different markdown flavors for specific file patterns using glob patterns
  - Example: `"docs/**/*.md" = "gfm"` in `[global.file-flavors]` section
  - Supports all flavor values: `commonmark`, `gfm`, `mkdocs`, `obsidian`, `mdbook`
  - File patterns are matched against relative paths from project root

### Fixed

- **MD028: Skip GFM alerts when checking blank lines in blockquotes** (fixes #126)
  - GFM alerts (`> [!NOTE]`, `> [!TIP]`, `> [!IMPORTANT]`, `> [!WARNING]`, `> [!CAUTION]`) require blank line separation to render correctly
  - MD028 now detects GFM alerts and allows blank lines between them
  - Case-insensitive detection supports both `[!NOTE]` and `[!note]`
  - Regular blockquotes between GFM alerts are still flagged correctly

- **MD032: Auto-fix handles varying blockquote whitespace** (fixes #268)
  - Auto-fix no longer breaks blockquote structure when lines have different spacing
  - Properly handles mixed `>` and `> ` prefixes within the same blockquote

- **MD032: Detect blockquotes before skip conditions** (fixes #284, #285)
  - Blockquote detection now runs first, preventing false positives inside blockquotes
  - Fixes cases where multi-paragraph list items in blockquotes triggered warnings


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.0.214-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.214/rumdl-v0.0.214-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.214/rumdl-v0.0.214-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.214-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.214/rumdl-v0.0.214-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.214/rumdl-v0.0.214-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.214-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.214/rumdl-v0.0.214-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.214/rumdl-v0.0.214-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.214-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.214/rumdl-v0.0.214-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.214/rumdl-v0.0.214-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.214-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.214/rumdl-v0.0.214-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.214/rumdl-v0.0.214-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.214-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.214/rumdl-v0.0.214-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.214/rumdl-v0.0.214-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.214-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.0.214/rumdl-v0.0.214-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.214/rumdl-v0.0.214-x86_64-pc-windows-msvc.zip.sha256) |

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

