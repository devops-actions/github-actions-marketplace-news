---
title: rumdl-action
date: 2026-07-15 06:43:51 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.34
dependentsNumber: "6"
actionType: Composite
actionSummary: |
  **Summary:**
  rumdl is a high-performance, Rust-based Markdown linter and formatter that offers speed, extensive lint rules, automatic formatting with `--fix`, zero dependencies, and multiple installation options. It supports various Markdown flavors and provides detailed error reporting, making it suitable for projects requiring consistent and best-practice markdown files.
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.34**.

- This action is used across all versions by **6** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

**Summary:**
rumdl is a high-performance, Rust-based Markdown linter and formatter that offers speed, extensive lint rules, automatic formatting with `--fix`, zero dependencies, and multiple installation options. It supports various Markdown flavors and provides detailed error reporting, making it suitable for projects requiring consistent and best-practice markdown files.

## What's Changed


### Added

- **code-block-tools**: restore shuck as a built-in shell linter ([da66447](https://github.com/rvben/rumdl/commit/da66447ae2bea9186c436039111bd161f3e95ba2))

### Performance

- **reflow**: probe inline math at the cursor instead of rescanning the suffix ([1e6ea3b](https://github.com/rvben/rumdl/commit/1e6ea3b5fada915dd2bde693af058a51afec501a))
- **reflow**: merge emphasis and code span extraction into a single cmark pass ([8e03537](https://github.com/rvben/rumdl/commit/8e035377b4971f04701cb4b0fefbbebf84844ddd))
- **reflow**: optimize MyST inline role parsing using pre-extracted code spans ([e966899](https://github.com/rvben/rumdl/commit/e966899cd377e41e54941949ae0f9c50afb89874))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.34-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.34/rumdl-v0.2.34-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.34/rumdl-v0.2.34-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.34-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.34/rumdl-v0.2.34-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.34/rumdl-v0.2.34-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.34-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.34/rumdl-v0.2.34-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.34/rumdl-v0.2.34-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.34-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.34/rumdl-v0.2.34-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.34/rumdl-v0.2.34-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.34-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.34/rumdl-v0.2.34-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.34/rumdl-v0.2.34-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.34-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.34/rumdl-v0.2.34-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.34/rumdl-v0.2.34-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.34-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.34/rumdl-v0.2.34-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.34/rumdl-v0.2.34-x86_64-pc-windows-msvc.zip.sha256) |

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

