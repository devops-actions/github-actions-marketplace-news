---
title: rumdl-action
date: 2026-03-08 05:49:31 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.43
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.43**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The `rumdl` GitHub Action is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistent formatting and adherence to best practices in Markdown files. It automates tasks like linting, formatting, and auto-fixing Markdown code, offering fast performance, support for multiple Markdown flavors, and seamless CI/CD integration. Its key capabilities include 71 lint rules, automatic formatting, and high configurability with zero dependencies, making it an efficient tool for developers and teams.

## Release notes


### Added

- **LSP**: Add `textDocument/rename` support for markdown headings — rename a
  heading and all references to it update automatically
- **CLI**: Add `"fixed"` field to JSON output when `--fix` is active, showing
  how many issues were auto-fixed
- **CLI**: `--fix` now works with batch output formats (JSON, GitLab, SARIF,
  JUnit) instead of silently skipping fixes
  ([#498](https://github.com/rvben/rumdl/issues/498))
- **SARIF**: Add `baselineState` field to SARIF output for baseline comparison

### Fixed

- **Fix mode**: Respect inline disable comments (`<!-- rumdl-disable -->`) in
  `--fix` mode — previously, disabled rules could still apply fixes
- **MD037**: Skip HTML blocks when detecting spaces around emphasis markers,
  preventing false positives on HTML attributes containing `*` or `_`
- **MD037**: Skip inline HTML code elements (e.g., `<code>*text*</code>`) to
  prevent false positives on emphasis-like patterns inside HTML tags
- **MD042**: Skip frontmatter lines to prevent false positives on YAML keys
  that look like empty links
- **MD051**: Allow digit-starting custom anchor IDs (e.g., `{#1-intro}`)
- **MD076**: Detect inconsistent spacing when code blocks are inside list items
- **MDX**: Improve compatibility by skipping JSX/MDX content in 7 rules

### Changed

- **MD070**: Changed to opt-in rule. Its auto-fix modifies document structure
  and can cause false positives on documentation files showing code examples.
  Enable with `extend-enable = ["MD070"]`
  ([#502](https://github.com/rvben/rumdl/issues/502))
- **CLI**: Simplify fix mode output for structured formats
- Upgrade Rust toolchain from 1.91.0 to 1.94.0

### Performance

- **MD053**: Optimize link definition matching with binary search and
  forward-tracking


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.43-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.43/rumdl-v0.1.43-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.43/rumdl-v0.1.43-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.43-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.43/rumdl-v0.1.43-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.43/rumdl-v0.1.43-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.43-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.43/rumdl-v0.1.43-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.43/rumdl-v0.1.43-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.43-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.43/rumdl-v0.1.43-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.43/rumdl-v0.1.43-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.43-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.43/rumdl-v0.1.43-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.43/rumdl-v0.1.43-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.43-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.43/rumdl-v0.1.43-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.43/rumdl-v0.1.43-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.43-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.43/rumdl-v0.1.43-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.43/rumdl-v0.1.43-x86_64-pc-windows-msvc.zip.sha256) |

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

