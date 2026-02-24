---
title: rumdl-action
date: 2026-02-24 21:40:57 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.27
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.27**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency and best practices in Markdown files. It automates tasks like linting, formatting, and auto-fixing common Markdown issues, supporting multiple Markdown flavors and detailed error reporting. With its speed, zero dependencies, and CI/CD compatibility, it provides a modern, efficient solution for maintaining Markdown quality in development workflows.

## Release notes


### Fixed

- **MD013**: CRLF line endings are now preserved during semantic-line-breaks reflow,
  fixing false positive warnings in the LSP when editors send Windows-style line
  endings ([#459](https://github.com/rvben/rumdl/issues/459))
- **MD041**: Fix mode now correctly passes the file path to LintContext, enabling
  filename-derived title insertion (`InsertDerived`). Index and README files now
  derive their title from the parent directory name instead of "Index" or "README"
- **MD044**: YAML frontmatter values are now checked as prose while keys, delimiters,
  comments, and flow constructs are skipped. TOML frontmatter keys are also correctly
  skipped ([#448](https://github.com/rvben/rumdl/issues/448))
- **MD044**: Angle-bracket autolinks (`<https://...>`) inside HTML comments are no
  longer flagged for proper name violations. Uses CommonMark autolink pattern matching
  for all valid URI schemes ([#457](https://github.com/rvben/rumdl/issues/457))
- **MD076**: Blank lines required by MD031 (blanks-around-fences) and MD058
  (blanks-around-tables) inside list items are now recognized as structural rather
  than inter-item separators, preventing false positives in tight lists with code
  blocks, tables, or HTML blocks
  ([#455](https://github.com/rvben/rumdl/issues/455))

### Changed

- Removed unused `itertools` dependency


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.27-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.27/rumdl-v0.1.27-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.27/rumdl-v0.1.27-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.27-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.27/rumdl-v0.1.27-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.27/rumdl-v0.1.27-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.27-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.27/rumdl-v0.1.27-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.27/rumdl-v0.1.27-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.27-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.27/rumdl-v0.1.27-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.27/rumdl-v0.1.27-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.27-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.27/rumdl-v0.1.27-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.27/rumdl-v0.1.27-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.27-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.27/rumdl-v0.1.27-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.27/rumdl-v0.1.27-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.27-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.27/rumdl-v0.1.27-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.27/rumdl-v0.1.27-x86_64-pc-windows-msvc.zip.sha256) |

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

