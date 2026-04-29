---
title: rumdl-action
date: 2026-04-29 06:07:48 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.84
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.84**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The GitHub Action "rumdl" is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency and best practices in Markdown files. It automates tasks such as linting, formatting, and fixing Markdown issues, offering speed, configurability, and support for multiple Markdown flavors. Ideal for CI/CD workflows, it provides detailed error reporting, zero dependencies, and intelligent caching for efficient file processing.

## What's Changed


### Added

- **md054**: atomic ref-emit fixes via Fix.additional_edits ([d1b757c](https://github.com/rvben/rumdl/commit/d1b757c5c48c2e891eeea67d1d98de9dde833054))

### Fixed

- **md054,lsp**: exact EOL counting and UTF-16 LSP positions ([b8488b5](https://github.com/rvben/rumdl/commit/b8488b5b109d51696dabd2f460e31f5e272e9a4a))
- **fix_utils**: preserve source order for same-offset zero-width inserts ([06b786c](https://github.com/rvben/rumdl/commit/06b786cdd39a90342db3b41763fff8b32735615d))
- **md064**: skip column-aligned list blocks ([0175b7c](https://github.com/rvben/rumdl/commit/0175b7cb690f2d1f642a80337ec6c65786721c86))
- **md046**: recognize list-internal indented code blocks ([476c8d8](https://github.com/rvben/rumdl/commit/476c8d8b5b1b9fae29fd761d50629a5465c40f8d))
- **md036**: default fix=true to match advertised FullyFixable capability ([3faac50](https://github.com/rvben/rumdl/commit/3faac5053f8ca66f66bbaf9ebd6259c02efae5b5))
- **md076**: prefer tight on Consistent style ties ([8ed1e30](https://github.com/rvben/rumdl/commit/8ed1e30193596748b0550278c0309eaa66aacb09))
- **lsp**: canonicalize rule-name lists at Config boundaries ([51932d9](https://github.com/rvben/rumdl/commit/51932d9dd68412868a110178a668789c73fb0938))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.84-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.84/rumdl-v0.1.84-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.84/rumdl-v0.1.84-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.84-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.84/rumdl-v0.1.84-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.84/rumdl-v0.1.84-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.84-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.84/rumdl-v0.1.84-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.84/rumdl-v0.1.84-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.84-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.84/rumdl-v0.1.84-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.84/rumdl-v0.1.84-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.84-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.84/rumdl-v0.1.84-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.84/rumdl-v0.1.84-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.84-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.84/rumdl-v0.1.84-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.84/rumdl-v0.1.84-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.84-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.84/rumdl-v0.1.84-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.84/rumdl-v0.1.84-x86_64-pc-windows-msvc.zip.sha256) |

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

