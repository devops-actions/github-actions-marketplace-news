---
title: rumdl-action
date: 2026-01-14 21:25:40 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.0.217
dependentsNumber: "12"
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.0.217**.
- This action is used across all versions by **12** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency and best practices in Markdown files. It automates tasks such as identifying and fixing common Markdown issues with 57 lint rules, provides fast performance with caching, and supports CI/CD workflows through configurable error reporting. Its lightweight, dependency-free design and modern CLI make it suitable for developers seeking efficient and scalable Markdown file management.

## Release notes


### Added

- **MD064: `max-consecutive-spaces` config option** (fixes #294)
  - New option to allow configurable consecutive space threshold
  - `max-consecutive-spaces = 2` allows traditional two-space sentence spacing
  - Default remains `1` (flags any 2+ consecutive spaces)

- **Comprehensive Markdown flavor documentation**
  - New `docs/flavors.md` with detailed flavor support guide
  - Coverage of MkDocs, MDX, Quarto, GitHub, and Standard flavors

### Fixed

- **MD032: Detect lazy continuation in nested lists** (fixes #295)
  - Lazy continuation lines in nested lists are now correctly identified
  - Uses `content_column` from `ListItemInfo` to calculate proper indent threshold

- **MD032: Detect blockquote level changes as list breaks**
  - Lines with different blockquote nesting levels now properly break lists
  - Prevents false positives when list items span blockquote boundaries

- **MD033: Calculate correct end_line for multiline HTML tags**
  - HTML tags spanning multiple lines now report accurate end positions
  - Improves LSP diagnostic highlighting for multiline HTML elements

- **Config warnings show relative paths instead of absolute** (fixes #291)
  - Config warning messages now use project-relative paths
  - Makes error messages cleaner and more portable

- **Core correctness and performance improvements**
  - Various fixes for edge cases in line processing
  - Performance optimizations in lint context creation

### Community

- Opened official Discord server for the rumdl community (thanks @pygarap for the suggestion in #281)
  - Join at https://discord.gg/ADTJFSFUyn
  - Channels: #general, #announcements, #help, #development
  - Release notifications automatically posted via GitHub webhook


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.0.217-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.217/rumdl-v0.0.217-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.217/rumdl-v0.0.217-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.217-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.217/rumdl-v0.0.217-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.217/rumdl-v0.0.217-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.217-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.217/rumdl-v0.0.217-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.217/rumdl-v0.0.217-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.217-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.217/rumdl-v0.0.217-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.217/rumdl-v0.0.217-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.217-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.217/rumdl-v0.0.217-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.217/rumdl-v0.0.217-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.217-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.217/rumdl-v0.0.217-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.217/rumdl-v0.0.217-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.217-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.0.217/rumdl-v0.0.217-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.217/rumdl-v0.0.217-x86_64-pc-windows-msvc.zip.sha256) |

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

