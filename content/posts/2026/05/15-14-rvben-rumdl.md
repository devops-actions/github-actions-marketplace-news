---
title: rumdl-action
date: 2026-05-15 14:58:32 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.93
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.93**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

**rumdl** is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency and enforce best practices in Markdown files. It automates tasks such as detecting and fixing Markdown issues, supports multiple Markdown flavors, and provides 71 linting rules with detailed error reporting. With its speed, zero dependencies, and CI/CD-friendly features, rumdl is ideal for developers seeking a modern, efficient tool for maintaining high-quality Markdown documentation.

## What's Changed


### Added

- **quarto**: add MD078 missing-chunk-labels and MD079 chunk-label-spaces ([818cba4](https://github.com/rvben/rumdl/commit/818cba4df79cae1e339d976faba08ab15ef16db7))

### Fixed

- **md079**: flag whitespace in quoted positional chunk labels ([ea069c5](https://github.com/rvben/rumdl/commit/ea069c5023dcbca9ff683b259f37eaf4ac8a31bc))
- **quarto**: harden chunk header parser against codex review findings ([9ee8e28](https://github.com/rvben/rumdl/commit/9ee8e2892dfed842c8688f35e535b9c953093e1e))
- **test**: drive pipeline idempotency tests through real fix coordinator ([5f9fdb9](https://github.com/rvben/rumdl/commit/5f9fdb9efd818611ba75034ba5ed8f9b5d781931))
- **test**: remove redundant default on MD077 unit struct ([6b383b0](https://github.com/rvben/rumdl/commit/6b383b0a46be1ddbc1a9311b3323486265c75e6e))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.93-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.93/rumdl-v0.1.93-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.93/rumdl-v0.1.93-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.93-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.93/rumdl-v0.1.93-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.93/rumdl-v0.1.93-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.93-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.93/rumdl-v0.1.93-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.93/rumdl-v0.1.93-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.93-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.93/rumdl-v0.1.93-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.93/rumdl-v0.1.93-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.93-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.93/rumdl-v0.1.93-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.93/rumdl-v0.1.93-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.93-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.93/rumdl-v0.1.93-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.93/rumdl-v0.1.93-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.93-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.93/rumdl-v0.1.93-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.93/rumdl-v0.1.93-x86_64-pc-windows-msvc.zip.sha256) |

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

