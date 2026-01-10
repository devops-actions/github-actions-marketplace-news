---
title: rumdl-action
date: 2026-01-02 13:11:53 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.0.208
dependentsNumber: "4"
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.0.208**.
- This action is used across all versions by **4** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance linter and formatter for Markdown files, built with Rust for exceptional speed and efficiency. It ensures consistency and best practices in Markdown by providing 57 linting rules, automatic formatting, and intelligent caching for faster operations, making it ideal for CI/CD pipelines and developer workflows. With zero dependencies, modern CLI error reporting, and extensive configuration options, rumdl streamlines Markdown file management while addressing common formatting and style issues.

## Release notes


### Changed

- **Reflow: Replace manual emphasis parsing with pulldown-cmark**
  - Use pulldown-cmark for CommonMark-compliant emphasis, bold, and strikethrough detection
  - Removes ~100 lines of complex manual regex-based emphasis detection
  - Adds GFM strikethrough (`~~text~~`) support to sentence boundary detection

### Fixed

- **Reflow: Continue emphasis markers across sentence splits** (fixes #251)
  - When splitting emphasized text at sentence boundaries, each line now properly retains its emphasis markers
  - Example: `*Sentence one. Sentence two.*` now correctly splits to `*Sentence one.*` and `*Sentence two.*`

- **Reflow: Fix line_length=0 to mean "no wrapping"**
  - Previously `line_length=0` would wrap after every word due to condition always being true
  - Now correctly treats 0 as "unlimited line length" (no wrapping)

- **MD007: Resolve false positives on nested unordered lists in ordered lists** (fixes #247)
  - Nested unordered lists inside ordered lists now calculate expected indent based on parent's content column
  - Fixes ping-pong bug where MD007 fix would then trigger MD005, destroying nesting structure

- **MD009: Correct byte offset calculation for multi-byte characters**
  - Column positions now correctly account for UTF-8 multi-byte characters
  - Fixes incorrect warning positions when lines contain non-ASCII characters

- **MD027: Continue HTML block detection until blank line after closing tag**
  - CommonMark type 6 HTML blocks (like `<table>`) now correctly extend until the first blank line
  - Prevents false positives for blockquote indentation inside HTML tables

- **MD034: Resolve false positives for URLs in angle brackets and parentheses**
  - URLs inside angle brackets (`<https://example.com>`) no longer trigger bare URL warnings
  - URLs inside parentheses with descriptions are properly handled

- **MD037: Mask inline math spans before emphasis detection**
  - Asterisks inside inline math (`$p * q$`) no longer interfere with emphasis detection
  - Fixes false negatives where valid `* spaced emphasis *` was not detected

- **MD051: URL-decode CJK fragments before anchor matching**
  - Japanese, Korean, and Chinese heading fragments are now properly matched
  - URL-encoded fragments (e.g., `#%E6%97%A5%E6%9C%AC%E8%AA%9E`) correctly resolve to decoded anchors

- **MD057: Resolve false positives for email addresses and file references**
  - Email-style patterns and file references with @ symbols no longer trigger GitHub username warnings

- **MD069: Resolve false positives for nested strikethrough**
  - Properly handles strikethrough markers that appear in nested contexts

- **Config: Handle relative paths in find_project_root_from**
  - Configuration discovery now works correctly with relative file paths

- **Reflow: Preserve Hugo shortcodes as atomic elements**
  - Hugo shortcodes (`{{</* */>}}` and `{{%/* */%}}`) are no longer broken across lines during text reflow


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.0.208-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.208/rumdl-v0.0.208-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.208/rumdl-v0.0.208-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.208-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.208/rumdl-v0.0.208-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.208/rumdl-v0.0.208-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.208-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.208/rumdl-v0.0.208-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.208/rumdl-v0.0.208-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.208-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.208/rumdl-v0.0.208-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.208/rumdl-v0.0.208-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.208-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.208/rumdl-v0.0.208-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.208/rumdl-v0.0.208-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.208-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.208/rumdl-v0.0.208-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.208/rumdl-v0.0.208-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.208-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.0.208/rumdl-v0.0.208-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.208/rumdl-v0.0.208-x86_64-pc-windows-msvc.zip.sha256) |

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

