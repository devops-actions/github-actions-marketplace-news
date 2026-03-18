---
title: rumdl-action
date: 2026-03-18 21:38:15 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.54
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.54**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

**rumdl** is a high-performance Markdown linter and formatter built with Rust, designed to enforce consistency and best practices in Markdown files. It automates tasks like identifying and fixing formatting issues, supports multiple Markdown flavors, and provides detailed error reporting, making it ideal for CI/CD pipelines and developer workflows. With its speed, zero dependencies, and robust configurability, rumdl is a modern, efficient solution for managing Markdown quality at scale.

## Release notes


### Fixed

- **MD013**: Lines consisting entirely of inline HTML (e.g., badge links `<a href="..."><img .../></a>`) are no longer flagged when `strict = false` ([#535](https://github.com/rvben/rumdl/issues/535))
  - Two-tier detection: lines where all content is inside HTML tags, and lines that start/end with tags containing URL attributes (`href`, `src`, `srcset`, `poster`)
  - HTML-only lines are also treated as paragraph boundaries in reflow mode, preventing them from being merged into adjacent prose


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.54-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.54/rumdl-v0.1.54-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.54/rumdl-v0.1.54-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.54-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.54/rumdl-v0.1.54-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.54/rumdl-v0.1.54-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.54-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.54/rumdl-v0.1.54-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.54/rumdl-v0.1.54-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.54-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.54/rumdl-v0.1.54-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.54/rumdl-v0.1.54-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.54-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.54/rumdl-v0.1.54-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.54/rumdl-v0.1.54-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.54-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.54/rumdl-v0.1.54-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.54/rumdl-v0.1.54-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.54-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.54/rumdl-v0.1.54-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.54/rumdl-v0.1.54-x86_64-pc-windows-msvc.zip.sha256) |

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

