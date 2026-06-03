---
title: rumdl-action
date: 2026-06-03 15:38:00 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.6
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.6**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## What's Changed


### Fixed

- **MD062**: treat a lone quote in a link destination as part of the URL ([b3aea98](https://github.com/rvben/rumdl/commit/b3aea98538328ac237ed0aee1bb8b5e5f1bbd352))
- **config**: stop directory config discovery at the canonical project root ([ef9f3f6](https://github.com/rvben/rumdl/commit/ef9f3f618febea769004a2e3d0c1d42ff05bb31c))
- **config**: match root config by canonical path in per-directory resolution ([4442a9f](https://github.com/rvben/rumdl/commit/4442a9fe86c771d09f317df40765b3e2c327d0a8))
- **output**: relativize the verbose 'Processing file' path on Windows ([35986d6](https://github.com/rvben/rumdl/commit/35986d6c51e1f4f55c87ea4a91988da03c0a180d))
- **output**: normalize remaining displayed paths to forward slashes on Windows ([dbfb3ef](https://github.com/rvben/rumdl/commit/dbfb3ef35c25256b9320240042c9fc9dc7685afa))
- **output**: use forward slashes in displayed paths on Windows ([7049c01](https://github.com/rvben/rumdl/commit/7049c013c4c2476eccce56777c5a1c63b4dfce21))
- **MD049,MD037**: Preserve inline code inside emphasis during auto-fix (#652) ([a1b1055](https://github.com/rvben/rumdl/commit/a1b1055af11a96b9ea3db1d074cf2ae373266975))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.6-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.6/rumdl-v0.2.6-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.6/rumdl-v0.2.6-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.6-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.6/rumdl-v0.2.6-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.6/rumdl-v0.2.6-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.6-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.6/rumdl-v0.2.6-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.6/rumdl-v0.2.6-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.6-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.6/rumdl-v0.2.6-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.6/rumdl-v0.2.6-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.6-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.6/rumdl-v0.2.6-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.6/rumdl-v0.2.6-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.6-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.6/rumdl-v0.2.6-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.6/rumdl-v0.2.6-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.6-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.6/rumdl-v0.2.6-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.6/rumdl-v0.2.6-x86_64-pc-windows-msvc.zip.sha256) |

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

