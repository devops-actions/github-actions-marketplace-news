---
title: rumdl-action
date: 2025-12-25 05:24:14 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.0.202
dependentsNumber: "1"
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.0.202**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter written in Rust, designed to enforce consistency and best practices in Markdown files. It automates tasks such as identifying linting issues, formatting files, and auto-fixing violations, offering a fast, modern CLI with intelligent caching for optimized performance. With its robust rule set, zero dependencies, and CI/CD compatibility, rumdl streamlines Markdown file maintenance for developers and teams.

## Release notes


### Added

- **MD069 (no-duplicate-list-markers): Detect accidental duplicate list markers** (fixes #227)
  - Detects patterns like `- - text` that occur from copy-paste with editor auto-list-continuation
  - Supports all unordered markers: `-`, `*`, `+` and mixed combinations
  - Auto-fix removes the first marker: `- - text` → `- text`
  - Correctly ignores CLI flags (`- --verbose`), emphasis (`* *italic*`), and nested lists
  - Skips code blocks, frontmatter, and HTML comments

- **MD032 (blanks-around-lists): Add `allow-lazy-continuation` config option**
  - When enabled, allows list items to continue without blank lines in specific contexts
  - Useful for documentation styles that prefer compact list formatting

### Fixed

- **LSP: Make severity a first-class field on RuleConfig**
  - Severity configuration now properly propagates through LSP diagnostics
  - Fixes issue where custom severity settings were not reflected in editor diagnostics

### Changed

- **Documentation improvements**
  - Added `.ignore` file support documentation
  - Added LSP server documentation
  - Added footnote rules documentation and cache configuration
  - Added opt-in rules section to RULES.md


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.0.202-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.202/rumdl-v0.0.202-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.202/rumdl-v0.0.202-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.202-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.202/rumdl-v0.0.202-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.202/rumdl-v0.0.202-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.202-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.202/rumdl-v0.0.202-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.202/rumdl-v0.0.202-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.202-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.202/rumdl-v0.0.202-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.202/rumdl-v0.0.202-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.202-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.202/rumdl-v0.0.202-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.202/rumdl-v0.0.202-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.202-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.202/rumdl-v0.0.202-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.202/rumdl-v0.0.202-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.202-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.0.202/rumdl-v0.0.202-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.202/rumdl-v0.0.202-x86_64-pc-windows-msvc.zip.sha256) |

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

