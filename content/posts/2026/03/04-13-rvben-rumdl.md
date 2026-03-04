---
title: rumdl-action
date: 2026-03-04 13:31:39 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.37
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.37**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The `rumdl` GitHub Action is a high-performance Markdown linter and formatter built with Rust. It automates the detection and correction of Markdown issues, ensuring consistency and adherence to best practices across files. With features like 57 lint rules, automatic formatting, intelligent caching, and support for multiple Markdown flavors, it provides a fast, configurable, and dependency-free solution for developers, ideal for CI/CD workflows and editor integrations.

## Release notes


### Fixed

- **MD013**: Resolve false positive for MkDocs 2-space list continuation
  indents when using `semantic-line-breaks` reflow mode. Continuation lines
  at the minimum indent were incorrectly flagged as needing reflow
  ([#484](https://github.com/rvben/rumdl/issues/484))
- **MD013**: Detect actual indent of text content for reflow output instead
  of trimming and re-indenting, which produced incorrect indentation for
  code blocks and nested structures
- **MD013**: Use correct indent threshold for code block detection, fixing
  cases where indented code blocks inside list items were incorrectly
  treated as text for reflow
- **MD028**: Make blank-line scanning functions skip-context-aware (HTML
  comments, frontmatter, code blocks) to prevent false positives on
  blockquote separators
- **MD050**: Resolve check/fix divergence for strong emphasis markers inside
  inline code in table cells
- **MD050**: Add line-level code span detection fallback for inline code
  markers in tables
- **MD051**: Handle escaped backticks correctly in `mask_pipes_in_inline_code`
  for table cell parsing
- **MD051**: Preserve underscores in code spans during GitHub anchor
  generation
- **MD054**: Skip alert/callout syntax (e.g., `[!NOTE]`) in shortcut link
  detection to avoid false positives
- **MD056**: Remove duplicate `split_row_into_cells` function, consolidate
  table cell parsing
- **Rules**: Correct CommonMark compliance and close audit gaps across
  multiple rules

### Changed

- **Dependencies**: Update all dependencies including major bumps:
  `toml` 0.9 → 1.0, `toml_edit` 0.24 → 0.25, `jsonschema` 0.37 → 0.44.
  Remove unused `rand` dev-dependency. ~80 crates updated to latest
  compatible versions
- **CI**: Update ryl-pre-commit to v0.4.0


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.37-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.37/rumdl-v0.1.37-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.37/rumdl-v0.1.37-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.37-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.37/rumdl-v0.1.37-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.37/rumdl-v0.1.37-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.37-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.37/rumdl-v0.1.37-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.37/rumdl-v0.1.37-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.37-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.37/rumdl-v0.1.37-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.37/rumdl-v0.1.37-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.37-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.37/rumdl-v0.1.37-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.37/rumdl-v0.1.37-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.37-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.37/rumdl-v0.1.37-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.37/rumdl-v0.1.37-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.37-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.37/rumdl-v0.1.37-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.37/rumdl-v0.1.37-x86_64-pc-windows-msvc.zip.sha256) |

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

