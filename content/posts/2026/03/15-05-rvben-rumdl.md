---
title: rumdl-action
date: 2026-03-15 05:56:44 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.51
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.51**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency and best practices in Markdown files. It automates tasks such as detecting and fixing common Markdown issues, supporting multiple Markdown flavors, and providing detailed error reporting while optimizing for speed and ease of use. Key capabilities include 71 lint rules, automatic formatting, highly configurable settings, and compatibility with CI/CD pipelines and various installation methods.

## Release notes


### Fixed

- **Code block tools**: Ignore `BrokenPipe` when writing to tool stdin, fixing intermittent failures with tools that exit before consuming input (e.g., linters that validate without reading fully)

### Changed

- **MD076**: Continuation content detection now verifies indentation matches the parent list item's content column, preventing false exemptions with under-indented text


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.51-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.51/rumdl-v0.1.51-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.51/rumdl-v0.1.51-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.51-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.51/rumdl-v0.1.51-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.51/rumdl-v0.1.51-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.51-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.51/rumdl-v0.1.51-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.51/rumdl-v0.1.51-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.51-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.51/rumdl-v0.1.51-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.51/rumdl-v0.1.51-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.51-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.51/rumdl-v0.1.51-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.51/rumdl-v0.1.51-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.51-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.51/rumdl-v0.1.51-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.51/rumdl-v0.1.51-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.51-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.51/rumdl-v0.1.51-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.51/rumdl-v0.1.51-x86_64-pc-windows-msvc.zip.sha256) |

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

