---
title: rumdl-action
date: 2026-03-14 06:04:45 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.48
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.48**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The `rumdl` GitHub Action is a high-performance linter and formatter for Markdown files, designed for speed and efficiency using Rust. It automates the detection and correction of Markdown issues, ensuring consistency and adherence to best practices across various Markdown flavors (e.g., GFM, MkDocs, MDX). Its key capabilities include fast linting, automatic formatting, intelligent caching for incremental updates, and seamless integration into CI/CD pipelines, making it ideal for maintaining clean and standardized Markdown documentation.

## Release notes


### Performance

- Replace O(n²) linear scans with binary search across hot paths in table detection, element parsing, math span checks, link/image lookups, and footnote scanning
- Eliminate redundant `Parser::new_ext()` calls in MD029, MD031, MD050, and MD054
- Merge link and image parsers into a single pulldown-cmark pass, reducing parsing overhead in `LintContext`
- Pre-compute link title ranges and lazy continuation detection in `LintContext` cache for binary search
- Replace FancyRegex with standard regex in MD020, MD034, MD044, MD053, MD066, MD067, and list_utils
- **MD035**: Replace 6 regex patterns with char-based thematic break detection
- **MD033**: Use binary search for HTML element lookups and windowed regex matching for tag parsing
- **MD034**: Skip regex passes on lines without relevant URL constructs
- **MD057**: Reuse `LintContext` code spans instead of redundant `ElementCache` parsing
- **Code block tools**: Skip redundant pulldown-cmark parse when no matching code blocks exist

### Fixed

- **MD007**: Blockquoted lists no longer corrupt the parent list indent stack
- **MD013**: Reflow now handles nested unordered list items and checkbox continuations correctly
- **MD013**: Blank lines between parent and nested list items are preserved during reflow
- **MD013**: Link reference definitions with titles are exempt from line length warnings
- **MD013**: MkDocs checkbox continuation indent uses base marker width
- **MD066/MD067**: Mid-line `[^id]:` is now treated as a reference, not a footnote definition
- **Code block tools**: Formatter no longer erases content when tool produces empty output
- **Code block tools**: Add missing format suffixes for tool detection

### Changed

- Corrected rule trait metadata (names and descriptions) across 35 rules
- Replaced `CodeRangesWithDetails` tuple with named `ParseResult` struct for clarity
- Deleted `ElementCache` struct, 31 dead regex patterns, and 8 dead utility functions from `regex_cache`
- Converted all remaining FancyRegex patterns to standard regex


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.48-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.48/rumdl-v0.1.48-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.48/rumdl-v0.1.48-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.48-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.48/rumdl-v0.1.48-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.48/rumdl-v0.1.48-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.48-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.48/rumdl-v0.1.48-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.48/rumdl-v0.1.48-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.48-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.48/rumdl-v0.1.48-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.48/rumdl-v0.1.48-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.48-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.48/rumdl-v0.1.48-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.48/rumdl-v0.1.48-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.48-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.48/rumdl-v0.1.48-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.48/rumdl-v0.1.48-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.48-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.48/rumdl-v0.1.48-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.48/rumdl-v0.1.48-x86_64-pc-windows-msvc.zip.sha256) |

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

