---
title: rumdl-action
date: 2026-03-24 22:03:54 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.59
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.59**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter built with Rust to ensure consistency and enforce best practices in Markdown files. It automates tasks like detecting and fixing common Markdown issues, supports multiple Markdown flavors, and provides detailed error reporting, making it ideal for CI/CD pipelines and editor integration. With 71 lint rules, zero dependencies, and exceptional speed, it offers a modern, highly configurable solution for maintaining clean and standardized Markdown documents.

## Release notes


### Fixed

- **MD053**: Resolve false positive for reference links used inside multi-line footnote bodies ([#540](https://github.com/rvben/rumdl/issues/540))
  - Root cause: `ENABLE_OLD_FOOTNOTES` parser option caused footnote continuation lines to be misidentified as indented code blocks, hiding reference usages from MD053
  - Switched to `ENABLE_FOOTNOTES` and unified all pulldown-cmark parser option sets across the codebase
  - Added `in_footnote_definition` field to `LineInfo` for proper footnote body detection
- **MD005, MD007, MD030, MD032, MD046**: Skip footnote definition body content to prevent false positives on list indentation, spacing, and code block style within footnotes
- **MD045**: Recognize Obsidian wikilink image alt text (`![[image|alt text]]`) as valid
- **Output**: Suppress summary text in machine-readable output formats (JSON, SARIF, etc.)


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.59-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.59/rumdl-v0.1.59-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.59/rumdl-v0.1.59-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.59-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.59/rumdl-v0.1.59-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.59/rumdl-v0.1.59-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.59-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.59/rumdl-v0.1.59-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.59/rumdl-v0.1.59-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.59-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.59/rumdl-v0.1.59-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.59/rumdl-v0.1.59-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.59-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.59/rumdl-v0.1.59-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.59/rumdl-v0.1.59-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.59-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.59/rumdl-v0.1.59-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.59/rumdl-v0.1.59-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.59-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.59/rumdl-v0.1.59-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.59/rumdl-v0.1.59-x86_64-pc-windows-msvc.zip.sha256) |

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

