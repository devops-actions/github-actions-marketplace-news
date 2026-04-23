---
title: rumdl-action
date: 2026-04-23 05:54:42 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.80
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.80**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The **rumdl** GitHub Action is a high-performance Markdown linter and formatter, built with Rust, designed to ensure consistency and enforce best practices in Markdown files. It automates tasks such as identifying common Markdown issues, applying 71 lint rules, and optionally auto-fixing violations, all while offering fast execution and compatibility with multiple Markdown flavors (e.g., GFM, MkDocs, MDX). Its zero-dependency design, detailed error reporting, and CI/CD integration make it an efficient and user-friendly tool for maintaining high-quality Markdown documentation.

## What's Changed


### Added

- **wasm**: validate rule-config value types at parse time ([ab3d3d5](https://github.com/rvben/rumdl/commit/ab3d3d547eb58ac093f52a5678b65d59e6602541))
- **wasm**: honor exclude patterns via path-aware check() and fix() ([e578308](https://github.com/rvben/rumdl/commit/e578308978f04e582acedf014ff75b4890ceca44))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.80-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.80/rumdl-v0.1.80-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.80/rumdl-v0.1.80-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.80-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.80/rumdl-v0.1.80-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.80/rumdl-v0.1.80-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.80-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.80/rumdl-v0.1.80-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.80/rumdl-v0.1.80-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.80-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.80/rumdl-v0.1.80-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.80/rumdl-v0.1.80-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.80-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.80/rumdl-v0.1.80-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.80/rumdl-v0.1.80-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.80-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.80/rumdl-v0.1.80-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.80/rumdl-v0.1.80-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.80-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.80/rumdl-v0.1.80-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.80/rumdl-v0.1.80-x86_64-pc-windows-msvc.zip.sha256) |

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

