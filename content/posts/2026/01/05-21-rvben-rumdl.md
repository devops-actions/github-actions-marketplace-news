---
title: rumdl-action
date: 2026-01-05 21:20:11 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.0.210
dependentsNumber: "4"
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.0.210**.
- This action is used across all versions by **4** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter built with Rust to ensure consistency and best practices in Markdown files. It automates tasks such as detecting and fixing Markdown issues, formatting files, and integrating seamlessly into CI/CD workflows, while offering speed, detailed error reporting, and zero dependencies. Its capabilities include support for 57 lint rules, intelligent caching for faster re-linting, and extensive configuration options, making it ideal for developers and teams focused on efficient Markdown file management.

## Release notes


### Added

- **MD071: Blank line after frontmatter** (new rule)
  - Enforces a blank line between frontmatter closing delimiter and document content
  - Supports YAML (`---`) and TOML (`+++`) frontmatter formats
  - Auto-fixable

- **MD072: Frontmatter key sort** (new rule, disabled by default)
  - Checks that frontmatter keys are sorted alphabetically
  - Supports YAML and TOML frontmatter
  - Configurable `ignore` list for keys to exclude from sorting
  - Enable with `MD072.enabled = true` in configuration
  - Auto-fixable

### Fixed

- **MD022: Support kramdown Inline Attribute Lists** (fixes #259)
  - IAL syntax like `{: .class #id}` immediately after headings no longer triggers blank line warnings
  - IAL lines are treated as part of the heading element
  - Multiple consecutive IAL lines supported
  - Fix function preserves IAL attachment to headings

- **MD046: Use pulldown-cmark for code block detection**
  - More reliable code block detection using CommonMark-compliant parser
  - Fixes edge cases with nested and consecutive code blocks

- **MD072: Fix JSON depth tracking and regex initialization**
  - Use LazyLock for regex to avoid recompilation
  - Fix JSON nested object depth tracking when extracting keys

- **MD072: Stop at TOML table headers when extracting keys**
  - TOML table headers like `[section]` now properly terminate key extraction


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.0.210-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.210/rumdl-v0.0.210-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.210/rumdl-v0.0.210-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.210-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.210/rumdl-v0.0.210-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.210/rumdl-v0.0.210-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.210-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.210/rumdl-v0.0.210-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.210/rumdl-v0.0.210-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.210-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.210/rumdl-v0.0.210-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.210/rumdl-v0.0.210-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.210-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.210/rumdl-v0.0.210-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.210/rumdl-v0.0.210-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.210-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.210/rumdl-v0.0.210-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.210/rumdl-v0.0.210-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.210-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.0.210/rumdl-v0.0.210-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.210/rumdl-v0.0.210-x86_64-pc-windows-msvc.zip.sha256) |

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

