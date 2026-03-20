---
title: rumdl-action
date: 2026-03-20 05:49:23 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.56
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.56**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The GitHub Action "rumdl" is a high-performance Markdown linter and formatter built with Rust. It automates the detection and correction of inconsistencies and common issues in Markdown files, offering features such as 71 linting rules, automatic formatting and fixes, and support for multiple Markdown flavors like GFM and MDX. Designed for speed, it is highly configurable, CI/CD-friendly, and provides a modern, dependency-free solution for maintaining clean and consistent Markdown in projects.

## Release notes


### Added

- **MD057**: Obsidian attachment folder auto-detection when `flavor = "obsidian"` is set — supports all 4 Obsidian attachment modes (vault root, named folder, same as file, subfolder under file) ([#537](https://github.com/rvben/rumdl/issues/537))
- **MD057**: New `search-paths` config option for specifying additional directories to search when resolving relative links


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.56-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.56/rumdl-v0.1.56-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.56/rumdl-v0.1.56-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.56-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.56/rumdl-v0.1.56-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.56/rumdl-v0.1.56-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.56-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.56/rumdl-v0.1.56-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.56/rumdl-v0.1.56-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.56-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.56/rumdl-v0.1.56-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.56/rumdl-v0.1.56-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.56-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.56/rumdl-v0.1.56-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.56/rumdl-v0.1.56-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.56-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.56/rumdl-v0.1.56-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.56/rumdl-v0.1.56-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.56-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.56/rumdl-v0.1.56-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.56/rumdl-v0.1.56-x86_64-pc-windows-msvc.zip.sha256) |

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

