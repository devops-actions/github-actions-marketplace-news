---
title: rumdl-action
date: 2026-07-21 15:10:15 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.38
dependentsNumber: "7"
actionType: Composite
actionSummary: |
  rumdl is a high-performance Markdown linter and formatter written in Rust that offers speed, numerous lint rules, automatic formatting with --fix, zero dependencies, configurable TOML-based settings, support for multiple Markdown flavors, installation options via Cargo, npm, pip, uv, mise, Nix, Termux User Repository, pacman, and binary downloads. It compares well to markdownlint and provides modern CLI tools with detailed error reporting and CI/CD integration.
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.38**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter written in Rust that offers speed, numerous lint rules, automatic formatting with --fix, zero dependencies, configurable TOML-based settings, support for multiple Markdown flavors, installation options via Cargo, npm, pip, uv, mise, Nix, Termux User Repository, pacman, and binary downloads. It compares well to markdownlint and provides modern CLI tools with detailed error reporting and CI/CD integration.

## What's Changed


### Added

- **md044**: add ignore-frontmatter-fields option ([b664e5a](https://github.com/rvben/rumdl/commit/b664e5ac776963b18a52fc9fb7cead8287530e10))
- **config**: warn when an inline enable cannot re-enable a config-disabled rule ([a74a923](https://github.com/rvben/rumdl/commit/a74a92322d556967f61a1dde86c0f9649fed89e0))

### Fixed

- **md044**: stop flagging proper names inside frontmatter file paths ([35649d9](https://github.com/rvben/rumdl/commit/35649d9baf4d9452fbf0c669137e6c98280af9f3))
- **md022**: stop panicking when one blank-line requirement is unlimited ([8a25eb2](https://github.com/rvben/rumdl/commit/8a25eb2c9d76df171475b69a1f11f455a9bfdc60))
- **config**: report unknown option keys in inline configure-file comments ([8f4c0ea](https://github.com/rvben/rumdl/commit/8f4c0ea63e732abc52da7786abbabc53984fdf5c))
- **config**: apply markdownlint-configure-file when the comment spans lines ([7a023a5](https://github.com/rvben/rumdl/commit/7a023a58079876674ca99f67b7f4e68c29472c8f))
- **config**: honor booleans and alias keys in markdownlint-configure-file (#745) ([acefc19](https://github.com/rvben/rumdl/commit/acefc195b64003b3c1deef1dc9ac4c81b43f8bfa))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.38-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.38/rumdl-v0.2.38-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.38/rumdl-v0.2.38-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.38-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.38/rumdl-v0.2.38-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.38/rumdl-v0.2.38-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.38-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.38/rumdl-v0.2.38-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.38/rumdl-v0.2.38-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.38-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.38/rumdl-v0.2.38-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.38/rumdl-v0.2.38-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.38-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.38/rumdl-v0.2.38-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.38/rumdl-v0.2.38-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.38-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.38/rumdl-v0.2.38-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.38/rumdl-v0.2.38-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.38-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.38/rumdl-v0.2.38-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.38/rumdl-v0.2.38-x86_64-pc-windows-msvc.zip.sha256) |

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

