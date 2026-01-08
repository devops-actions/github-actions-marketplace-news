---
title: rumdl-action
date: 2026-01-08 05:30:52 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.0.212
dependentsNumber: "4"
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.0.212**.
- This action is used across all versions by **4** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency and best practices in Markdown files. It automates the detection and resolution of common Markdown issues, provides fast linting and formatting capabilities, and is optimized for speed with features like intelligent caching and CI/CD integration. Key capabilities include automatic formatting, configurable rules, and support for multiple installation options and developer workflows.

## Release notes


### Added

- **CLI: Show relative file paths in output by default** (fixes #266)
  - Add `--show-full-path` flag to opt into absolute paths
  - All output formats (text, JSON, SARIF, GitHub, GitLab, JUnit) now consistently use paths relative to project root or CWD

### Fixed

- **LSP: Respect FormattingOptions in formatting handler** (fixes #265)
  - `insertFinalNewline`: Add trailing newline if missing
  - `trimFinalNewlines`: Remove extra trailing newlines at EOF
  - `trimTrailingWhitespace`: Remove trailing whitespace from all lines
  - Applies FormattingOptions after lint fixes to match editor preferences

- **Fix coordinator: Re-check all rules after each fix for idempotency** (fixes #271)
  - `rumdl check --fix` now produces idempotent results
  - After each fix, all rules are re-checked with fresh LintContext
  - Handles cascading fixes (e.g., MD046 → MD040) in a single run

- **MD046: Preserve code indentation and skip MkDocs admonitions** (fixes #269, #270)
  - Converting fenced to indented code blocks now preserves internal indentation
  - MkDocs admonitions (`!!! note`, `??? warning`, `???+ tip`) are properly skipped

- **MD012: Fix EOF blank line removal in LSP formatting** (fixes #264)
  - Warning's fix replacement now correctly removes blank lines at EOF

- **MD072: Improved frontmatter key sorting** (fixes #265)
  - Use line-based reordering to preserve original YAML formatting
  - Fixed config warning about "unknown option: enabled"
  - Compute fix in check() to enable LSP formatting


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.0.212-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.212/rumdl-v0.0.212-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.212/rumdl-v0.0.212-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.212-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.212/rumdl-v0.0.212-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.212/rumdl-v0.0.212-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.212-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.212/rumdl-v0.0.212-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.212/rumdl-v0.0.212-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.212-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.212/rumdl-v0.0.212-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.212/rumdl-v0.0.212-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.212-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.212/rumdl-v0.0.212-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.212/rumdl-v0.0.212-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.212-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.212/rumdl-v0.0.212-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.212/rumdl-v0.0.212-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.212-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.0.212/rumdl-v0.0.212-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.212/rumdl-v0.0.212-x86_64-pc-windows-msvc.zip.sha256) |

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

