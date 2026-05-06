---
title: rumdl-action
date: 2026-05-06 15:04:53 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.89
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.89**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The `rumdl` GitHub Action is a high-performance Markdown linter and formatter built with Rust to ensure consistency and best practices in Markdown files. It automates linting, formatting, and error detection across multiple Markdown flavors (e.g., GFM, MDX), providing speed, configurability, and CI/CD compatibility. With features like automatic fixes, detailed error reporting, and zero dependencies, it streamlines workflows for developers and teams managing Markdown documentation.

## What's Changed


### Added

- **md031**: enforce blank lines around Azure DevOps colon code fences ([488a157](https://github.com/rvben/rumdl/commit/488a157100483f759e83ec1ba5de95304229bb9e))
- **lint_context**: wire Azure DevOps colon fence detection and extend code_blocks ([a9dc0cd](https://github.com/rvben/rumdl/commit/a9dc0cda40768c856fa6aa2ffda0ca051f0cf6f5))
- **lint_context**: add colon fence detection for Azure DevOps flavor ([b2a742b](https://github.com/rvben/rumdl/commit/b2a742b3c428603f15829e1896067c9a3bf4a19f))
- **flavor**: add AzureDevOps flavor variant with colon code fence support ([59592e5](https://github.com/rvben/rumdl/commit/59592e54f7f38e6f12d98df648bd352871958062))

### Fixed

- **md046**: replace index loop with iterator to satisfy clippy needless_range_loop ([605c3da](https://github.com/rvben/rumdl/commit/605c3da577d2db53f29b09786bcfc271ba544b7e))
- **md048**: skip colon fence lines in style detection for Azure DevOps flavor ([b4833fa](https://github.com/rvben/rumdl/commit/b4833fac7403dab16c710f22312f1f2c76be5edc))
- **md046**: skip colon fence lines in style detection for Azure DevOps flavor ([386330c](https://github.com/rvben/rumdl/commit/386330cb0d1b315fe82eb15c7102ef54e03ff9b1))
- **md055**: normalize style config to snake_case so kebab-case values are applied ([8d4dfd2](https://github.com/rvben/rumdl/commit/8d4dfd2c6d93ffd6622464130e178f4d00ace75b))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.89-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.89/rumdl-v0.1.89-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.89/rumdl-v0.1.89-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.89-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.89/rumdl-v0.1.89-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.89/rumdl-v0.1.89-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.89-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.89/rumdl-v0.1.89-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.89/rumdl-v0.1.89-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.89-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.89/rumdl-v0.1.89-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.89/rumdl-v0.1.89-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.89-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.89/rumdl-v0.1.89-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.89/rumdl-v0.1.89-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.89-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.89/rumdl-v0.1.89-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.89/rumdl-v0.1.89-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.89-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.89/rumdl-v0.1.89-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.89/rumdl-v0.1.89-x86_64-pc-windows-msvc.zip.sha256) |

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

