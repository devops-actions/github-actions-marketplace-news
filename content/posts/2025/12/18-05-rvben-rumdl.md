---
title: rumdl-action
date: 2025-12-18 05:19:34 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.0.195
dependentsNumber: "0"
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.0.195**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Release notes


### Added

- **MD063 (heading-capitalization): New rule for heading capitalization style**
  - Enforces consistent capitalization in headings (Title Case, Sentence case, or lowercase)
  - Preserves all-caps acronyms (e.g., "API", "HTTP", "AWS") in title case mode
  - Configurable via `MD063.style` option

### Fixed

- **MD012 (no-multiple-blanks): Detect blank lines across skipped regions**
  - Fixed detection of consecutive blank lines when frontmatter or code blocks are between them

- **MD013 (line-length): Check individual line lengths in reflow default mode**
  - Each line is now checked separately when reflow-mode is enabled

- **MD014 (commands-show-output): Improve message accuracy**
  - Better error messages and principled skip list for code blocks

- **MD018/MD023: Skip GitHub issue refs and hashtags in heading detection**
  - Lines like `#123` or `#hashtag` no longer falsely detected as ATX headings

- **MD033 (no-inline-html): Fix false positives**
  - Skip angle brackets inside link reference definition titles
  - Remove incorrect indentation-based code block skip

- **MD034 (no-bare-urls): Fix multiple edge cases**
  - Detect `www.example.com` as bare URL
  - Handle link reference definitions with titles
  - Resolve false positives in code spans

- **MD037 (no-space-in-emphasis): Skip template shortcode syntax**
  - Template syntax like `{* ... *}` no longer triggers false positives

- **MD042 (no-empty-links): Only flag empty URLs**
  - Links with text but empty URL are flagged; empty text is no longer an error

- **MD049 (emphasis-style): Report both opening and closing markers**
  - Warnings now point to both `*` or `_` markers in emphasis pairs

- **MD056 (table-column-count): Escape pipes in inline code**
  - Pipes inside inline code in tables no longer cause column count errors

- **MD057 (relative-links): Multiple path handling improvements**
  - Handle URL-encoded filenames (e.g., `%20` for spaces)
  - Support framework aliases (e.g., `@/` for src directory)
  - Handle angle-bracket paths (e.g., `<path/to/file.md>`)
  - Skip validation of absolute URL paths
  - Strip query parameters from URLs before file existence check

- **MD063: Preserve all-caps acronyms in title case headings**
  - Words like "API", "HTTP", "URL" maintain uppercase in title case mode

- **CLI: Fix exit code and messaging**
  - Return exit code 0 when all violations are fixed
  - Show accurate message when all violations are fixed

- **Heading detection: Skip multiline link syntax**
  - Lines inside multiline link definitions no longer falsely detected as headings

- **Internal: Add is_valid field and iterator for CommonMark headings**
  - Improved heading validation for rules that depend on heading structure

### Changed

- **MD059: Update alias to 'descriptive-link-text'** (thanks @martimlobao in #201)
  - Rule can now be referenced as `descriptive-link-text` in configurations

### Documentation

- **MD050: Document intentional deviation from markdownlint**
  - Clarified differences in emphasis style checking behavior


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.0.195-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.195/rumdl-v0.0.195-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.195/rumdl-v0.0.195-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.195-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.195/rumdl-v0.0.195-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.195/rumdl-v0.0.195-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.195-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.195/rumdl-v0.0.195-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.195/rumdl-v0.0.195-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.195-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.195/rumdl-v0.0.195-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.195/rumdl-v0.0.195-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.195-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.195/rumdl-v0.0.195-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.195/rumdl-v0.0.195-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.195-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.195/rumdl-v0.0.195-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.195/rumdl-v0.0.195-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.195-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.0.195/rumdl-v0.0.195-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.195/rumdl-v0.0.195-x86_64-pc-windows-msvc.zip.sha256) |

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

