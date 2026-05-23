---
title: rumdl-action
date: 2026-05-23 06:14:04 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.0
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.0**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The `rumdl` GitHub Action is a high-performance Markdown linter and formatter built in Rust, designed to ensure consistency and best practices in Markdown files. It automates tasks such as identifying and fixing common Markdown issues with 75 linting rules, providing automatic formatting, and supporting multiple Markdown flavors (e.g., GFM, MDX). With its fast performance, zero dependencies, and integration capabilities, it is ideal for CI/CD pipelines and developer workflows.

## What's Changed


### Added

- **lsp**: improve link completion ranking, ignores, and absolute paths ([0ac911e](https://github.com/rvben/rumdl/commit/0ac911ec4836803b57ddebf289f75d83fab31ac4))
- **flavor**: add support for MyST (Markedly Structured Text) (#637) ([3455840](https://github.com/rvben/rumdl/commit/3455840e1424961128cbfaddcd929f43eb60fda7))

### Fixed

- **md007**: close ordered-ancestor exemption leak across deeper nested quotes ([0fa6180](https://github.com/rvben/rumdl/commit/0fa61809228b8f3b9d6708a9f86d3943415f7018))
- **md007**: flag misindented top-level unordered list items ([f277892](https://github.com/rvben/rumdl/commit/f277892545500e5fddf839e41a0a2341cc18fd7d))
- **md007**: apply ordered-ancestor exemption only to genuinely nested sublists (#638) ([4c96cf7](https://github.com/rvben/rumdl/commit/4c96cf701b183c3842753aad5646e500b45b44d3))
- **md013**: reflow list-item prose in normalize mode without false length warnings (#639) ([0816967](https://github.com/rvben/rumdl/commit/08169672b6039a44bd57fab8f56bc1f9bd1c7a3c))
- **cross-file**: honor inline-disable and per-file-ignores on lint-cache fast path ([05c77e4](https://github.com/rvben/rumdl/commit/05c77e4f4b4003c3e62aec0ef7d0ec354fa87acf))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.0-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.0/rumdl-v0.2.0-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.0/rumdl-v0.2.0-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.0-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.0/rumdl-v0.2.0-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.0/rumdl-v0.2.0-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.0-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.0/rumdl-v0.2.0-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.0/rumdl-v0.2.0-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.0-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.0/rumdl-v0.2.0-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.0/rumdl-v0.2.0-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.0-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.0/rumdl-v0.2.0-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.0/rumdl-v0.2.0-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.0-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.0/rumdl-v0.2.0-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.0/rumdl-v0.2.0-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.0-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.0/rumdl-v0.2.0-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.0/rumdl-v0.2.0-x86_64-pc-windows-msvc.zip.sha256) |

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

