---
title: rumdl-action
date: 2026-02-24 05:42:13 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.26
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.26**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter, built in Rust, that ensures consistency and best practices in Markdown files. It automates tasks such as detecting and fixing common Markdown issues, providing 57 linting rules, automatic formatting, and support for multiple Markdown flavors (e.g., GFM, MkDocs, MDX). Designed for speed and ease of use, rumdl is highly configurable, lightweight (no runtime dependencies), and ideal for CI/CD workflows and editor integrations.

## Release notes


### Added

- **MD076**: New rule for list item spacing — enforces consistent use of blank lines
  between list items
- **LSP**: Markdown link target completion — autocomplete file paths and headings when
  typing link destinations ([#434](https://github.com/rvben/rumdl/issues/434))
- **MD041**: Extended fix support for HTML block preamble, plain text titles, and
  directive-only documents ([#398](https://github.com/rvben/rumdl/issues/398))

### Fixed

- **MD001**: Empty ATX headings (e.g., `# ` with no text) are now preserved during
  heading level conversion instead of being deleted, fixing non-idempotent fix behavior
- **MD012**: Excess blank lines around headings are now flagged using MD022's configured
  limits, preventing conflicts between the two rules
  ([#429](https://github.com/rvben/rumdl/issues/429),
  [#449](https://github.com/rvben/rumdl/issues/449))
- **MD013**: Lines whose only content is a link or image (including in list items,
  blockquotes, and with emphasis wrappers) are now exempt from line length checks in
  non-strict mode, since they cannot be shortened
  ([#452](https://github.com/rvben/rumdl/issues/452))
- **MD013**: URLs with balanced parentheses (e.g., Wikipedia links like
  `Rust_(programming_language)`) are now correctly recognized as standalone links
- **MD013**: Ordered list task checkboxes (`1. [x] [link](url)`) are now correctly
  detected in standalone link exemption and text reflow
- **MD025**: Frontmatter `title` field is now counted as the first H1 when checking for
  single title ([#450](https://github.com/rvben/rumdl/issues/450))
- **MD044**: HTML comments are now checked for proper names by default (previously
  skipped due to config default mismatch)
  ([#446](https://github.com/rvben/rumdl/issues/446))
- **MD044**: Inline config directives (`<!-- rumdl-disable -->`,
  `<!-- markdownlint-enable -->`) are no longer flagged when the directive keyword
  matches a configured proper name
- **MD044**: YAML frontmatter keys are no longer flagged as improperly capitalized
  proper names ([#448](https://github.com/rvben/rumdl/issues/448))
- **MD052**: Added missing `default_config_section` for config validation
  ([#451](https://github.com/rvben/rumdl/issues/451))
- **MD063**: Precomposed Unicode characters (e.g., Greek `ῷ`) are no longer decomposed
  during case conversion, fixing non-idempotent fix behavior

### Changed

- **MD063**: Removed dependency on external `titlecase` crate; title case logic is now
  fully handled by the built-in implementation

- **MD013**: Refactored standalone link detection to reuse shared
  `extract_list_marker_and_content` utility, also fixing ordered list task checkbox
  handling in text reflow


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.26-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.26/rumdl-v0.1.26-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.26/rumdl-v0.1.26-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.26-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.26/rumdl-v0.1.26-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.26/rumdl-v0.1.26-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.26-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.26/rumdl-v0.1.26-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.26/rumdl-v0.1.26-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.26-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.26/rumdl-v0.1.26-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.26/rumdl-v0.1.26-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.26-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.26/rumdl-v0.1.26-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.26/rumdl-v0.1.26-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.26-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.26/rumdl-v0.1.26-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.26/rumdl-v0.1.26-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.26-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.26/rumdl-v0.1.26-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.26/rumdl-v0.1.26-x86_64-pc-windows-msvc.zip.sha256) |

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

