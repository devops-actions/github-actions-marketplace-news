---
title: rumdl-action
date: 2026-02-26 21:31:04 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.30
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.30**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The GitHub Action "rumdl" is a high-performance Markdown linter and formatter built with Rust. It automates the process of identifying and correcting issues in Markdown files, ensuring consistency, best practices, and compatibility across various Markdown flavors. Designed for speed and efficiency, it provides features like configurable linting rules, automatic formatting, and seamless integration with CI/CD pipelines.

## Release notes


### Added

- **CLI**: `rumdl init` now supports `--preset` flag with `default`, `google`, and
  `relaxed` variants, and `--output` flag for custom file paths. The Google preset
  follows Google's developer documentation style guide; the relaxed preset disables
  noisy rules and uses consistent style detection
  ([#468](https://github.com/rvben/rumdl/issues/468))

### Fixed

- **MD076**: Blank lines required by MD031 (blanks-around-fences) or MD058
  (blanks-around-tables) inside list items are now classified as structural and
  excluded from the loose/tight consistency calculation. Previously, indented code
  blocks inside loose lists triggered false "Missing blank line between list items"
  warnings ([#461](https://github.com/rvben/rumdl/issues/461))
- **MD020**: Fix byte-offset vs character-position handling for column reporting
  with Unicode content
- **MD038**: Fix panic on CJK text by converting character positions to byte offsets
  before slicing
- **MD054**: Correct column indexing for code span detection and match range
  calculation
- **MD057**: Fix image URL byte offset calculation that used character-based offset
  as byte offset
- **MD060**: Use Unicode width for table alignment detection so CJK-heavy tables
  are recognized correctly
- **MD063**: Use sentinel value for unfound word positions to prevent false canonical
  form matches at byte offset 0
- **MD010**: Restore distinction between fenced code blocks (skip) and indented code
  blocks (flag tabs) that was lost when switching to LintContext
- **MD035**: Skip HR-style checking inside MkDocs HTML markdown blocks where `---`
  separators are used for grid cards
- **MD052**: Replace manual fenced-code-block tracking with LintContext's pre-computed
  `in_code_block` field
- **MD009**: Remove dead branch in fix replacement that could never execute
- **MD011**: Rewrite fix mode to reuse check results instead of maintaining a parallel
  implementation
- **MD025**: Use whole-word matching for section indicators to prevent false positives
  (e.g., "Indexing" matching the "index" indicator)
- **MD029**: Include `)` in quick-check early return so parenthesis-style ordered lists
  are not silently skipped
- **MD040**: Use 1-indexed line/column for config error warnings instead of invalid
  (0,0)
- **MD041**: Compute actual fix replacements in check mode instead of emitting
  empty-string placeholders that would delete content if applied
- **MD050**: Delegate HTML tag boundary check to shared method so check and fix use
  identical logic
- **MD064**: Fix `leading_spaces` calculation in reference link detection to use
  original line, not already-trimmed string
- **MD072**: Track `in_string` state when counting JSON braces/brackets so braces
  inside string values don't break nesting depth calculation
- **MD073**: Replace regex-based code span stripping with correct parser handling
  multi-backtick spans and CommonMark space-stripping rules; rewrite TOC validation
  to use count-based duplicate anchor comparison
- **MD074**: Add content-hash cache invalidation so changed `mkdocs.yml` files are
  re-validated
- **Config**: Preserve `Option` fields in schema so nullable keys are not flagged as
  unknown ([#467](https://github.com/rvben/rumdl/issues/467))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.30-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.30/rumdl-v0.1.30-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.30/rumdl-v0.1.30-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.30-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.30/rumdl-v0.1.30-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.30/rumdl-v0.1.30-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.30-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.30/rumdl-v0.1.30-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.30/rumdl-v0.1.30-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.30-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.30/rumdl-v0.1.30-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.30/rumdl-v0.1.30-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.30-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.30/rumdl-v0.1.30-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.30/rumdl-v0.1.30-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.30-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.30/rumdl-v0.1.30-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.30/rumdl-v0.1.30-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.30-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.30/rumdl-v0.1.30-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.30/rumdl-v0.1.30-x86_64-pc-windows-msvc.zip.sha256) |

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

