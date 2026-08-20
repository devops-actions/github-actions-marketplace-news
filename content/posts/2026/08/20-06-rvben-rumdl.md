---
title: rumdl-action
date: 2026-08-20 06:26:10 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.58
dependentsNumber: "7"
actionType: Composite
actionSummary: |
  **Summary:**
  
  rumdl is a high-performance Markdown linter and formatter written in Rust, designed for speed with built-in lint rules covering common Markdown issues. It offers automatic formatting with the `--fix` option and supports multiple Markdown flavors including GFM, MkDocs, MDX, Quarto, and MyST, with auto-detection. It provides configuration via TOML files and is available for installation using Cargo, npm, pip, uv, mise, Nix, Termux User Repository, and pacman (Arch Linux), making it compatible with various workflows and environments.
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.58**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

**Summary:**

rumdl is a high-performance Markdown linter and formatter written in Rust, designed for speed with built-in lint rules covering common Markdown issues. It offers automatic formatting with the `--fix` option and supports multiple Markdown flavors including GFM, MkDocs, MDX, Quarto, and MyST, with auto-detection. It provides configuration via TOML files and is available for installation using Cargo, npm, pip, uv, mise, Nix, Termux User Repository, and pacman (Arch Linux), making it compatible with various workflows and environments.

## What's Changed


### Added

- **wasm**: load extends chains from embedder-supplied config files ([e7c7d8f](https://github.com/rvben/rumdl/commit/e7c7d8f9fa64f1a74195f52cae9d328a8fae9389))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.58-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.58/rumdl-v0.2.58-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.58/rumdl-v0.2.58-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.58-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.58/rumdl-v0.2.58-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.58/rumdl-v0.2.58-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.58-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.58/rumdl-v0.2.58-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.58/rumdl-v0.2.58-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.58-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.58/rumdl-v0.2.58-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.58/rumdl-v0.2.58-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.58-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.58/rumdl-v0.2.58-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.58/rumdl-v0.2.58-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.58-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.58/rumdl-v0.2.58-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.58/rumdl-v0.2.58-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.58-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.58/rumdl-v0.2.58-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.58/rumdl-v0.2.58-x86_64-pc-windows-msvc.zip.sha256) |

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

