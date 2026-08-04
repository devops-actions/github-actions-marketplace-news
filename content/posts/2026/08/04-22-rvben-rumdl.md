---
title: rumdl-action
date: 2026-08-04 22:27:43 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.50
dependentsNumber: "7"
actionType: Composite
actionSummary: |
  rumdl is a high-performance Markdown linter and formatter written in Rust that offers speed, numerous lint rules, automatic formatting, and support for various Markdown flavors. It simplifies the process of ensuring consistent Markdown quality by providing a modern CLI tool with detailed error reporting and configuration options.
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.50**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter written in Rust that offers speed, numerous lint rules, automatic formatting, and support for various Markdown flavors. It simplifies the process of ensuring consistent Markdown quality by providing a modern CLI tool with detailed error reporting and configuration options.

## What's Changed


### Added

- **md077**: support fixed continuation indent config (#786) ([fea6322](https://github.com/rvben/rumdl/commit/fea63227ae14db43956303a2bbae97ac41d7f68c))

### Fixed

- **md065**: leave markers alone inside a block that hides its content ([2654364](https://github.com/rvben/rumdl/commit/26543648458feb2111e46ec6e6cbb301917636d5))
- **md065**: report thematic breaks written with spaces between markers ([1d29236](https://github.com/rvben/rumdl/commit/1d292366b43bf2dbcc20d1f22ceb0e6fb73652ab))
- **md076**: ask the parser whether a list item's block is really fenced ([fd616c2](https://github.com/rvben/rumdl/commit/fd616c2c31009eb8b39d29836b2ef7b51242e8a6))
- **md022**: require a blank line below a heading above a spaced thematic break ([27120f2](https://github.com/rvben/rumdl/commit/27120f25a9b620fcc0f827ed77b97f2f6b57f4f4))
- **MD076**: preserve fenced list item spacing (#788) ([2d60067](https://github.com/rvben/rumdl/commit/2d60067a2ff5e38875919c7c57190b77f8d7eb9f))
- **md022**: use the same list test below a heading in check and fix (#790) ([ef926b7](https://github.com/rvben/rumdl/commit/ef926b78500015769c23423ebbcf9e332de87385))
- **md040**: locate the fence a list marker holds instead of assuming the indent ([6099a6c](https://github.com/rvben/rumdl/commit/6099a6c11d687480bdaf82f01d8f9695d5998570))
- **md077**: keep the strict-flavor minimum as a floor under a configured indent ([cfaad2e](https://github.com/rvben/rumdl/commit/cfaad2e072c5a69a9e28b9678b126c7f3642b9d4))
- **md077**: reject a configured indent of 0 ([1ac97a3](https://github.com/rvben/rumdl/commit/1ac97a338a109ddc91eee3db557c5798402f8a72))
- **md077**: accept the indent option instead of reporting it as unknown ([cba175c](https://github.com/rvben/rumdl/commit/cba175c0bb148b9a9f5b5dc4082aa00f46da815c))
- **md013**: stop exempting a complete link followed by a parenthesized aside ([722fad6](https://github.com/rvben/rumdl/commit/722fad6984692318160f7ddce71b55701c20d280))
- **md013**: keep nested links intact when reflowing emphasis spans (#779) ([cb65237](https://github.com/rvben/rumdl/commit/cb652371b3f498df009ef4b1018b49efcc1388c6))
- **md013**: exempt standalone links with nested markup or unresolved references (#781) ([2c52283](https://github.com/rvben/rumdl/commit/2c52283cb6906f6620cfd3986b3d4dc300175e5e))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.50-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.50/rumdl-v0.2.50-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.50/rumdl-v0.2.50-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.50-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.50/rumdl-v0.2.50-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.50/rumdl-v0.2.50-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.50-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.50/rumdl-v0.2.50-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.50/rumdl-v0.2.50-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.50-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.50/rumdl-v0.2.50-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.50/rumdl-v0.2.50-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.50-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.50/rumdl-v0.2.50-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.50/rumdl-v0.2.50-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.50-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.50/rumdl-v0.2.50-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.50/rumdl-v0.2.50-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.50-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.50/rumdl-v0.2.50-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.50/rumdl-v0.2.50-x86_64-pc-windows-msvc.zip.sha256) |

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

