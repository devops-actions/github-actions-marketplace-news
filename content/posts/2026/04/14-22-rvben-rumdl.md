---
title: rumdl-action
date: 2026-04-14 22:20:44 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.72
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.72**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The `rumdl` GitHub Action is a high-performance Markdown linter and formatter, written in Rust, designed to ensure consistency and enforce best practices in Markdown files. It automates the detection and correction of common Markdown issues with 71 built-in linting rules, supports multiple Markdown flavors, and offers configurable formatting options. Its speed, zero-dependency design, and CI/CD compatibility make it ideal for seamless integration into development workflows.

## What's Changed


### Added

- **config**: resolve rule aliases in config get command ([69058cd](https://github.com/rvben/rumdl/commit/69058cd8085cad805fd421785b8a4a805b07c956))
- **import**: support JSONC comments in markdownlint config files ([26ae457](https://github.com/rvben/rumdl/commit/26ae4570b5a1e9b622994506216b08e40c5a2011))
- **cli**: introduce FmtArgs with formatter-appropriate interface ([dce2b40](https://github.com/rvben/rumdl/commit/dce2b40f90767a8c48ee65322108bb237f6b2f60))

### Fixed

- **md034**: detect code spans inside MDX JSX component bodies ([d881713](https://github.com/rvben/rumdl/commit/d881713f87f8439c2c478d094f9946ef4bc386c0))
- **md025**: cascade level adjustment to subordinate headings when demoting duplicate title ([2399dca](https://github.com/rvben/rumdl/commit/2399dcada39b6dd367a25d3d81437248553555f2))
- **formatter**: inline format args to satisfy clippy ([250a194](https://github.com/rvben/rumdl/commit/250a1940d6d26d6ff9b3c54158e9f492d3fb9748))
- **commands**: resolve rule aliases in explain and rule commands ([5d04351](https://github.com/rvben/rumdl/commit/5d0435139d275e1485b832c3608e230f1278e63c))
- use verified fix counts in summaries and correct dry-run label ([cd55dc1](https://github.com/rvben/rumdl/commit/cd55dc10f5a946cf42fdc79167dc7d50a8022ca9))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.72-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.72/rumdl-v0.1.72-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.72/rumdl-v0.1.72-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.72-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.72/rumdl-v0.1.72-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.72/rumdl-v0.1.72-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.72-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.72/rumdl-v0.1.72-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.72/rumdl-v0.1.72-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.72-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.72/rumdl-v0.1.72-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.72/rumdl-v0.1.72-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.72-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.72/rumdl-v0.1.72-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.72/rumdl-v0.1.72-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.72-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.72/rumdl-v0.1.72-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.72/rumdl-v0.1.72-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.72-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.72/rumdl-v0.1.72-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.72/rumdl-v0.1.72-x86_64-pc-windows-msvc.zip.sha256) |

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

