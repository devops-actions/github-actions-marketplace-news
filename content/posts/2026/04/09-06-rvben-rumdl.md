---
title: rumdl-action
date: 2026-04-09 06:08:03 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.68
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.68**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The `rumdl` GitHub Action is a high-performance Markdown linter and formatter built in Rust, designed to ensure consistency and enforce best practices in Markdown files. It automates tasks such as identifying and fixing common Markdown issues, supports multiple Markdown flavors, and offers a modern CLI with detailed error reporting. Its key capabilities include fast performance, zero dependencies, high configurability with support for TOML-based configurations, and suitability for CI/CD workflows with intelligent caching and non-zero exit codes on errors.

## What's Changed


### Fixed

- **MD039**: preserve link titles and image captions when trimming spaces ([845bcb3](https://github.com/rvben/rumdl/commit/845bcb3b5b010499d74a094d5e5042a5caa09243))
- **MD025**: preserve closing hashes when demoting closed ATX headings ([58b690d](https://github.com/rvben/rumdl/commit/58b690d18c7fcd1f95bf509d31106c59ec791260))
- **MD040**: preserve existing info string attributes when adding language ([c46da6a](https://github.com/rvben/rumdl/commit/c46da6ab6325d4e760a4f6129050543a4b78485f))
- **MD026**: include setext H1 underlines in likely_has_headings check ([83dbca2](https://github.com/rvben/rumdl/commit/83dbca2b0860cf712aaaabc63bc941010305ef22))
- skip overlapping fix ranges in apply_warning_fixes to prevent data corruption ([2ecf48c](https://github.com/rvben/rumdl/commit/2ecf48c60ea187e32ece6ef93f1ec9f648ad1ff1))
- **MD025**: prevent infinite demotion loop when configured level is 6 ([b4a6d3d](https://github.com/rvben/rumdl/commit/b4a6d3d7c7ce6349c389a23d89d85d9dbb98fd43))
- **MD046**: correctly match closing fence by opener length in fix() ([1e03cae](https://github.com/rvben/rumdl/commit/1e03cae513b7e34530109c11f82b469f77477fd3))
- **MD030**: align fix() with check() for parser-recognized list items ([96aa7aa](https://github.com/rvben/rumdl/commit/96aa7aa3c3307ad534c1c65c2dd0dafb6e583532))
- **MD030**: check nested list items regardless of indentation depth ([423435f](https://github.com/rvben/rumdl/commit/423435f1d8aa304bd6f3022e9c930adc88b74af4))
- **MD044**: skip URL after WikiLink double-bracket links ([f2390c8](https://github.com/rvben/rumdl/commit/f2390c89f9d3e0677f5f14cde8519cc825d6d52d))
- **MD013**: correct line-length boundary check when indentation is stripped ([7620cd6](https://github.com/rvben/rumdl/commit/7620cd6170d81078738bdaa6e39819ce9630cd31))
- **MD013**: preserve indentation of list continuation lines after nested lists ([a4cb7c0](https://github.com/rvben/rumdl/commit/a4cb7c006f00765aef890d7aec8e15d6ebd99459))
- **MD013**: recognize "St." as abbreviation in sentence-per-line mode ([31c76cf](https://github.com/rvben/rumdl/commit/31c76cf778acb9effab04597cfa0dd68aa4ba259))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.68-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.68/rumdl-v0.1.68-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.68/rumdl-v0.1.68-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.68-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.68/rumdl-v0.1.68-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.68/rumdl-v0.1.68-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.68-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.68/rumdl-v0.1.68-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.68/rumdl-v0.1.68-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.68-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.68/rumdl-v0.1.68-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.68/rumdl-v0.1.68-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.68-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.68/rumdl-v0.1.68-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.68/rumdl-v0.1.68-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.68-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.68/rumdl-v0.1.68-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.68/rumdl-v0.1.68-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.68-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.68/rumdl-v0.1.68-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.68/rumdl-v0.1.68-x86_64-pc-windows-msvc.zip.sha256) |

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

