---
title: rumdl-action
date: 2026-08-06 06:27:42 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.52
dependentsNumber: "7"
actionType: Composite
actionSummary: |
  rumdl is a fast and efficient Markdown linter and formatter written in Rust, offering over 80 lint rules to ensure consistency and best practices in Markdown files. It provides automatic formatting with the `--fix` option and supports multiple Markdown flavors, including GFM, MkDocs, MDX, Quarto, and MyST.
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.52**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a fast and efficient Markdown linter and formatter written in Rust, offering over 80 lint rules to ensure consistency and best practices in Markdown files. It provides automatic formatting with the `--fix` option and supports multiple Markdown flavors, including GFM, MkDocs, MDX, Quarto, and MyST.

## What's Changed


### Fixed

- **md012**: report blank lines before a code block that ends the document (#791) ([e897556](https://github.com/rvben/rumdl/commit/e897556460ba0209ad9e768ae64ec5579e1715bc))
- **rules**: treat a template shortcode tag as opaque markup ([6962184](https://github.com/rvben/rumdl/commit/696218496edc7c1aa9403a970311fb19085930f9))
- **cli**: report a piped document's findings on stdout like every other run ([47f8a50](https://github.com/rvben/rumdl/commit/47f8a50d7cf8cf98754a13cfe2adb12868d05a89))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.52-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.52/rumdl-v0.2.52-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.52/rumdl-v0.2.52-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.52-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.52/rumdl-v0.2.52-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.52/rumdl-v0.2.52-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.52-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.52/rumdl-v0.2.52-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.52/rumdl-v0.2.52-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.52-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.52/rumdl-v0.2.52-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.52/rumdl-v0.2.52-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.52-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.52/rumdl-v0.2.52-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.52/rumdl-v0.2.52-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.52-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.52/rumdl-v0.2.52-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.52/rumdl-v0.2.52-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.52-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.52/rumdl-v0.2.52-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.52/rumdl-v0.2.52-x86_64-pc-windows-msvc.zip.sha256) |

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

