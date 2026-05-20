---
title: rumdl-action
date: 2026-05-20 07:00:48 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.95
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.95**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The `rumdl` GitHub Action is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency and best practices in Markdown files. It automates tasks like linting, formatting, and auto-fixing Markdown issues, offering comprehensive support for multiple Markdown flavors and 74 customizable linting rules. With its speed, zero dependencies, and CI/CD-friendly design, it streamlines the process of maintaining clean and standardized Markdown across projects.

## What's Changed


### Added

- **md010**: add code_blocks config option, consistent code-block handling (#630) ([b98ca52](https://github.com/rvben/rumdl/commit/b98ca52b73cecd923c03ce98f505a5afefe20435))
- **md010**: add code_blocks config option (default false) ([2c95e17](https://github.com/rvben/rumdl/commit/2c95e1786a1aaf63af8c767f57b469c146982ae7))

### Fixed

- **md010**: treat fenced and indented code blocks consistently (#630) ([435df34](https://github.com/rvben/rumdl/commit/435df34db542402a2e2f07db12308391bf41a032))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.95-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.95/rumdl-v0.1.95-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.95/rumdl-v0.1.95-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.95-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.95/rumdl-v0.1.95-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.95/rumdl-v0.1.95-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.95-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.95/rumdl-v0.1.95-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.95/rumdl-v0.1.95-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.95-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.95/rumdl-v0.1.95-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.95/rumdl-v0.1.95-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.95-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.95/rumdl-v0.1.95-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.95/rumdl-v0.1.95-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.95-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.95/rumdl-v0.1.95-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.95/rumdl-v0.1.95-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.95-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.95/rumdl-v0.1.95-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.95/rumdl-v0.1.95-x86_64-pc-windows-msvc.zip.sha256) |

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

