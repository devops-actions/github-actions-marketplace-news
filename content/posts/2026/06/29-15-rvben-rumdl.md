---
title: rumdl-action
date: 2026-06-29 15:13:06 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.26
dependentsNumber: "6"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.26**.

- This action is used across all versions by **6** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## What's Changed


### Added

- **wasi**: add wasi build feature, make target, and CI coverage ([8b9b027](https://github.com/rvben/rumdl/commit/8b9b0276563d23b7f13a9033c6f336b1e6667514))
- **lsp**: add enableSymbols setting to gate symbol providers ([b80f001](https://github.com/rvben/rumdl/commit/b80f001f11a7679a8c2f69631d1ab8df26e7eff9))

### Fixed

- **workspace-index**: make cache temp file names unique per write ([d3aa269](https://github.com/rvben/rumdl/commit/d3aa26901e38b1de1cd2d8649477bb61b82cbc61))
- allow building for WASI ([8d0b44a](https://github.com/rvben/rumdl/commit/8d0b44a9913a893b57bbdb211bc19da4c59c131f))
- **MD060**: preserve trailing blank lines and skip table-free content ([0223b30](https://github.com/rvben/rumdl/commit/0223b30bbf0ac9adde1bcadb5300460f6aa2d1c6))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.26-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.26/rumdl-v0.2.26-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.26/rumdl-v0.2.26-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.26-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.26/rumdl-v0.2.26-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.26/rumdl-v0.2.26-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.26-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.26/rumdl-v0.2.26-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.26/rumdl-v0.2.26-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.26-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.26/rumdl-v0.2.26-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.26/rumdl-v0.2.26-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.26-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.26/rumdl-v0.2.26-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.26/rumdl-v0.2.26-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.26-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.26/rumdl-v0.2.26-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.26/rumdl-v0.2.26-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.26-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.26/rumdl-v0.2.26-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.26/rumdl-v0.2.26-x86_64-pc-windows-msvc.zip.sha256) |

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

