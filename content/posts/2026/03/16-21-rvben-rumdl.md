---
title: rumdl-action
date: 2026-03-16 21:41:13 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.53
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.53**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The GitHub Action "rumdl" is a high-performance Markdown linter and formatter written in Rust. It automates the process of ensuring consistency and best practices in Markdown files by providing fast linting, automatic formatting, and support for multiple Markdown flavors. Designed for speed, it solves common Markdown issues, integrates seamlessly with CI/CD pipelines, and offers configurable rules with zero dependencies.

## Release notes


### Fixed

- **MD013**: Fixed reflow dedenting paragraph after code block out of admonition inside list item ([#509](https://github.com/rvben/rumdl/issues/509))
  - Code block lines inside admonitions with 4-space list markers had both `in_admonition` and `in_code_block` flags set; the code block check ran first, prematurely flushing the admonition context
  - Admonition body reconstruction now correctly segments code blocks (preserved verbatim) from text paragraphs (reflowed)
  - CommonMark-correct fence matching: closing fences must match opening fence character type and minimum length, and cannot have info strings


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.53-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.53/rumdl-v0.1.53-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.53/rumdl-v0.1.53-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.53-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.53/rumdl-v0.1.53-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.53/rumdl-v0.1.53-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.53-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.53/rumdl-v0.1.53-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.53/rumdl-v0.1.53-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.53-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.53/rumdl-v0.1.53-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.53/rumdl-v0.1.53-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.53-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.53/rumdl-v0.1.53-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.53/rumdl-v0.1.53-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.53-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.53/rumdl-v0.1.53-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.53/rumdl-v0.1.53-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.53-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.53/rumdl-v0.1.53-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.53/rumdl-v0.1.53-x86_64-pc-windows-msvc.zip.sha256) |

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

