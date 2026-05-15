---
title: rumdl-action
date: 2026-05-15 06:31:43 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.92
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.92**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency and best practices in Markdown files. It automates tasks such as identifying and fixing common Markdown issues using 71 lint rules, supports multiple Markdown flavors, and offers fast performance with zero runtime dependencies. This tool is ideal for developers seeking a modern, configurable, and CI/CD-friendly solution for maintaining clean and standardized Markdown documentation.

## What's Changed


### Added

- **config**: accept [rules.X] wrapper as alias for [X] ([229ff7d](https://github.com/rvben/rumdl/commit/229ff7de14afa950991f42265860fc1da54ef6c8))

### Fixed

- **md060**: accept single-space empty cells in compact style ([9518a81](https://github.com/rvben/rumdl/commit/9518a815f272822dd0e208f87c81c001e90689e8))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.92-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.92/rumdl-v0.1.92-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.92/rumdl-v0.1.92-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.92-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.92/rumdl-v0.1.92-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.92/rumdl-v0.1.92-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.92-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.92/rumdl-v0.1.92-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.92/rumdl-v0.1.92-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.92-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.92/rumdl-v0.1.92-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.92/rumdl-v0.1.92-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.92-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.92/rumdl-v0.1.92-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.92/rumdl-v0.1.92-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.92-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.92/rumdl-v0.1.92-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.92/rumdl-v0.1.92-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.92-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.92/rumdl-v0.1.92-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.92/rumdl-v0.1.92-x86_64-pc-windows-msvc.zip.sha256) |

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

