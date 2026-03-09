---
title: rumdl-action
date: 2026-03-09 21:48:47 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.44
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.44**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter built with Rust to ensure consistency and best practices in Markdown files. It automates tasks such as formatting and error checking, supports multiple Markdown flavors, and provides 71 lint rules to catch common issues. Designed for speed and CI/CD workflows, it offers a modern CLI, automatic fixes, and intelligent caching for efficient operation.

## Release notes


### Fixed

- **MD007**: Accept both text-aligned and fixed indent under ordered parents,
  resolving false positives with 4-space indentation config
  ([#504](https://github.com/rvben/rumdl/issues/504))
- **MD007**: Use accepted indent for stored content column, fixing inconsistent
  indent detection in nested lists
- **MD013/MD032/MD046**: Suppress false positives inside JSX component blocks
  (thanks @anaxite)
- **MD032**: Recognize parent-level continuation after nested list items,
  preventing false positive when a list continuation follows a nested item
  ([#507](https://github.com/rvben/rumdl/issues/507))
- **LSP**: Skip documentation URLs for code-block-tool warnings, avoiding
  invalid links like `https://rumdl.dev/jq/`
  ([#505](https://github.com/rvben/rumdl/issues/505))
- **LSP**: Plumb `source_file` through `lint()` for path-dependent rules
- **Code block tools**: Include all output lines in generic fallback
  diagnostics, providing full context from tools like `tombi`
  ([#506](https://github.com/rvben/rumdl/issues/506))

### Changed

- **Code block tools**: Classify `jq` as both linter and formatter


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.44-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.44/rumdl-v0.1.44-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.44/rumdl-v0.1.44-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.44-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.44/rumdl-v0.1.44-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.44/rumdl-v0.1.44-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.44-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.44/rumdl-v0.1.44-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.44/rumdl-v0.1.44-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.44-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.44/rumdl-v0.1.44-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.44/rumdl-v0.1.44-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.44-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.44/rumdl-v0.1.44-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.44/rumdl-v0.1.44-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.44-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.44/rumdl-v0.1.44-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.44/rumdl-v0.1.44-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.44-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.44/rumdl-v0.1.44-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.44/rumdl-v0.1.44-x86_64-pc-windows-msvc.zip.sha256) |

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

