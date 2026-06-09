---
title: rumdl-action
date: 2026-06-09 06:58:17 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.10
dependentsNumber: "4"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.10**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## What's Changed


### Added

- **config**: warn when multiple rumdl configs shadow each other in a directory ([49cd393](https://github.com/rvben/rumdl/commit/49cd393105e7eb1972f25d326c7b941817226c3a))

### Fixed

- **config**: apply inline --config overrides to subdirectory config groups ([45800e8](https://github.com/rvben/rumdl/commit/45800e8064fc3c90792a60526327b9f0c0f11126))
- **config**: anchor multi-path config discovery at the common ancestor of the target paths ([5b0d3c7](https://github.com/rvben/rumdl/commit/5b0d3c7de87399bf2be465cd49027f2e0d74b2a6))
- **config**: discover global config from cwd for multi-path runs (#660) ([3c28327](https://github.com/rvben/rumdl/commit/3c283270f6c85fb84976bef077b126e9c7d294a0))
- **config**: show shadowed-config warning paths relative to their directory ([37358a1](https://github.com/rvben/rumdl/commit/37358a1e94826fe4ae0622cbafc238578f1c51ab))

Thanks to [@darwin](https://github.com/darwin) for reporting and contributing the initial fix for multi-path config discovery in [#660](https://github.com/rvben/rumdl/pull/660).


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.10-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.10/rumdl-v0.2.10-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.10/rumdl-v0.2.10-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.10-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.10/rumdl-v0.2.10-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.10/rumdl-v0.2.10-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.10-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.10/rumdl-v0.2.10-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.10/rumdl-v0.2.10-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.10-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.10/rumdl-v0.2.10-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.10/rumdl-v0.2.10-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.10-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.10/rumdl-v0.2.10-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.10/rumdl-v0.2.10-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.10-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.10/rumdl-v0.2.10-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.10/rumdl-v0.2.10-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.10-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.10/rumdl-v0.2.10-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.10/rumdl-v0.2.10-x86_64-pc-windows-msvc.zip.sha256) |

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

