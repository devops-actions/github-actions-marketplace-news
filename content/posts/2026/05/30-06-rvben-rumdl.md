---
title: rumdl-action
date: 2026-05-30 06:32:12 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.4
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.4**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

**Summary:**  
The `rumdl` GitHub Action is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency and best practices in Markdown files. It automates the detection and correction of common Markdown issues, supports multiple Markdown flavors, and provides configurable linting rules with zero dependencies. Its key capabilities include rapid processing, automatic formatting, detailed error reporting, and seamless integration into CI/CD workflows.

## What's Changed


### Fixed

- **md060**: apply aligned-delimiter when a table auto-compacts past max-width ([663f4ba](https://github.com/rvben/rumdl/commit/663f4babbb24102bd80924c2d31c9bd7005c61e7))
- **md034**: don't flag URL arguments of MyST colon directives ([d55ed20](https://github.com/rvben/rumdl/commit/d55ed20eab6a5b7d17f53976af53c019e4d3b0c1))
- **embedded**: gate markdown code block formatting behind code-block-tools opt-in ([bd23ad1](https://github.com/rvben/rumdl/commit/bd23ad15e02499100f9d76ed24e9aae16b8750b6))
- **md046**: treat MyST directive body as directive, not indented code block ([060bae2](https://github.com/rvben/rumdl/commit/060bae2292c7e25805abc1d86de709252c607641))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.4-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.4/rumdl-v0.2.4-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.4/rumdl-v0.2.4-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.4-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.4/rumdl-v0.2.4-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.4/rumdl-v0.2.4-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.4-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.4/rumdl-v0.2.4-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.4/rumdl-v0.2.4-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.4-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.4/rumdl-v0.2.4-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.4/rumdl-v0.2.4-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.4-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.4/rumdl-v0.2.4-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.4/rumdl-v0.2.4-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.4-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.4/rumdl-v0.2.4-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.4/rumdl-v0.2.4-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.4-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.4/rumdl-v0.2.4-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.4/rumdl-v0.2.4-x86_64-pc-windows-msvc.zip.sha256) |

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

