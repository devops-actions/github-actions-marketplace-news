---
title: rumdl-action
date: 2026-03-05 05:55:19 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.40
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.40**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter built with Rust to ensure consistency, best practices, and improved developer experience when working with Markdown files. It automates tasks like detecting issues, applying formatting, and fixing violations, while offering configurable rules, support for multiple Markdown flavors, and compatibility with CI/CD workflows. Designed for speed, it provides fast linting and intelligent caching, making it ideal for large projects or editor integrations.

## Release notes


### Fixed

- **MkDocs**: Support multi-line code spans inside MkDocs containers
  (admonitions, content tabs, markdown HTML) — pulldown-cmark missed these
  because it treats 4-space-indented container content as indented code blocks.
  Replaced the per-line backtick scanner with a dedent-and-reparse approach
  that handles all CommonMark edge cases including nested containers
  ([#487](https://github.com/rvben/rumdl/issues/487), reported by @stefanvanburen)
- **MD034**: Fix code span filter to use byte offsets instead of single-line
  column checks, preventing false positives for URLs and emails inside
  multi-line code spans
- **MD052**: Fix code span filter to use byte offsets, preventing false
  positives for reference links inside multi-line code spans


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.40-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.40/rumdl-v0.1.40-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.40/rumdl-v0.1.40-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.40-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.40/rumdl-v0.1.40-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.40/rumdl-v0.1.40-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.40-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.40/rumdl-v0.1.40-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.40/rumdl-v0.1.40-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.40-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.40/rumdl-v0.1.40-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.40/rumdl-v0.1.40-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.40-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.40/rumdl-v0.1.40-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.40/rumdl-v0.1.40-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.40-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.40/rumdl-v0.1.40-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.40/rumdl-v0.1.40-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.40-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.40/rumdl-v0.1.40-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.40/rumdl-v0.1.40-x86_64-pc-windows-msvc.zip.sha256) |

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

