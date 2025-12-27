---
title: rumdl-action
date: 2025-12-27 05:27:47 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.0.204
dependentsNumber: "4"
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.0.204**.
- This action is used across all versions by **4** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The GitHub Action "rumdl" is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency and adherence to best practices in Markdown files. It automates the process of detecting and fixing common Markdown issues with 57 linting rules, offers fast execution, intelligent caching for optimized performance, and is CI/CD-friendly with detailed error reporting. This action simplifies Markdown file management through configurable settings, automatic formatting, and multiple installation options, making it ideal for developers and teams prioritizing speed and efficiency.

## Release notes


### Fixed

- **MD007: Use per-parent indent logic instead of document-wide style**
  - Fixed incorrect warnings when nested lists had different indentation styles
  - Each parent list item now independently tracks its children's indentation

- **MD022: Distinguish horizontal rules from frontmatter delimiters**
  - HR patterns (`---`, `***`, `___`) after headings no longer incorrectly trigger blank line warnings
  - Centralized HR detection in `LineInfo` for consistent behavior across rules

- **LSP: Unify cross-file link extraction with MD057**
  - LSP diagnostics now report correct column positions for MD057 warnings
  - Created shared `extract_cross_file_links` utility used by both CLI and LSP
  - Ensures consistent position tracking between editor and command-line


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.0.204-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.204/rumdl-v0.0.204-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.204/rumdl-v0.0.204-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.204-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.204/rumdl-v0.0.204-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.204/rumdl-v0.0.204-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.204-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.204/rumdl-v0.0.204-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.204/rumdl-v0.0.204-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.204-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.204/rumdl-v0.0.204-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.204/rumdl-v0.0.204-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.204-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.204/rumdl-v0.0.204-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.204/rumdl-v0.0.204-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.204-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.204/rumdl-v0.0.204-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.204/rumdl-v0.0.204-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.204-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.0.204/rumdl-v0.0.204-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.204/rumdl-v0.0.204-x86_64-pc-windows-msvc.zip.sha256) |

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

