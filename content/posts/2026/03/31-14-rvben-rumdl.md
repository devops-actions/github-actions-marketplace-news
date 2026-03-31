---
title: rumdl-action
date: 2026-03-31 14:01:19 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.63
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.63**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter built in Rust, designed to ensure consistency and best practices in Markdown files. It automates tasks like identifying and fixing Markdown issues, supports multiple Markdown flavors, and provides detailed error reporting for CI/CD workflows. Its key capabilities include fast execution, automatic formatting, intelligent caching, and high configurability, making it an efficient tool for developers and content creators.

## What's Changed


### Added

- **md013**: treat parentheticals as semantic units in semantic-line-breaks reflow ([c250d34](https://github.com/rvben/rumdl/commit/c250d34d51ef076c115b154acb86b45d1e0d4f9f))

### Fixed

- **md013**: protect parenthetical groups from break-word splits and premature merging ([48e32aa](https://github.com/rvben/rumdl/commit/48e32aa803611b7f7d0edbdb4394a58a031b8447))
- **md013**: attach trailing clause punctuation to closing paren in slb reflow ([4dc60fd](https://github.com/rvben/rumdl/commit/4dc60fda458e5238345b5aeb59e983b6f3bbe520))
- make empty CHANGELOG entry a hard error in release verification ([875bff7](https://github.com/rvben/rumdl/commit/875bff7a8e1a7e41bdec30a9cf22fc78470d4dc3))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.63-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.63/rumdl-v0.1.63-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.63/rumdl-v0.1.63-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.63-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.63/rumdl-v0.1.63-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.63/rumdl-v0.1.63-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.63-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.63/rumdl-v0.1.63-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.63/rumdl-v0.1.63-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.63-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.63/rumdl-v0.1.63-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.63/rumdl-v0.1.63-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.63-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.63/rumdl-v0.1.63-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.63/rumdl-v0.1.63-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.63-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.63/rumdl-v0.1.63-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.63/rumdl-v0.1.63-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.63-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.63/rumdl-v0.1.63-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.63/rumdl-v0.1.63-x86_64-pc-windows-msvc.zip.sha256) |

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

