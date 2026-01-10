---
title: rumdl-action
date: 2026-01-10 21:23:08 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.0.213
dependentsNumber: "8"
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.0.213**.
- This action is used across all versions by **8** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency, best practices, and compliance across Markdown files. It automates tasks such as identifying and fixing common Markdown issues, speeding up workflows with intelligent caching and CLI tools, and providing compatibility with CI/CD pipelines. Key capabilities include automatic formatting, extensive lint rule coverage, and flexible configuration, all while offering exceptional performance and requiring no dependencies.

## Release notes


### Fixed

- **MD031/MD046: Detect code blocks inside lists** (fixes #276)
  - MD031 with `list-items=true` now correctly flags fenced code blocks inside lists
  - MD046 with `style=fenced` now correctly flags indented code blocks inside lists
  - Uses pulldown-cmark for accurate CommonMark-compliant code block detection
  - Properly distinguishes between code blocks and footnote/admonition/tab content

- **MD057: Check reference-style link definitions for broken links** (fixes #274)
  - Reference-style link definitions like `[ref]: ./path.md` are now checked
  - Previously only inline links `[text](./path.md)` were validated
  - All existing validations apply: external URLs skipped, .html→.md fallback, URL decoding

- **MD007: "Do What I Mean" behavior for indent configuration** (fixes #273)
  - When `indent` is explicitly set without `style`, automatically use fixed style
  - Setting `indent = 4` now actually uses 4-space increments as expected
  - Warning shown if both `indent` and `style = "text-aligned"` are set (contradictory)

- **MD030: Prevent false positives in math blocks** (fixes #275)
  - Math blocks (`$$...$$`) are now detected and excluded from list marker spacing checks
  - Fixes incorrect warnings about list spacing inside LaTeX display math


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.0.213-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.213/rumdl-v0.0.213-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.213/rumdl-v0.0.213-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.213-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.213/rumdl-v0.0.213-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.213/rumdl-v0.0.213-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.213-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.213/rumdl-v0.0.213-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.213/rumdl-v0.0.213-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.213-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.213/rumdl-v0.0.213-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.213/rumdl-v0.0.213-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.213-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.213/rumdl-v0.0.213-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.213/rumdl-v0.0.213-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.213-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.213/rumdl-v0.0.213-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.213/rumdl-v0.0.213-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.213-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.0.213/rumdl-v0.0.213-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.213/rumdl-v0.0.213-x86_64-pc-windows-msvc.zip.sha256) |

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

