---
title: rumdl-action
date: 2026-04-05 06:26:10 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.67
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.67**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The `rumdl` GitHub Action is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency and best practices in Markdown files. It automates tasks such as identifying and fixing common Markdown issues, supports multiple Markdown flavors, and offers extensive configuration options. With its fast performance, zero dependencies, and CI/CD integration, it is well-suited for optimizing workflows and maintaining clean, standardized documentation.

## What's Changed


### Added

- **MD077**: detect over-indented tight continuation lines ([a1e100d](https://github.com/rvben/rumdl/commit/a1e100d71509d2ac509f749bc9fcc492c0b146a3))
- **docs**: add interactive playground page powered by rumdl-wasm ([3352b87](https://github.com/rvben/rumdl/commit/3352b87785c8d35e7ee5361dda1c994f37059154))

### Fixed

- **MD077**: correct nested list tight continuation false positive ([12f34e3](https://github.com/rvben/rumdl/commit/12f34e304f58cdd8292ca0ddbf4371ff61e1bc3f))
- **MD077**: skip deeply indented list markers in tight continuation check ([3455ae9](https://github.com/rvben/rumdl/commit/3455ae9b863746ef2f46aa8200c0f06601124095))
- **ci**: use nextest archive in pre-push hook to prevent binary race ([fccfe9a](https://github.com/rvben/rumdl/commit/fccfe9a1a36943b4d2f5168817a9973da0bd47c0))
- remove orphaned doc comments causing clippy warnings ([0dd98b4](https://github.com/rvben/rumdl/commit/0dd98b4cb850edd9300471d0d632bd0e370640ac))
- **docs**: prevent playground panels from shrinking after Fix All ([e209ce6](https://github.com/rvben/rumdl/commit/e209ce677724ed5bbd6761bb18a2e81b9138383f))
- **MD064**: skip spaces after list markers inside blockquotes ([36fbeae](https://github.com/rvben/rumdl/commit/36fbeae45db14a05f8bf4590a9b4a637a6d83392))
- **docs**: replace npmjs.com link with github link in playground ([da60e47](https://github.com/rvben/rumdl/commit/da60e47abc317d021ae4ca58d3148da2848839d3))
- **docs**: load rumdl-wasm from jsdelivr without version pin ([e781e6b](https://github.com/rvben/rumdl/commit/e781e6be71119d47c2f55091d8552b833847904b))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.67-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.67/rumdl-v0.1.67-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.67/rumdl-v0.1.67-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.67-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.67/rumdl-v0.1.67-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.67/rumdl-v0.1.67-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.67-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.67/rumdl-v0.1.67-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.67/rumdl-v0.1.67-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.67-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.67/rumdl-v0.1.67-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.67/rumdl-v0.1.67-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.67-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.67/rumdl-v0.1.67-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.67/rumdl-v0.1.67-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.67-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.67/rumdl-v0.1.67-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.67/rumdl-v0.1.67-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.67-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.67/rumdl-v0.1.67-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.67/rumdl-v0.1.67-x86_64-pc-windows-msvc.zip.sha256) |

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

