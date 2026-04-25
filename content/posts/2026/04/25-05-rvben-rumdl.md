---
title: rumdl-action
date: 2026-04-25 05:54:44 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.81
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.81**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The `rumdl` GitHub Action is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency and best practices in Markdown files. It automates tasks such as identifying and fixing Markdown issues, supports multiple Markdown flavors, and integrates seamlessly with CI/CD workflows. Key features include 71 linting rules, auto-formatting capabilities, zero runtime dependencies, and exceptional speed, making it an efficient tool for maintaining quality in Markdown documentation.

## What's Changed


### Added

- **md057**: add relative_to_roots option for absolute link validation ([e911919](https://github.com/rvben/rumdl/commit/e91191941703dd2095b6b3d4b1d6633f4031d35c))
- **md024**: treat headings with different {#custom-id} anchors as distinct ([0b4dadb](https://github.com/rvben/rumdl/commit/0b4dadb54a1d519a3316360bd87d3690c30e09fd))

### Fixed

- **md013**: don't warn on under-limit list items in normalize mode ([3e08094](https://github.com/rvben/rumdl/commit/3e0809434f523db0c72d16712e7800bd257c475c))
- **fmt**: honor <div markdown> opt-in across all flavors ([4c9c8dc](https://github.com/rvben/rumdl/commit/4c9c8dcffafd982451970ab87a6daf8196575612))
- **docs**: restore grid-cards formatting on landing page ([5acba85](https://github.com/rvben/rumdl/commit/5acba85bc6c3e4e6dd43d78ee4b654ffafd38ce7))
- **md005,md032**: preserve nesting under tight continuation followed by sub-list ([993c0f5](https://github.com/rvben/rumdl/commit/993c0f55d85453d5c70256416c24e7a13b5dbf64))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.81-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.81/rumdl-v0.1.81-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.81/rumdl-v0.1.81-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.81-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.81/rumdl-v0.1.81-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.81/rumdl-v0.1.81-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.81-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.81/rumdl-v0.1.81-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.81/rumdl-v0.1.81-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.81-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.81/rumdl-v0.1.81-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.81/rumdl-v0.1.81-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.81-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.81/rumdl-v0.1.81-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.81/rumdl-v0.1.81-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.81-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.81/rumdl-v0.1.81-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.81/rumdl-v0.1.81-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.81-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.81/rumdl-v0.1.81-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.81/rumdl-v0.1.81-x86_64-pc-windows-msvc.zip.sha256) |

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

