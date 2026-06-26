---
title: rumdl-action
date: 2026-06-26 07:16:24 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.23
dependentsNumber: "4"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.23**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## What's Changed


### Added

- **rules**: add MD082 to require content between headings ([e5592ae](https://github.com/rvben/rumdl/commit/e5592aeb52ffec6473a3814e8e0955f58ebe67e1))

### Fixed

- **lint-context**: attach list items whose marker line opens a code fence ([95898f4](https://github.com/rvben/rumdl/commit/95898f49d3ca34ddfe33dbabe5db95c69d6adfc2))
- **parser**: parse reference-definition titles on a continuation line ([fb02b52](https://github.com/rvben/rumdl/commit/fb02b5210be7529b615f3e4a05d406db3929ec34))
- **cli**: make per-file exclude notice verbose-only ([2923e27](https://github.com/rvben/rumdl/commit/2923e27cdd2e22a02e41533dfb71d10d7b26b7a9))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.23-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.23/rumdl-v0.2.23-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.23/rumdl-v0.2.23-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.23-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.23/rumdl-v0.2.23-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.23/rumdl-v0.2.23-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.23-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.23/rumdl-v0.2.23-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.23/rumdl-v0.2.23-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.23-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.23/rumdl-v0.2.23-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.23/rumdl-v0.2.23-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.23-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.23/rumdl-v0.2.23-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.23/rumdl-v0.2.23-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.23-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.23/rumdl-v0.2.23-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.23/rumdl-v0.2.23-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.23-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.23/rumdl-v0.2.23-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.23/rumdl-v0.2.23-x86_64-pc-windows-msvc.zip.sha256) |

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

