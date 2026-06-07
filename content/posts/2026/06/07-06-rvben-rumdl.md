---
title: rumdl-action
date: 2026-06-07 06:31:13 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.9
dependentsNumber: "4"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.9**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## What's Changed


### Added

- **md030**: align ordered list text to a column with ol-align-column (#658) ([221cdaa](https://github.com/rvben/rumdl/commit/221cdaabfb0de54151b496d7ae867193eddcd6a5)) - thanks @chandlerc

### Fixed

- **md022**: keep the blanks-around-headings fix idempotent when a heading sits between a list and a list marker
- **md030**: reject out-of-range ol-align-column values ([3620545](https://github.com/rvben/rumdl/commit/3620545e4eb73fc364562c1b1e4f578882d2daa5))
- **md030**: keep nested content attached when a marker widens (#657) ([3bcc4c4](https://github.com/rvben/rumdl/commit/3bcc4c4ad109ef9d741d694b2eaa1a0944f02053)) - thanks @chandlerc


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.9-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.9/rumdl-v0.2.9-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.9/rumdl-v0.2.9-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.9-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.9/rumdl-v0.2.9-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.9/rumdl-v0.2.9-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.9-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.9/rumdl-v0.2.9-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.9/rumdl-v0.2.9-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.9-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.9/rumdl-v0.2.9-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.9/rumdl-v0.2.9-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.9-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.9/rumdl-v0.2.9-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.9/rumdl-v0.2.9-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.9-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.9/rumdl-v0.2.9-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.9/rumdl-v0.2.9-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.9-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.9/rumdl-v0.2.9-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.9/rumdl-v0.2.9-x86_64-pc-windows-msvc.zip.sha256) |

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

