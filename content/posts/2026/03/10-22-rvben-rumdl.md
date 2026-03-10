---
title: rumdl-action
date: 2026-03-10 22:03:33 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.45
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.45**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The `rumdl` GitHub Action is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency and best practices in Markdown files. It automates tasks such as linting, formatting, and auto-fixing violations, offering fast performance, extensive linting rules, and support for multiple Markdown flavors. Ideal for CI/CD workflows, it provides detailed error reporting, caching for efficient re-linting, and a modern CLI experience.

## Release notes


### Added

- **MD013**: New `require-sentence-capital` option for sentence-per-line and semantic-line-breaks reflow modes. When set to `false`, periods are recognized as sentence boundaries without requiring an uppercase letter afterward ([#514](https://github.com/rvben/rumdl/issues/514))
- **MD013**: `!` and `?` are now always recognized as sentence boundaries regardless of the `require-sentence-capital` setting
- **MD013**: Single-letter initial detection (e.g., "J. K. Rowling") to prevent false sentence splits
- **MD013**: Expanded default abbreviation list with: vs, fig, no, vol, ch, sec, al

### Fixed

- **MD044**: Names inside backtick code spans in YAML frontmatter are no longer flagged when `code_blocks = false` ([#513](https://github.com/rvben/rumdl/issues/513))
- **MD051**: HTML/JSX tags in headings (e.g., `<Component />`, `<span>text</span>`) are now stripped before anchor generation, preventing false-positive broken link warnings ([#510](https://github.com/rvben/rumdl/issues/510))
- **MD032**: Complex nested lists with continuation paragraphs at parent indent levels are no longer incorrectly split into separate lists ([#512](https://github.com/rvben/rumdl/issues/512))
- **npm**: Binary downloaded from npm registry is now automatically made executable on macOS/Linux, fixing "permission denied" errors ([#511](https://github.com/rvben/rumdl/issues/511))

### Changed

- CI npm tests no longer pre-fix binary permissions, ensuring the auto-chmod logic is properly tested
- Release workflow test job now includes a lint step


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.45-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.45/rumdl-v0.1.45-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.45/rumdl-v0.1.45-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.45-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.45/rumdl-v0.1.45-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.45/rumdl-v0.1.45-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.45-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.45/rumdl-v0.1.45-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.45/rumdl-v0.1.45-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.45-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.45/rumdl-v0.1.45-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.45/rumdl-v0.1.45-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.45-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.45/rumdl-v0.1.45-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.45/rumdl-v0.1.45-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.45-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.45/rumdl-v0.1.45-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.45/rumdl-v0.1.45-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.45-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.45/rumdl-v0.1.45-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.45/rumdl-v0.1.45-x86_64-pc-windows-msvc.zip.sha256) |

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

