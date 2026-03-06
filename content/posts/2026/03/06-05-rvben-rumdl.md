---
title: rumdl-action
date: 2026-03-06 05:56:35 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.42
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.42**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The GitHub Action `rumdl` is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency, readability, and best practices in Markdown files. It automates tasks such as detecting and fixing common Markdown issues, providing detailed error reporting, and supporting multiple Markdown flavors with auto-detection. Its speed, zero dependencies, and CI/CD integration make it ideal for streamlining workflows and improving Markdown quality across projects.

## Release notes


### Fixed

- **MD013**: Disable code block line length checking for Rust doc comments.
  Code blocks in doc comments contain Rust code formatted by rustfmt
  (default `max_width = 100`), not prose governed by markdown line limits.
  Prose lines are still checked
  ([#486](https://github.com/rvben/rumdl/issues/486), reported by @sorairolake)


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.42-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.42/rumdl-v0.1.42-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.42/rumdl-v0.1.42-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.42-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.42/rumdl-v0.1.42-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.42/rumdl-v0.1.42-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.42-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.42/rumdl-v0.1.42-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.42/rumdl-v0.1.42-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.42-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.42/rumdl-v0.1.42-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.42/rumdl-v0.1.42-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.42-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.42/rumdl-v0.1.42-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.42/rumdl-v0.1.42-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.42-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.42/rumdl-v0.1.42-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.42/rumdl-v0.1.42-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.42-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.42/rumdl-v0.1.42-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.42/rumdl-v0.1.42-x86_64-pc-windows-msvc.zip.sha256) |

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

