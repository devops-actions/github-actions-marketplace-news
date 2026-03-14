---
title: rumdl-action
date: 2026-03-14 21:27:31 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.50
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.50**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency, enforce best practices, and improve the developer experience when working with Markdown files. It automates tasks such as identifying and fixing common Markdown issues, supports multiple Markdown flavors, and offers fast performance with intelligent caching. With its highly configurable setup and CI/CD compatibility, rumdl is a robust tool for maintaining clean and standardized Markdown documentation.

## Release notes


### Added

- **MD076**: New `allow-loose-continuation` option permits blank lines around continuation paragraphs in tight lists, enabling tight inter-item spacing while visually separating multi-paragraph content within items ([#524](https://github.com/rvben/rumdl/issues/524))
- **MD013**: Reflow fix now supports footnote definitions (`[^id]: prose text`), including multi-paragraph footnotes with code blocks, blockquotes, tables, lists, and link reference definitions preserved verbatim ([#499](https://github.com/rvben/rumdl/issues/499))

### Fixed

- **MD013**: Link reference definitions inside footnotes no longer terminate footnote collection prematurely
- **MD013**: Fenced code block fence markers now require homogeneous characters (no mixed backtick/tilde)
- **Code block tools**: Error output now uses `file:line:col: [tool] message` format matching rumdl's own lint output, with `<standard input>:N:M:` references translated to absolute file positions and boilerplate stripped ([#521](https://github.com/rvben/rumdl/issues/521))

### Changed

- Upgrade all GitHub Actions from Node.js 20 to Node.js 24 (Node.js 20 deprecated June 2, 2026)


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.50-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.50/rumdl-v0.1.50-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.50/rumdl-v0.1.50-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.50-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.50/rumdl-v0.1.50-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.50/rumdl-v0.1.50-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.50-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.50/rumdl-v0.1.50-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.50/rumdl-v0.1.50-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.50-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.50/rumdl-v0.1.50-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.50/rumdl-v0.1.50-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.50-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.50/rumdl-v0.1.50-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.50/rumdl-v0.1.50-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.50-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.50/rumdl-v0.1.50-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.50/rumdl-v0.1.50-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.50-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.50/rumdl-v0.1.50-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.50/rumdl-v0.1.50-x86_64-pc-windows-msvc.zip.sha256) |

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

