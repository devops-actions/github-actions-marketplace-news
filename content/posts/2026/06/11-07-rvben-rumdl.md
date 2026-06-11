---
title: rumdl-action
date: 2026-06-11 07:21:04 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.12
dependentsNumber: "4"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.12**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## What's Changed


### Fixed

- **discovery**: normalize path_relative_to output to forward slashes on Windows ([36c8fd9](https://github.com/rvben/rumdl/commit/36c8fd9aebfb9b8e30e1768e4e6dc60893fb6054))
- **lsp**: apply document fixes through the FixCoordinator ([a5c5da1](https://github.com/rvben/rumdl/commit/a5c5da16f749b6fa0da67d3a4c02c788bf2cb2f7))
- **stdin**: lint stdin through the shared engine ([065c4d2](https://github.com/rvben/rumdl/commit/065c4d2bdf3e438b44e580da84f94d99a2f8b2e8))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.12-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.12/rumdl-v0.2.12-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.12/rumdl-v0.2.12-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.12-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.12/rumdl-v0.2.12-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.12/rumdl-v0.2.12-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.12-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.12/rumdl-v0.2.12-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.12/rumdl-v0.2.12-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.12-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.12/rumdl-v0.2.12-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.12/rumdl-v0.2.12-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.12-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.12/rumdl-v0.2.12-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.12/rumdl-v0.2.12-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.12-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.12/rumdl-v0.2.12-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.12/rumdl-v0.2.12-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.12-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.12/rumdl-v0.2.12-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.12/rumdl-v0.2.12-x86_64-pc-windows-msvc.zip.sha256) |

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

