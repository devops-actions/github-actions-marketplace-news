---
title: rumdl-action
date: 2026-07-23 15:08:36 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.41
dependentsNumber: "7"
actionType: Composite
actionSummary: |
  **Summary:**
  
  rumdl is a high-performance Markdown linter and formatter written in Rust that provides over 76 lint rules to ensure consistency and best practices in Markdown files. It offers built-in formatting capabilities, automatic fixes, multi-flavor support, and zero dependencies. With its focus on speed and user experience, rumdl is suitable for both developers and CI/CD pipelines, making it a versatile tool for Markdown quality assurance.
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.41**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

**Summary:**

rumdl is a high-performance Markdown linter and formatter written in Rust that provides over 76 lint rules to ensure consistency and best practices in Markdown files. It offers built-in formatting capabilities, automatic fixes, multi-flavor support, and zero dependencies. With its focus on speed and user experience, rumdl is suitable for both developers and CI/CD pipelines, making it a versatile tool for Markdown quality assurance.

## What's Changed


### Added

- **flavor**: add Hugo flavor and skip block attribute lists in blanks-around rules ([e6bb033](https://github.com/rvben/rumdl/commit/e6bb033813121b898784003e1af73df1b464e097))

### Fixed

- **md044**: recognize indented HTML comments so links and code escape the rule ([3d6191c](https://github.com/rvben/rumdl/commit/3d6191cb56366439bf7814e29463fcc157aaf5ac))
- **md013**: keep an attr list whole inside a wrapped span ([e06f03d](https://github.com/rvben/rumdl/commit/e06f03d515fc81054e3929b25d252020960a9c11))
- **md013**: keep a reference-style link whole inside a wrapped span ([de42709](https://github.com/rvben/rumdl/commit/de427094fece132be1dae78efcc0e524e7cad5cd))
- **md013**: wrap an over-long span whose whole content is another span ([f6c7c9c](https://github.com/rvben/rumdl/commit/f6c7c9c45ffe924c6ef429dd70197109a2a33296))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.41-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.41/rumdl-v0.2.41-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.41/rumdl-v0.2.41-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.41-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.41/rumdl-v0.2.41-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.41/rumdl-v0.2.41-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.41-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.41/rumdl-v0.2.41-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.41/rumdl-v0.2.41-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.41-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.41/rumdl-v0.2.41-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.41/rumdl-v0.2.41-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.41-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.41/rumdl-v0.2.41-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.41/rumdl-v0.2.41-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.41-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.41/rumdl-v0.2.41-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.41/rumdl-v0.2.41-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.41-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.41/rumdl-v0.2.41-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.41/rumdl-v0.2.41-x86_64-pc-windows-msvc.zip.sha256) |

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

