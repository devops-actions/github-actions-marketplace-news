---
title: rumdl-action
date: 2026-06-17 07:32:20 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.18
dependentsNumber: "4"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.18**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## What's Changed


### Fixed

- **md013**: preserve MyST directives and roles during reflow ([a31a602](https://github.com/rvben/rumdl/commit/a31a602e26e0b0b074f0fa90a80b66513fc7fc72))
- **positions**: char-based marker columns in MD018, MD029, MD069 ([97212f3](https://github.com/rvben/rumdl/commit/97212f34172cb8c8fa60d4e1665f5a0e1323f918))
- **positions**: address review - MD037 filter, boundary-safe parser conversions, MD063 column ([6fd43f7](https://github.com/rvben/rumdl/commit/6fd43f76c12b9db4776000f974131c6b8e734275))
- **positions**: char-based end column in MD070; document the column convention ([039a334](https://github.com/rvben/rumdl/commit/039a33485f03fe8e819183490adb95290fb89055))
- **positions**: use character-based end columns across remaining rules ([efc29da](https://github.com/rvben/rumdl/commit/efc29da2b10c8eba28118500d9617c194bf3d322))
- **positions**: report character-based columns in inline-content rules ([e7fd2ee](https://github.com/rvben/rumdl/commit/e7fd2eea9ef1413b54327c44a64df14577ae6958))
- **positions**: make shared column helpers character-based ([5ca4814](https://github.com/rvben/rumdl/commit/5ca48141750b3b067817d34a6b3aa63221b603c4))
- **md057**: report character-based columns for non-ASCII lines ([d8d07eb](https://github.com/rvben/rumdl/commit/d8d07eb4d86e2d7226ef47849d441262ace5d3db))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.18-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.18/rumdl-v0.2.18-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.18/rumdl-v0.2.18-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.18-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.18/rumdl-v0.2.18-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.18/rumdl-v0.2.18-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.18-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.18/rumdl-v0.2.18-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.18/rumdl-v0.2.18-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.18-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.18/rumdl-v0.2.18-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.18/rumdl-v0.2.18-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.18-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.18/rumdl-v0.2.18-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.18/rumdl-v0.2.18-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.18-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.18/rumdl-v0.2.18-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.18/rumdl-v0.2.18-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.18-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.18/rumdl-v0.2.18-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.18/rumdl-v0.2.18-x86_64-pc-windows-msvc.zip.sha256) |

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

