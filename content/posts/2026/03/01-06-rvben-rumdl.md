---
title: rumdl-action
date: 2026-03-01 06:08:31 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.33
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.33**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency and best practices in Markdown files. It automates the detection and correction of common Markdown issues with 57 lint rules, supports multiple Markdown flavors, and provides a fast, configurable, and dependency-free tool suitable for both local development and CI/CD workflows. Its speed and user-friendly CLI make it an efficient alternative to other Markdown linting tools.

## Release notes


### Added

- **CLI**: Add `--fixable` and `--unfixable` flags to control which rules are
  allowed to auto-fix. `--fixable` acts as an allowlist (only listed rules can
  fix), `--unfixable` acts as a blocklist (takes precedence). Both accept
  comma-separated rule names or aliases
  ([#472](https://github.com/rvben/rumdl/issues/472))

### Fixed

- **CLI**: Resolve rule name aliases in `fixable`/`unfixable` config lists so
  that aliases like `commands-show-output` correctly match canonical names like
  `MD014`
- **Rules**: Detect links and images inside MkDocs admonitions, content tabs,
  and markdown HTML blocks
- **Docs**: Fix incorrect MD014 documentation that claimed the rule cannot be
  auto-fixed — it removes `$` prompts from commands without output, matching
  markdownlint-cli behavior ([#473](https://github.com/rvben/rumdl/issues/473))

### Changed

- **Docs**: Add feature comparison matrix and cold start benchmarks for all 8
  comparison tools


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.33-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.33/rumdl-v0.1.33-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.33/rumdl-v0.1.33-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.33-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.33/rumdl-v0.1.33-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.33/rumdl-v0.1.33-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.33-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.33/rumdl-v0.1.33-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.33/rumdl-v0.1.33-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.33-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.33/rumdl-v0.1.33-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.33/rumdl-v0.1.33-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.33-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.33/rumdl-v0.1.33-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.33/rumdl-v0.1.33-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.33-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.33/rumdl-v0.1.33-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.33/rumdl-v0.1.33-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.33-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.33/rumdl-v0.1.33-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.33/rumdl-v0.1.33-x86_64-pc-windows-msvc.zip.sha256) |

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

