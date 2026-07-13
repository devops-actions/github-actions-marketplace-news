---
title: rumdl-action
date: 2026-07-13 16:35:22 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.32
dependentsNumber: "6"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.32**.

- This action is used across all versions by **6** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## What's Changed


### Fixed

- **md032**: stop flagging ordered lists nested in MkDocs admonitions ([80f896e](https://github.com/rvben/rumdl/commit/80f896e61d6e64afbce115b84b934a5e6325db54))
- **md013**: recognize sentence boundaries followed by footnote references ([04a8c78](https://github.com/rvben/rumdl/commit/04a8c78e53cbcf8c6aa0df5114f2f630e4a5b9ba))
- **md036,md023**: skip admonition and content tab bodies under MkDocs flavor ([e8d1421](https://github.com/rvben/rumdl/commit/e8d14213c6c2d726110c5acbe72f23b37aa61c0d))
- **md040**: recognize py and py3 as Python language aliases ([6e7f8bf](https://github.com/rvben/rumdl/commit/6e7f8bfc2a572e469f1eeef0e24de0a8cf8173d3))
- **md057**: anchor URL extraction so links cannot borrow a sibling's destination ([5a643ca](https://github.com/rvben/rumdl/commit/5a643ca46c781dc87ced08fec6fc6ebcf0128d71))

### Performance

- **reflow**: skip pulldown-cmark parses when a span kind cannot be present ([66d7f7b](https://github.com/rvben/rumdl/commit/66d7f7b412625f6efb7d5ede5be3e807efd7f26b))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.32-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.32/rumdl-v0.2.32-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.32/rumdl-v0.2.32-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.32-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.32/rumdl-v0.2.32-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.32/rumdl-v0.2.32-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.32-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.32/rumdl-v0.2.32-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.32/rumdl-v0.2.32-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.32-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.32/rumdl-v0.2.32-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.32/rumdl-v0.2.32-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.32-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.32/rumdl-v0.2.32-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.32/rumdl-v0.2.32-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.32-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.32/rumdl-v0.2.32-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.32/rumdl-v0.2.32-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.32-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.32/rumdl-v0.2.32-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.32/rumdl-v0.2.32-x86_64-pc-windows-msvc.zip.sha256) |

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

