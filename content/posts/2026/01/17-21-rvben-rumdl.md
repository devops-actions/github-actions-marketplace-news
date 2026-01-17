---
title: rumdl-action
date: 2026-01-17 21:24:42 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.0.220
dependentsNumber: "14"
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.0.220**.
- This action is used across all versions by **14** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The GitHub Action "rumdl" is a high-performance linter and formatter for Markdown files, built with Rust for speed and efficiency. It automates the detection and correction of common Markdown issues, ensuring consistent formatting and adherence to best practices. Key features include 57 linting rules, automatic formatting with fix options, detailed error reporting, and compatibility with CI/CD workflows.

## Release notes


### Added

- **`RUMDL_OUTPUT_FORMAT` environment variable** ([#297](https://github.com/rvben/rumdl/issues/297))
  - Override output format in CI/CD without modifying config files
  - Precedence: CLI flag → env var → config → default
  - Example: `RUMDL_OUTPUT_FORMAT=github rumdl check .`

### Fixed

- **MD050: Skip math blocks to avoid false positives in Quarto**
  - LaTeX subscripts (`x_1`) and exponentiation (`a**b`) were incorrectly flagged as strong emphasis
  - Now correctly skips content inside `$$...$$` math blocks

### Changed

- **Documentation: Clarify CommonMark 0.31.2 spec version** ([#298](https://github.com/rvben/rumdl/issues/298))
  - Explicitly document that rumdl uses CommonMark 0.31.2 via pulldown-cmark
  - Clarify that `standard` flavor includes GFM extensions (tables, task lists, strikethrough, autolinks)
  - Document `commonmark` as alias for `standard`, `github` as alias for `gfm`
  - Add `output-format` setting documentation with all 12 available formats


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.0.220-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.220/rumdl-v0.0.220-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.220/rumdl-v0.0.220-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.220-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.220/rumdl-v0.0.220-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.220/rumdl-v0.0.220-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.220-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.220/rumdl-v0.0.220-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.220/rumdl-v0.0.220-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.220-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.220/rumdl-v0.0.220-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.220/rumdl-v0.0.220-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.220-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.220/rumdl-v0.0.220-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.220/rumdl-v0.0.220-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.220-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.220/rumdl-v0.0.220-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.220/rumdl-v0.0.220-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.220-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.0.220/rumdl-v0.0.220-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.220/rumdl-v0.0.220-x86_64-pc-windows-msvc.zip.sha256) |

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

