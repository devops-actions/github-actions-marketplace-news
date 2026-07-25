---
title: rumdl-action
date: 2026-07-25 06:41:53 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.43
dependentsNumber: "7"
actionType: Composite
actionSummary: |
  **Summary:**
  
  rumdl is a Rust-based high-performance Markdown linter and formatter designed to speed up linting and formatting processes. It provides over 78 lint rules covering common Markdown issues, supports multiple flavors, and offers automatic formatting with the `--fix` option. The action automates the linting and formatting of Markdown files in repositories, enhancing consistency and best practices.
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.43**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

**Summary:**

rumdl is a Rust-based high-performance Markdown linter and formatter designed to speed up linting and formatting processes. It provides over 78 lint rules covering common Markdown issues, supports multiple flavors, and offers automatic formatting with the `--fix` option. The action automates the linting and formatting of Markdown files in repositories, enhancing consistency and best practices.

## What's Changed


### Added

- **invisiblechars**: new rule MD084 for detecting invisible characters (#758) ([0a6354a](https://github.com/rvben/rumdl/commit/0a6354a7107d47a1c55c8fe5f26e7faafad996c0))

### Fixed

- **md084**: treat a zero width joiner between visible characters as presentation ([4fbb1cc](https://github.com/rvben/rumdl/commit/4fbb1cc1441ff3df6a9f8814271502fc3ad56add))
- **md084**: keep attached variation selectors in consecutive-character detection ([f4e9fd3](https://github.com/rvben/rumdl/commit/f4e9fd3c1ee21a514869fee3dc11a48c3d743b42))
- **md084**: don't flag variation selectors attached to a base character ([14941bb](https://github.com/rvben/rumdl/commit/14941bbbe4c4dd733b4b8c7356a542668a61d71b))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.43-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.43/rumdl-v0.2.43-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.43/rumdl-v0.2.43-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.43-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.43/rumdl-v0.2.43-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.43/rumdl-v0.2.43-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.43-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.43/rumdl-v0.2.43-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.43/rumdl-v0.2.43-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.43-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.43/rumdl-v0.2.43-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.43/rumdl-v0.2.43-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.43-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.43/rumdl-v0.2.43-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.43/rumdl-v0.2.43-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.43-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.43/rumdl-v0.2.43-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.43/rumdl-v0.2.43-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.43-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.43/rumdl-v0.2.43-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.43/rumdl-v0.2.43-x86_64-pc-windows-msvc.zip.sha256) |

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

