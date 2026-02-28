---
title: rumdl-action
date: 2026-02-28 05:35:51 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.32
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.32**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter built with Rust to ensure consistency and best practices in Markdown files. It automates linting and formatting tasks, supports multiple Markdown flavors, and provides intelligent caching for faster subsequent runs, making it ideal for CI/CD pipelines and editor integrations. Its key capabilities include speed, automatic fixes, detailed error reporting, and extensive configurability without runtime dependencies.

## Release notes


### Fixed

- **MD013**: Respect MkDocs 4-space list continuation indent during reflow. For
  markers shorter than 4 characters (e.g., `1.`, `-`), continuation lines are now
  indented to 4 spaces in MkDocs flavor, matching Python-Markdown requirements. This
  fixes an MD077/MD013 conflict loop where reflow produced invalid MkDocs markdown
  ([#471](https://github.com/rvben/rumdl/issues/471))
- **LSP**: Apply per-file-ignores configuration during LSP linting
- **CI**: Move mise tool install into retry loops for reliability

### Changed

- **MD046**: Expanded documentation with examples and details for unclosed code block
  detection (thanks @eread in [#470](https://github.com/rvben/rumdl/pull/470))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.32-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.32/rumdl-v0.1.32-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.32/rumdl-v0.1.32-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.32-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.32/rumdl-v0.1.32-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.32/rumdl-v0.1.32-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.32-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.32/rumdl-v0.1.32-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.32/rumdl-v0.1.32-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.32-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.32/rumdl-v0.1.32-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.32/rumdl-v0.1.32-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.32-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.32/rumdl-v0.1.32-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.32/rumdl-v0.1.32-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.32-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.32/rumdl-v0.1.32-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.32/rumdl-v0.1.32-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.32-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.32/rumdl-v0.1.32-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.32/rumdl-v0.1.32-x86_64-pc-windows-msvc.zip.sha256) |

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

