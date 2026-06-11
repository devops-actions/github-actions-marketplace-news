---
title: rumdl-action
date: 2026-06-11 15:46:07 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.13
dependentsNumber: "4"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.13**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## What's Changed


### Added

- **release**: publish multi-arch container image to ghcr.io ([2e3d70b](https://github.com/rvben/rumdl/commit/2e3d70bc2c3d2f23612dff9e4cddbb7f6fb15477))
- **MD072**: add required-keys option to enforce frontmatter key presence ([7e8c78f](https://github.com/rvben/rumdl/commit/7e8c78f2c6ef104f1d7a748afcc840bc5ce5b237))
- **config**: file-precise provenance in rumdl config output ([f401004](https://github.com/rvben/rumdl/commit/f4010049b7112e75f456221b0626829cb15b2090))

### Fixed

- **config**: probe the working directory for project config even when it is $HOME ([b49a2f8](https://github.com/rvben/rumdl/commit/b49a2f8507020956ee3d12153d022e9d5017787b))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.13-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.13/rumdl-v0.2.13-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.13/rumdl-v0.2.13-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.13-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.13/rumdl-v0.2.13-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.13/rumdl-v0.2.13-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.13-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.13/rumdl-v0.2.13-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.13/rumdl-v0.2.13-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.13-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.13/rumdl-v0.2.13-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.13/rumdl-v0.2.13-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.13-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.13/rumdl-v0.2.13-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.13/rumdl-v0.2.13-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.13-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.13/rumdl-v0.2.13-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.13/rumdl-v0.2.13-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.13-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.13/rumdl-v0.2.13-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.13/rumdl-v0.2.13-x86_64-pc-windows-msvc.zip.sha256) |

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

