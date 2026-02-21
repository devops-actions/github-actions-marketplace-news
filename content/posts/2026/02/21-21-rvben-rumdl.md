---
title: rumdl-action
date: 2026-02-21 21:28:31 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.25
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.25**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The `rumdl` GitHub Action is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency and best practices in Markdown files. It automates tasks such as identifying and fixing common Markdown issues, supports multiple Markdown flavors, and provides detailed error reporting, making it ideal for CI/CD workflows and editor integrations. Its key capabilities include lightning-fast performance, zero dependencies, extensive configurability, and support for automatic formatting and linting.

## Release notes


### Fixed

- **MD044**: proper names inside HTML tag attribute values (e.g. `src="..."`, `href="..."`,
  `title="..."`) are no longer flagged as incorrectly capitalized. Text content between
  tags continues to be checked as usual ([#443](https://github.com/rvben/rumdl/issues/443))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.25-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.25/rumdl-v0.1.25-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.25/rumdl-v0.1.25-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.25-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.25/rumdl-v0.1.25-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.25/rumdl-v0.1.25-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.25-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.25/rumdl-v0.1.25-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.25/rumdl-v0.1.25-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.25-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.25/rumdl-v0.1.25-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.25/rumdl-v0.1.25-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.25-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.25/rumdl-v0.1.25-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.25/rumdl-v0.1.25-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.25-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.25/rumdl-v0.1.25-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.25/rumdl-v0.1.25-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.25-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.25/rumdl-v0.1.25-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.25/rumdl-v0.1.25-x86_64-pc-windows-msvc.zip.sha256) |

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

