---
title: rumdl-action
date: 2026-04-10 22:00:51 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.69
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.69**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The `rumdl` GitHub Action is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency and best practices in Markdown files. It automates the detection and correction of common Markdown issues, supports multiple Markdown flavors, and provides features like automatic formatting, detailed error reporting, and CI/CD integration. With its speed, configurability, and zero-dependency design, it is a robust solution for maintaining high-quality Markdown documentation.

## What's Changed


### Fixed

- **MD055,MD056**: emit per-row fixes to preserve inline-disabled rows ([099443f](https://github.com/rvben/rumdl/commit/099443ff13a00de1d6cd53fdeaa6d724daff1eb2))
- **MD073**: make should_skip case-insensitive to match detect_toc_region ([3d5ad7b](https://github.com/rvben/rumdl/commit/3d5ad7b6c544a943d4a57ee5b1c0248cd1864b18))
- **MD050**: use skip-context-aware detection for consistent mode target style ([a82362d](https://github.com/rvben/rumdl/commit/a82362dc29eaaaf9db7d834205fb137d9bc807e4))
- **MD044**: use byte-based Fix range to handle multi-byte content on line ([e85e032](https://github.com/rvben/rumdl/commit/e85e0327bc407db3f86cbece302e384282f0e45e))
- apply_warning_fixes returns content unchanged when no fixes present ([a892a90](https://github.com/rvben/rumdl/commit/a892a907b77010c3d3650a30983278c99939dd79))
- **md013**: reflow overlong single-line normalize content ([cfa6954](https://github.com/rvben/rumdl/commit/cfa69540fd570c1e6f59d59f6ec52c2b89e5422a))
- **MD055**: preserve trailing newline in check() Fix replacement for end-of-document tables ([7cebfcb](https://github.com/rvben/rumdl/commit/7cebfcb9690763c31920c12e753553f65bd1350e))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.69-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.69/rumdl-v0.1.69-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.69/rumdl-v0.1.69-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.69-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.69/rumdl-v0.1.69-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.69/rumdl-v0.1.69-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.69-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.69/rumdl-v0.1.69-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.69/rumdl-v0.1.69-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.69-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.69/rumdl-v0.1.69-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.69/rumdl-v0.1.69-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.69-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.69/rumdl-v0.1.69-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.69/rumdl-v0.1.69-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.69-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.69/rumdl-v0.1.69-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.69/rumdl-v0.1.69-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.69-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.69/rumdl-v0.1.69-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.69/rumdl-v0.1.69-x86_64-pc-windows-msvc.zip.sha256) |

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

