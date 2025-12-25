---
title: rumdl-action
date: 2025-12-25 21:13:03 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.0.203
dependentsNumber: "1"
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.0.203**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency and enforce best practices in Markdown files. It automates tasks such as detecting and fixing common Markdown issues, providing fast performance, detailed error reporting, and integration with CI/CD workflows. With zero runtime dependencies, extensive configuration options, and support for multiple installation methods, it offers a modern and efficient solution for maintaining Markdown quality in diverse development environments.

## Release notes


### Added

- **Config: Implement Ruff-style config inheritance model**
  - User config (`~/.config/rumdl/`) now serves as base, project config extends it
  - Project-level `enable`/`disable` are additive to user config by default
  - Clear precedence: CLI flags > project config > user config > defaults

- **MD001: Recognize frontmatter `title` as implicit H1**
  - Documents with `title:` in YAML frontmatter no longer require an H1 heading
  - Aligns with common static site generator behavior (Jekyll, Hugo, etc.)

### Fixed

- **MD057/MD051: Skip wikilinks in cross-file validation** (fixes #235)
  - Wikilinks (`[[page]]`) were incorrectly triggering "relative link does not exist" warnings
  - Wikilinks use a different linking system (Obsidian, etc.) and should not be validated as file paths

- **MD057: Fix LSP diagnostic position for cross-file links** (fixes #234)
  - LSP was pointing to link text `[...]` instead of URL `(...)`
  - Now correctly highlights the URL portion in editor diagnostics

- **MD012: Remove all trailing blank lines at EOF**
  - Previously only removed one trailing blank line per fix pass
  - Now removes all consecutive trailing blank lines in a single fix

- **Config: Add missing aliases for MD062/MD064/MD065 rules** (fixes #232)
  - Added kebab-case aliases for newer rules
  - Fixed MD069 typo in alias registration

- **CLI: Fail fast when `--config` conflicts with `--no-config`/`--isolated`**
  - These flags are contradictory and now produce a clear error instead of silently ignoring one

- **Cross-file validation: Fix duplicate warnings for same link**
  - MD051 and MD057 both contribute links to the workspace index with different column positions
  - Deduplication now ignores column differences, preventing duplicate warnings


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.0.203-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.203/rumdl-v0.0.203-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.203/rumdl-v0.0.203-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.203-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.203/rumdl-v0.0.203-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.203/rumdl-v0.0.203-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.203-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.203/rumdl-v0.0.203-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.203/rumdl-v0.0.203-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.203-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.203/rumdl-v0.0.203-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.203/rumdl-v0.0.203-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.203-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.203/rumdl-v0.0.203-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.203/rumdl-v0.0.203-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.203-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.203/rumdl-v0.0.203-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.203/rumdl-v0.0.203-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.203-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.0.203/rumdl-v0.0.203-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.203/rumdl-v0.0.203-x86_64-pc-windows-msvc.zip.sha256) |

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

