---
title: rumdl-action
date: 2026-07-29 06:40:25 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.45
dependentsNumber: "7"
actionType: Composite
actionSummary: |
  **Summary:** rumdl is a high-performance Markdown linter and formatter written in Rust, offering speed, over 80 lint rules, automatic formatting with `--fix`, zero dependencies, highly configurable TOML-based config files, multiple Markdown flavors, and installable via Cargo, pip, npm, uv, mise, Nix, Termux User Repository (TUR), and pacman. It is designed for consistency in Markdown files and provides detailed error reporting and CI/CD compatibility.
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.45**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

**Summary:** rumdl is a high-performance Markdown linter and formatter written in Rust, offering speed, over 80 lint rules, automatic formatting with `--fix`, zero dependencies, highly configurable TOML-based config files, multiple Markdown flavors, and installable via Cargo, pip, npm, uv, mise, Nix, Termux User Repository (TUR), and pacman. It is designed for consistency in Markdown files and provides detailed error reporting and CI/CD compatibility.

## What's Changed


### Fixed

- **md013**: keep every word when a sentence boundary falls inside emphasis ([207823b](https://github.com/rvben/rumdl/commit/207823b664ea5ca34c2c7c1ec5b2335366ea5b17))
- **md037**: don't flag text between emphasis spans when a span wraps ([17db4f9](https://github.com/rvben/rumdl/commit/17db4f9437bd7f63fee5f552712cd6503caa2d48))

### Changed

- **md013**: reflow output changed for emphasis spanning several sentences. In
  `sentence-per-line` and `semantic-line-breaks` modes, `**First. Second.**` now
  becomes `**First.\nSecond.**` instead of `**First.**\n**Second.**`. Reopening the
  markers on each line replaced the sentence-separating space with a marker pair,
  which deleted the space and, on many inputs, whole words. A line break inside a
  span is whitespace in CommonMark, so the rendered output is unchanged.


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.45-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.45/rumdl-v0.2.45-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.45/rumdl-v0.2.45-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.45-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.45/rumdl-v0.2.45-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.45/rumdl-v0.2.45-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.45-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.45/rumdl-v0.2.45-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.45/rumdl-v0.2.45-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.45-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.45/rumdl-v0.2.45-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.45/rumdl-v0.2.45-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.45-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.45/rumdl-v0.2.45-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.45/rumdl-v0.2.45-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.45-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.45/rumdl-v0.2.45-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.45/rumdl-v0.2.45-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.45-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.45/rumdl-v0.2.45-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.45/rumdl-v0.2.45-x86_64-pc-windows-msvc.zip.sha256) |

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

