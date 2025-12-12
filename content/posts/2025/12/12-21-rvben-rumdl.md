---
title: rumdl-action
date: 2025-12-12 21:17:26 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.0.194
dependentsNumber: "0"
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.0.194**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Release notes


### Added

- **LSP: workspace/didChangeConfiguration support**
  - LSP server now responds to configuration change notifications
  - Improved robustness and error handling in language server

- **Config: Typestate pattern for configuration validation**
  - Compile-time guarantees for configuration correctness
  - Invalid configurations are caught earlier in the pipeline

- **CI: GitHub Marketplace branding for GitHub Action**
  - Action now has proper branding for Marketplace visibility

### Fixed

- **MD057 (relative-links): Handle template variables and extensionless links**
  - Template syntax (Handlebars, Mustache, Jinja2) like `{{URL}}` now recognized and skipped
  - Extensionless links like `[Page](page)` now resolve to `page.md`
  - All URI schemes (file://, smb://, macappstores://, etc.) properly excluded (fixes #192)

- **Config: Remove misleading GFM/CommonMark warnings (fixes #195)**
  - `gfm` and `commonmark` flavors now silently work as expected
  - Parser already supports GFM extensions (tables, task lists, strikethrough)

- **Config: Discover markdownlint config via upward directory traversal**
  - `.markdownlint.yaml` and similar files now found in parent directories
  - Matches behavior of other linting tools

- **MD007 (ul-indent): Handle tab characters after blockquote markers**
  - Tab indentation after `>` marker now calculated correctly
  - Fixes false positives for lists in blockquotes with tabs

- **MD012 (no-multiple-blanks): Skip blank lines inside indented code blocks**
  - Blank lines within indented code blocks no longer trigger warnings

- **MD030 (list-marker-space): Analyze blockquoted list content correctly**
  - Lists inside blockquotes now properly analyzed instead of skipped

- **MD053 (link-image-reference-definitions): Recognize colons in reference labels**
  - Reference definitions with colons in the label (e.g., `[foo:bar]:`) now detected

- **lint_context: Check entire line for HTML comment marking**
  - Lines with inline comments (`<!-- comment --> content`) now handled correctly
  - Content after `-->` on the same line is properly processed

- **lint_context: Add missing HTML5 block elements**
  - Added: audio, video, source, track, canvas, svg, iframe, embed, object, menu, summary, noscript, search, template

- **lint_context: Handle nested blockquotes and JS comments in ESM blocks**
  - Improved parsing for complex nested structures

- **table_utils: Exclude list items from table row detection**
  - List items containing pipes no longer confused with table rows

- **lib: Handle mutex poisoning gracefully instead of panicking**
  - Recovers from poisoned mutexes for better stability

### Changed

- **Internal: Replace `Mutex<Option<Arc<T>>>` with `OnceLock`**
  - Cleaner initialization pattern for shared state

- **Internal: Replace tuple return with `FixResult` struct**
  - More descriptive return type for fix operations

### Documentation

- **README: Clarify markdownlint config upward traversal behavior**


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.0.194-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.194/rumdl-v0.0.194-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.194/rumdl-v0.0.194-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.194-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.194/rumdl-v0.0.194-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.194/rumdl-v0.0.194-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.194-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.194/rumdl-v0.0.194-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.194/rumdl-v0.0.194-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.194-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.194/rumdl-v0.0.194-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.194/rumdl-v0.0.194-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.194-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.194/rumdl-v0.0.194-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.194/rumdl-v0.0.194-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.194-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.194/rumdl-v0.0.194-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.194/rumdl-v0.0.194-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.194-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.0.194/rumdl-v0.0.194-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.194/rumdl-v0.0.194-x86_64-pc-windows-msvc.zip.sha256) |

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

