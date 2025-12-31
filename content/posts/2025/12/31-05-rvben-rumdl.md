---
title: rumdl-action
date: 2025-12-31 05:32:29 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.0.207
dependentsNumber: "4"
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.0.207**.
- This action is used across all versions by **4** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter built with Rust to enforce consistency, best practices, and resolve common Markdown issues. It automates tasks like linting, formatting, and fixing Markdown files, offering speed, zero dependencies, and CI/CD integration for streamlined workflows. Key capabilities include 57 lint rules, configurable settings, intelligent caching, and compatibility with various installation methods and environments.

## Release notes


### Added

- **CLI: Add `--flavor` option to override markdown flavor**
  - New CLI flag allows overriding the markdown flavor for a single run
  - Options: `commonmark`, `gfm` (GitHub Flavored Markdown)
  - Useful for testing files against different markdown specifications

### Fixed

- **MD029: Respect CommonMark list start values and preserve user intent** (fixes #247)
  - Ordered lists starting at values other than 1 (e.g., `11.`, `12.`, `13.`) are now validated correctly
  - Auto-fix no longer destroys user intent by changing `11.` to `1.` in properly numbered lists
  - Lists with `start` attribute > 1 will warn but not auto-fix, preserving semantic numbering

- **WASM: Convert byte-based columns to character offsets for JavaScript**
  - Column positions in WASM output now use character offsets instead of byte offsets
  - Fixes incorrect highlighting in editors when files contain multi-byte UTF-8 characters

### Changed

- **Docs: Add mise as an installation option**
  - README now includes mise (formerly rtx) as an alternative installation method


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.0.207-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.207/rumdl-v0.0.207-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.207/rumdl-v0.0.207-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.207-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.207/rumdl-v0.0.207-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.207/rumdl-v0.0.207-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.207-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.207/rumdl-v0.0.207-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.207/rumdl-v0.0.207-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.207-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.207/rumdl-v0.0.207-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.207/rumdl-v0.0.207-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.207-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.207/rumdl-v0.0.207-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.207/rumdl-v0.0.207-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.207-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.207/rumdl-v0.0.207-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.207/rumdl-v0.0.207-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.207-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.0.207/rumdl-v0.0.207-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.207/rumdl-v0.0.207-x86_64-pc-windows-msvc.zip.sha256) |

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

