---
title: rumdl-action
date: 2026-01-06 20:26:27 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.0.211
dependentsNumber: "4"
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.0.211**.
- This action is used across all versions by **4** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The `rumdl` GitHub Action is a high-performance Markdown linter and formatter built with Rust to ensure consistency, best practices, and error-free Markdown files. It automates tasks such as detecting common Markdown issues, formatting files, and applying auto-fixes while providing fast performance, detailed error reporting, and seamless integration with CI/CD workflows. Key capabilities include configurable lint rules, zero dependencies, and support for multiple installation methods, making it a modern, efficient tool for developers.

## Release notes


### Fixed

- **MD032: Handle blockquote continuation lines correctly** (fixes #260)
  - Blockquote continuation lines within the same blockquote level no longer incorrectly trigger "list should be surrounded by blank lines" warnings
  - Changed detection from checking if line starts with `>` to comparing blockquote nesting levels
  - Lists inside blockquotes like `> - item\n>   continuation` now lint correctly

- **MD071: Preserve trailing newlines when fixing frontmatter spacing** (fixes #262)
  - Auto-fix no longer removes the file's trailing newline
  - Prevents MD047 (files should end with newline) from triggering after MD071 fix

### Changed

- **Rules: Add aliases for MD070, MD071, MD072**
  - MD070: `nested-code-fence-collision`
  - MD071: `blank-line-after-frontmatter`
  - MD072: `frontmatter-key-sort`


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.0.211-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.211/rumdl-v0.0.211-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.211/rumdl-v0.0.211-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.211-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.211/rumdl-v0.0.211-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.211/rumdl-v0.0.211-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.211-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.211/rumdl-v0.0.211-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.211/rumdl-v0.0.211-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.211-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.211/rumdl-v0.0.211-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.211/rumdl-v0.0.211-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.211-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.211/rumdl-v0.0.211-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.211/rumdl-v0.0.211-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.211-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.211/rumdl-v0.0.211-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.211/rumdl-v0.0.211-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.211-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.0.211/rumdl-v0.0.211-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.211/rumdl-v0.0.211-x86_64-pc-windows-msvc.zip.sha256) |

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

