---
title: rumdl-action
date: 2026-01-12 21:16:13 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.0.215
dependentsNumber: "11"
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.0.215**.
- This action is used across all versions by **11** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency and best practices in Markdown files. It automates tasks such as detecting and fixing common Markdown issues, providing configurable linting rules, and delivering fast performance through caching and efficient processing. With zero dependencies and CI/CD compatibility, it is optimized for modern development workflows, supporting multiple installation methods and seamless integration with editors and pipelines.

## Release notes


### Fixed

- **MD057: Exclude footnote definitions from relative link checking** (fixes #286)
  - Footnote definitions (`[^id]: content`) were incorrectly parsed as reference link definitions
  - This caused MD057 to treat footnote content as URLs (e.g., `[^1]: [link](https://example.com)` was flagged as broken link)
  - Footnotes are now correctly identified and excluded from reference definition parsing
  - Also benefits MD053 (unused reference definitions) which uses the same parsing

- **MD005: Auto-fix preserves blockquote prefix** (fixes #268)
  - When fixing list indentation inside blockquotes, the `>` prefix is now preserved
  - Previously, auto-fix could break blockquote structure


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.0.215-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.215/rumdl-v0.0.215-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.215/rumdl-v0.0.215-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.215-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.215/rumdl-v0.0.215-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.215/rumdl-v0.0.215-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.215-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.215/rumdl-v0.0.215-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.215/rumdl-v0.0.215-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.215-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.215/rumdl-v0.0.215-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.215/rumdl-v0.0.215-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.215-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.215/rumdl-v0.0.215-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.215/rumdl-v0.0.215-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.215-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.215/rumdl-v0.0.215-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.215/rumdl-v0.0.215-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.215-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.0.215/rumdl-v0.0.215-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.215/rumdl-v0.0.215-x86_64-pc-windows-msvc.zip.sha256) |

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

