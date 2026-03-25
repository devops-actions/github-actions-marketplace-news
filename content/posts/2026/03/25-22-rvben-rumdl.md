---
title: rumdl-action
date: 2026-03-25 22:16:16 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.60
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.60**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

**Summary:**  
The `rumdl` GitHub Action is a high-performance Markdown linter and formatter built with Rust. It automates the process of detecting and fixing common Markdown issues, ensuring consistent formatting and adherence to best practices. With features like 71 lint rules, support for multiple Markdown flavors, automatic formatting, detailed error reporting, and CI/CD integration, it offers a fast, configurable, and dependency-free solution for maintaining high-quality Markdown files.

## Release notes



### Fixed

- **MD007**: Fix `start_indented` not respecting text-aligned indentation for unordered lists nested under ordered lists ([#541](https://github.com/rvben/rumdl/issues/541))

### Changed

- Normalize documentation URLs to lowercase for consistent paths
- Fix broken links: VS Code marketplace publisher ID, Ruff docs URL, deprecated rule references
- Add Cloudflare Pages redirects for backward compatibility
- Add lychee link checker to CI for pre-deploy link validation (thanks @sglre6355 in [#542](https://github.com/rvben/rumdl/pull/542))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.60-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.60/rumdl-v0.1.60-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.60/rumdl-v0.1.60-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.60-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.60/rumdl-v0.1.60-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.60/rumdl-v0.1.60-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.60-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.60/rumdl-v0.1.60-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.60/rumdl-v0.1.60-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.60-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.60/rumdl-v0.1.60-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.60/rumdl-v0.1.60-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.60-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.60/rumdl-v0.1.60-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.60/rumdl-v0.1.60-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.60-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.60/rumdl-v0.1.60-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.60/rumdl-v0.1.60-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.60-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.60/rumdl-v0.1.60-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.60/rumdl-v0.1.60-x86_64-pc-windows-msvc.zip.sha256) |

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

