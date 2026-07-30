---
title: rumdl-action
date: 2026-07-30 06:53:24 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.46
dependentsNumber: "7"
actionType: Composite
actionSummary: |
  **Summary:**
  rumdl is a high-performance Markdown linter and formatter written in Rust, designed for speed with built-in rules covering common Markdown issues. It supports multiple Markdown flavors and offers automatic formatting with a CLI interface, making it suitable for both development and CI/CD pipelines.
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.46**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

**Summary:**
rumdl is a high-performance Markdown linter and formatter written in Rust, designed for speed with built-in rules covering common Markdown issues. It supports multiple Markdown flavors and offers automatic formatting with a CLI interface, making it suitable for both development and CI/CD pipelines.

## What's Changed


### Fixed

- **discovery**: stop reading gitignores above the repository root ([2ff6e98](https://github.com/rvben/rumdl/commit/2ff6e98189a70937e924f92b3111c0c38d7041ae))
- **cli**: lint markdown files whose extension is capitalized ([baece97](https://github.com/rvben/rumdl/commit/baece97c34fdbdfb26b4b5f59f52ee678d62a0de))
- **cli**: report why a run checked no markdown files ([f0a0c61](https://github.com/rvben/rumdl/commit/f0a0c61b7946720bbe5c66c582975944cf260628))
- **md013**: keep a quoted question inside its sentence when splitting ([2cef5ec](https://github.com/rvben/rumdl/commit/2cef5ece7c8a554ee1a44542a07a00d635b89ec8))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.46-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.46/rumdl-v0.2.46-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.46/rumdl-v0.2.46-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.46-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.46/rumdl-v0.2.46-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.46/rumdl-v0.2.46-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.46-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.46/rumdl-v0.2.46-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.46/rumdl-v0.2.46-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.46-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.46/rumdl-v0.2.46-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.46/rumdl-v0.2.46-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.46-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.46/rumdl-v0.2.46-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.46/rumdl-v0.2.46-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.46-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.46/rumdl-v0.2.46-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.46/rumdl-v0.2.46-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.46-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.46/rumdl-v0.2.46-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.46/rumdl-v0.2.46-x86_64-pc-windows-msvc.zip.sha256) |

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

