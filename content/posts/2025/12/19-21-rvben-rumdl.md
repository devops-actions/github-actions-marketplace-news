---
title: rumdl-action
date: 2025-12-19 21:09:19 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.0.196
dependentsNumber: "0"
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.0.196**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Release notes


### Added

- **MD064 (no-multiple-consecutive-spaces): New rule to collapse multiple consecutive spaces** (thanks @mawkler in #202)
  - Flags multiple consecutive spaces (2+) in markdown prose
  - Provides auto-fix to collapse them to single space
  - Skips spaces in code, tables, HTML, front matter, and markdown syntax markers

- **MD065 (blanks-around-horizontal-rules): New rule to enforce blank lines around horizontal rules**
  - Ensures horizontal rules have blank lines before and after
  - Provides auto-fix to add missing blank lines
  - Skips Setext heading underlines

- **MD066 (valid-footnote-definition): New rule to validate footnote definitions**
  - Checks footnote definitions have proper syntax
  - Validates footnote labels are non-empty

- **MD067 (no-empty-footnote-ref): New rule to flag empty footnote references**
  - Detects footnote references with empty labels like `[^]`

- **MD068 (no-space-in-footnote-ref): New rule to flag spaces in footnote references**
  - Detects footnote references with spaces like `[^ note]`

### Fixed

- **WASM: Convert byte offsets to character offsets for JavaScript**
  - Fixes crashes in Obsidian plugin when applying fixes to content with multi-byte UTF-8 characters (Norwegian letters, emoji, etc.)

- **MD027 (no-multiple-space-blockquote): Skip list continuation indentation**
  - No longer reports false positives for properly indented list continuations in blockquotes

- **MD032 (blanks-around-lists): Detect thematic breaks as list terminators**
  - Thematic breaks (horizontal rules) now correctly terminate lists

- **MD036 (no-emphasis-as-heading): Skip emphasis inside HTML comments**
  - No longer reports false positives for emphasis markers in HTML comments

- **MD041 (first-line-heading): Skip badge images before headings**
  - Badge images at the start of a file no longer prevent heading detection

- **MD046 (code-block-style): Skip code blocks inside HTML comments**
  - No longer reports false positives for code blocks in HTML comments

- **MD051 (link-fragments): Recognize HTML and attribute anchors**
  - Cross-file fragment validation now recognizes anchors from HTML id attributes

- **MD057 (relative-links): Check for markdown source when .html link doesn't exist**
  - Links to `.html` files now check for corresponding `.md` source files


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.0.196-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.196/rumdl-v0.0.196-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.196/rumdl-v0.0.196-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.196-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.196/rumdl-v0.0.196-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.196/rumdl-v0.0.196-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.196-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.196/rumdl-v0.0.196-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.196/rumdl-v0.0.196-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.196-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.196/rumdl-v0.0.196-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.196/rumdl-v0.0.196-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.196-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.196/rumdl-v0.0.196-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.196/rumdl-v0.0.196-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.196-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.196/rumdl-v0.0.196-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.196/rumdl-v0.0.196-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.196-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.0.196/rumdl-v0.0.196-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.196/rumdl-v0.0.196-x86_64-pc-windows-msvc.zip.sha256) |

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

