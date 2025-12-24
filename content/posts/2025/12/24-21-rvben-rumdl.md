---
title: rumdl-action
date: 2025-12-24 21:10:30 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.0.201
dependentsNumber: "1"
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.0.201**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter built with Rust to ensure consistency and best practices in Markdown files. It automates linting, formatting, and error detection with 57 customizable rules, offering speed, zero dependencies, and compatibility with various development workflows, including CI/CD pipelines. Its caching mechanism and modern CLI make it efficient and user-friendly for both individual and collaborative projects.

## Release notes


### Added

- **CLI: Add `--fail-on` flag to control exit code by severity**
  - Configure minimum severity level that triggers non-zero exit code
  - Options: `error` (default), `warning`, `info`
  - `--fail-on warning` exits non-zero on warnings or errors
  - `--fail-on info` exits non-zero on any diagnostic
  - Useful for CI/CD pipelines with different strictness levels

- **Severity: Add Info severity level for low-priority issues**
  - New severity level below Warning for informational diagnostics
  - Allows rules to report suggestions without affecting exit codes by default
  - Can be promoted to affect exit codes via `--fail-on info`

- **MD060 (table-column-count): Smart max-width inheritance from MD013**
  - Automatically inherit `max-width` from MD013 `line-length` when not explicitly set
  - Reduces configuration duplication between MD013 and MD060
  - Explicit MD060 `max-width` still takes precedence

### Fixed

- **MD063 (heading-capitalization): Handle inline code at start of heading** (fixes #228)
  - Headings starting with inline code (e.g., `` `code` text ``) now correctly apply sentence case to subsequent text
  - Previously, the word after inline code was incorrectly lowercased
  - Applies to all non-text segments (code, links, HTML) at heading start

- **MD063 (heading-capitalization): Preserve acronyms and brand names in link text**
  - Link text with internal capitals (e.g., `[GitHub](url)`) is now preserved
  - `preserve_cased_words` setting applies to link text, not just plain text
  - Prevents incorrect lowercasing of brand names within links

- **MD063 (heading-capitalization): Handle inline HTML tags**
  - Inline HTML tags like `<kbd>`, `<abbr>`, `<code>` are now recognized as separate segments
  - Prevents HTML tags from interfering with capitalization detection
  - Supports self-closing tags and tags with attributes

- **MD063 (heading-capitalization): Preserve caret notation for control characters**
  - Caret notation like `^A`, `^C`, `^Z` (representing Ctrl+A, Ctrl+C, Ctrl+Z) is preserved
  - Prevents incorrect lowercasing of control character representations
  - Supports full range: `^@` through `^_` and `^A` through `^Z`


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.0.201-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.201/rumdl-v0.0.201-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.201/rumdl-v0.0.201-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.201-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.201/rumdl-v0.0.201-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.201/rumdl-v0.0.201-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.201-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.201/rumdl-v0.0.201-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.201/rumdl-v0.0.201-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.201-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.201/rumdl-v0.0.201-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.201/rumdl-v0.0.201-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.201-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.201/rumdl-v0.0.201-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.201/rumdl-v0.0.201-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.201-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.201/rumdl-v0.0.201-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.201/rumdl-v0.0.201-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.201-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.0.201/rumdl-v0.0.201-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.201/rumdl-v0.0.201-x86_64-pc-windows-msvc.zip.sha256) |

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

