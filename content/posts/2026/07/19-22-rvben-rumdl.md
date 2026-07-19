---
title: rumdl-action
date: 2026-07-19 22:04:53 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.37
dependentsNumber: "7"
actionType: Composite
actionSummary: |
  **Summary:**
  
  rumdl is a high-performance Markdown linter and formatter built with Rust. It offers speed, extensive linting rules (76 in total), automatic formatting, and multiple Markdown flavors support. The action simplifies the process of checking and fixing markdown files, making it easier to maintain consistency across projects.
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.37**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

**Summary:**

rumdl is a high-performance Markdown linter and formatter built with Rust. It offers speed, extensive linting rules (76 in total), automatic formatting, and multiple Markdown flavors support. The action simplifies the process of checking and fixing markdown files, making it easier to maintain consistency across projects.

## What's Changed


### Added

- **reflow**: add atomic_spans configuration and refactor inline wrapping (#742) ([aeabec1](https://github.com/rvben/rumdl/commit/aeabec1070d6f87baa7d2e817c75c86047d7ad2a))

### Changed

- **BREAKING**: the MD013 `emphasis-spans` option is renamed to `atomic-spans` (default `true`), with inverted meaning (`emphasis-spans = true` is now `atomic-spans = false`). Configs setting the old key should migrate; it is no longer recognized

### Fixed

- **reflow**: keep code spans atomic when wrapping would collapse whitespace ([d43618b](https://github.com/rvben/rumdl/commit/d43618ba07a231eab8cf0babe9d170a38fc38986))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.37-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.37/rumdl-v0.2.37-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.37/rumdl-v0.2.37-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.37-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.37/rumdl-v0.2.37-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.37/rumdl-v0.2.37-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.37-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.37/rumdl-v0.2.37-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.37/rumdl-v0.2.37-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.37-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.37/rumdl-v0.2.37-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.37/rumdl-v0.2.37-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.37-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.37/rumdl-v0.2.37-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.37/rumdl-v0.2.37-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.37-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.37/rumdl-v0.2.37-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.37/rumdl-v0.2.37-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.37-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.37/rumdl-v0.2.37-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.37/rumdl-v0.2.37-x86_64-pc-windows-msvc.zip.sha256) |

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

