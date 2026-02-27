---
title: rumdl-action
date: 2026-02-27 21:26:04 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.31
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.31**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter built with Rust to ensure consistency and best practices in Markdown files. It automates tasks like linting, formatting, and fixing common Markdown issues while supporting multiple Markdown flavors and offering detailed error reporting. With its speed, zero dependencies, and CI/CD-friendly features, rumdl simplifies Markdown file management for developers and teams.

## Release notes


### Fixed

- **MD013**: Handle MkDocs admonitions inside list items during reflow. Admonition
  headers and body content are now preserved and reflowed correctly instead of being
  treated as plain paragraph text. Body indent is derived from actual content lines
  rather than hardcoded, supporting nested admonitions
  ([#469](https://github.com/rvben/rumdl/issues/469))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.31-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.31/rumdl-v0.1.31-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.31/rumdl-v0.1.31-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.31-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.31/rumdl-v0.1.31-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.31/rumdl-v0.1.31-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.31-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.31/rumdl-v0.1.31-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.31/rumdl-v0.1.31-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.31-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.31/rumdl-v0.1.31-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.31/rumdl-v0.1.31-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.31-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.31/rumdl-v0.1.31-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.31/rumdl-v0.1.31-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.31-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.31/rumdl-v0.1.31-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.31/rumdl-v0.1.31-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.31-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.31/rumdl-v0.1.31-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.31/rumdl-v0.1.31-x86_64-pc-windows-msvc.zip.sha256) |

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

