---
title: rumdl-action
date: 2026-03-19 21:47:54 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.55
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.55**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

**Summary:**  
The `rumdl` GitHub Action is a high-performance Markdown linter and formatter built with Rust. It automates the detection and correction of common Markdown issues, ensuring consistency and adherence to best practices across multiple Markdown flavors (e.g., GFM, MDX). With 71 lint rules, automatic formatting capabilities, zero dependencies, and fast performance, it simplifies tasks such as quality control in CI/CD pipelines, while being highly configurable and developer-friendly.

## Release notes


### Fixed

- **MD064**: Fixed false positives inside indented fenced code blocks when `---` horizontal rules appear later in the document ([#536](https://github.com/rvben/rumdl/issues/536))
  - Replaced `Options::all()` with an explicit pulldown-cmark option allowlist, excluding `ENABLE_YAML_STYLE_METADATA_BLOCKS` which misinterprets `---` horizontal rules as YAML metadata delimiters (works around [pulldown-cmark#1000](https://github.com/pulldown-cmark/pulldown-cmark/issues/1000))
  - rumdl handles front matter detection independently and correctly (requires `---` at line 1, not anywhere in the document)


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.55-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.55/rumdl-v0.1.55-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.55/rumdl-v0.1.55-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.55-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.55/rumdl-v0.1.55-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.55/rumdl-v0.1.55-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.55-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.55/rumdl-v0.1.55-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.55/rumdl-v0.1.55-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.55-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.55/rumdl-v0.1.55-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.55/rumdl-v0.1.55-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.55-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.55/rumdl-v0.1.55-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.55/rumdl-v0.1.55-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.55-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.55/rumdl-v0.1.55-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.55/rumdl-v0.1.55-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.55-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.55/rumdl-v0.1.55-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.55/rumdl-v0.1.55-x86_64-pc-windows-msvc.zip.sha256) |

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

