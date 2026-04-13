---
title: rumdl-action
date: 2026-04-13 22:09:56 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.71
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.71**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The `rumdl` GitHub Action is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency and best practices in Markdown files. It automates tasks such as identifying common Markdown issues, applying 71 lint rules, and fixing or formatting files while supporting multiple Markdown flavors (e.g., GFM, MkDocs, MDX). With its speed, zero dependencies, and CI/CD integration, it provides a robust and efficient tool for maintaining high-quality Markdown documentation.

## What's Changed


### Added

- **config**: support bare rule name in rumdl config get ([8369fb1](https://github.com/rvben/rumdl/commit/8369fb1b4bec52649ea880556075e48845e0b833))

### Fixed

- **config**: move test module to end of flavor.rs to satisfy clippy items_after_test_module ([e30714d](https://github.com/rvben/rumdl/commit/e30714d0c2b9840dc13e1bde3dcc31a05f2226e1))
- **config**: load user config alongside discovered markdownlint project config ([c0f79c1](https://github.com/rvben/rumdl/commit/c0f79c195ff6a7490072dc7209f9703ec99cb97e))
- **config**: display global.flavor as lowercase quoted string in rumdl config output ([b162295](https://github.com/rvben/rumdl/commit/b16229569551ced22026508bc45b28c08a83a166))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.71-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.71/rumdl-v0.1.71-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.71/rumdl-v0.1.71-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.71-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.71/rumdl-v0.1.71-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.71/rumdl-v0.1.71-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.71-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.71/rumdl-v0.1.71-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.71/rumdl-v0.1.71-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.71-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.71/rumdl-v0.1.71-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.71/rumdl-v0.1.71-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.71-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.71/rumdl-v0.1.71-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.71/rumdl-v0.1.71-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.71-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.71/rumdl-v0.1.71-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.71/rumdl-v0.1.71-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.71-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.71/rumdl-v0.1.71-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.71/rumdl-v0.1.71-x86_64-pc-windows-msvc.zip.sha256) |

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

