---
title: rumdl-action
date: 2026-03-02 21:30:27 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.35
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.35**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The `rumdl` GitHub Action is a high-performance Markdown linter and formatter built with Rust to ensure consistency and adherence to best practices in Markdown files. It automates tasks such as detecting and fixing common Markdown issues, supports multiple Markdown flavors, and offers fast performance with intelligent caching. Its key capabilities include 57 linting rules, automatic formatting, detailed error reporting, and seamless integration into CI/CD pipelines, all while being highly configurable and dependency-free.

## Release notes


### Added

- **LSP**: Hover preview for markdown links — hovering over a link shows a
  preview of the destination file or heading section with up to 15 lines of
  content ([#477](https://github.com/rvben/rumdl/issues/477))

### Fixed

- **MD077**: Flag and fix all continuation lines in multiline loose list
  paragraphs, not just the first line after the blank
  ([#474](https://github.com/rvben/rumdl/issues/474))
  (thanks @jlgrimes in [#475](https://github.com/rvben/rumdl/pull/475))
- **LSP**: Return incoming cross-file references when find-references is
  invoked from a target file with cursor not on a heading or link
  ([#476](https://github.com/rvben/rumdl/issues/476))
  (thanks @jlgrimes in [#478](https://github.com/rvben/rumdl/pull/478))
- **CI**: Only dispatch downstream notifications when publish steps succeed


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.35-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.35/rumdl-v0.1.35-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.35/rumdl-v0.1.35-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.35-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.35/rumdl-v0.1.35-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.35/rumdl-v0.1.35-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.35-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.35/rumdl-v0.1.35-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.35/rumdl-v0.1.35-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.35-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.35/rumdl-v0.1.35-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.35/rumdl-v0.1.35-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.35-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.35/rumdl-v0.1.35-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.35/rumdl-v0.1.35-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.35-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.35/rumdl-v0.1.35-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.35/rumdl-v0.1.35-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.35-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.35/rumdl-v0.1.35-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.35/rumdl-v0.1.35-x86_64-pc-windows-msvc.zip.sha256) |

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

