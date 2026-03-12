---
title: rumdl-action
date: 2026-03-12 05:55:14 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.46
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.46**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The `rumdl` GitHub Action is a high-performance Markdown linter and formatter built in Rust, designed to ensure consistency and best practices in Markdown files. It automates tasks such as identifying and fixing common Markdown issues, supports multiple Markdown flavors, offers detailed error reporting, and is optimized for speed with features like intelligent caching for efficient CI/CD integration. Its key capabilities include 71 linting rules, automatic formatting, zero dependencies, and extensive configurability through TOML-based files.

## Release notes


### Added

- Per-rule `enabled = false` now actually disables rules; `enabled = true/false` is fully bidirectional and takes precedence over global `disable`/`extend-disable`/`extend-enable` lists ([#520](https://github.com/rvben/rumdl/issues/520))

### Fixed

- **MD032**: False positive for list continuation text in nested blockquotes ([#519](https://github.com/rvben/rumdl/issues/519))
- **MD014**: Now reports all violations per code block, not just the first ([#516](https://github.com/rvben/rumdl/issues/516))
- **MD033**: `allowed` and `disallowed` shorthand config options no longer produce unknown key warnings ([#508](https://github.com/rvben/rumdl/issues/508))
- **MD013**: `strict-sentences` alias now correctly recognized in config validation
- **MD049/MD050**: Skip mkdocstrings blocks in emphasis-related rules to prevent false positives ([#515](https://github.com/rvben/rumdl/issues/515))
- **Code block tools**: Strip ANSI codes, parse multi-line errors, and combine stdout/stderr for complete diagnostic output ([#506](https://github.com/rvben/rumdl/issues/506))
- **Code block tools**: Default `tombi` tool now runs `tombi lint` instead of `tombi format` when configured in the `lint` slot ([#506](https://github.com/rvben/rumdl/issues/506))
- **Config**: `enabled` key no longer rejected as unknown in per-rule config blocks ([#520](https://github.com/rvben/rumdl/issues/520))
- **Inline config**: Unified directive parser eliminates disambiguation bugs between enable/disable/configure directives

### Changed

- Consolidated ~110 test binaries into a single lib binary for faster builds
- Removed dead code from rule.rs, MD014, and code_block_utils modules


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.46-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.46/rumdl-v0.1.46-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.46/rumdl-v0.1.46-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.46-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.46/rumdl-v0.1.46-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.46/rumdl-v0.1.46-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.46-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.46/rumdl-v0.1.46-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.46/rumdl-v0.1.46-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.46-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.46/rumdl-v0.1.46-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.46/rumdl-v0.1.46-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.46-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.46/rumdl-v0.1.46-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.46/rumdl-v0.1.46-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.46-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.46/rumdl-v0.1.46-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.46/rumdl-v0.1.46-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.46-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.46/rumdl-v0.1.46-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.46/rumdl-v0.1.46-x86_64-pc-windows-msvc.zip.sha256) |

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

