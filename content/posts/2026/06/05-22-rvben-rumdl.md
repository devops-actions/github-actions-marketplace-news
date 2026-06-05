---
title: rumdl-action
date: 2026-06-05 22:34:50 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.8
dependentsNumber: "4"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.8**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## What's Changed


### Added

- **code-block-tools**: add deno fmt as a built-in formatter ([755b086](https://github.com/rvben/rumdl/commit/755b086982ce01032415d492952dc98925d51b0a))
- **junit**: report passing files, not just failures ([dc8a964](https://github.com/rvben/rumdl/commit/dc8a9645aa941372b3cc79d4773a8a2842d7728d))
- **code-block-tools**: generate built-in tools docs table from the registry ([fe9d52c](https://github.com/rvben/rumdl/commit/fe9d52c214bb8fdcf92dc3df1f7e3ac1144d7785))

### Fixed

- **code-block-tools**: drop rubocop (not usable as a generic code-block linter) ([fa7fa83](https://github.com/rvben/rumdl/commit/fa7fa8332326206fced97b518ee61bf972288d9f))
- **code-block-tools**: correct and drop built-ins after verifying real binaries ([9106da9](https://github.com/rvben/rumdl/commit/9106da9d3f7b97cdf41dbc708e826827d73424b9))
- **code-block-tools**: correct shellcheck invocation, drop unworkable eslint ([415fab0](https://github.com/rvben/rumdl/commit/415fab08617fea16e9986694b2fe98b76ee2171f))
- **MD026**: make trailing-punctuation removal idempotent ([3dfeb83](https://github.com/rvben/rumdl/commit/3dfeb838f115020e5595759c489a56ebd62b106c))
- **config**: bound project config discovery at the home directory ([0cdf3b7](https://github.com/rvben/rumdl/commit/0cdf3b72a6d2f6bababe4ec6f6605d183848f1ad))
- **tables**: use real line terminator for byte offsets in table detection ([751b158](https://github.com/rvben/rumdl/commit/751b158c74b67682cc9de2023adfd7c82ad3e562))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.8-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.8/rumdl-v0.2.8-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.8/rumdl-v0.2.8-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.8-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.8/rumdl-v0.2.8-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.8/rumdl-v0.2.8-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.8-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.8/rumdl-v0.2.8-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.8/rumdl-v0.2.8-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.8-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.8/rumdl-v0.2.8-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.8/rumdl-v0.2.8-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.8-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.8/rumdl-v0.2.8-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.8/rumdl-v0.2.8-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.8-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.8/rumdl-v0.2.8-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.8/rumdl-v0.2.8-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.8-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.8/rumdl-v0.2.8-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.8/rumdl-v0.2.8-x86_64-pc-windows-msvc.zip.sha256) |

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

