---
title: rumdl-action
date: 2025-12-20 05:32:59 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.0.197
dependentsNumber: "1"
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.0.197**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Release notes


### Fixed

- **Config: Resolve per-file-ignores paths relative to project root** (fixes #208)
  - Previously, per-file-ignores patterns only matched with relative paths
  - Now works correctly in GitHub Actions where absolute paths are used
  - Patterns like `.github/file.md` now match `/home/runner/work/repo/.github/file.md`

- **MD007 (ul-indent): Remove auto-switch to fixed indentation style** (fixes #209)
  - Fixed oscillation between MD005/MD007 when formatting mixed ordered/unordered lists
  - Previously, setting `indent = 3` would auto-switch to fixed style, causing conflicts
  - Text-aligned style (default) now correctly handles mixed lists, matching markdownlint behavior
  - `rumdl fmt` now converges in a single pass for all list configurations

### Performance

- **Core: Reduce memory allocations and improve cache reliability**
  - Optimized internal data structures for better memory efficiency


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.0.197-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.197/rumdl-v0.0.197-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.197/rumdl-v0.0.197-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.197-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.197/rumdl-v0.0.197-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.197/rumdl-v0.0.197-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.197-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.197/rumdl-v0.0.197-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.197/rumdl-v0.0.197-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.197-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.197/rumdl-v0.0.197-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.197/rumdl-v0.0.197-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.197-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.197/rumdl-v0.0.197-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.197/rumdl-v0.0.197-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.197-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.197/rumdl-v0.0.197-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.197/rumdl-v0.0.197-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.197-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.0.197/rumdl-v0.0.197-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.197/rumdl-v0.0.197-x86_64-pc-windows-msvc.zip.sha256) |

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

