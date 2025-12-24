---
title: rumdl-action
date: 2025-12-24 05:30:01 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.0.200
dependentsNumber: "1"
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.0.200**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The GitHub Action "rumdl" is a high-performance Markdown linter and formatter, built with Rust, designed to enforce consistency and best practices in Markdown files. It automates the detection of common Markdown issues with 57 lint rules, provides automatic formatting capabilities, and offers intelligent caching for faster re-checks. With a modern CLI, zero dependencies, and CI/CD integration, it simplifies the process of maintaining clean and standardized Markdown documentation across projects.

## Release notes


### Added

- **CLI: Add `--no-defaults` flag to `rumdl config` command** (fixes #218)
  - Show only non-default configuration values, excluding defaults
  - Useful for seeing only customizations without the noise of default values
  - Works with both smart output (with provenance annotations) and `--output toml/json` formats
  - Mutually exclusive with `--defaults` flag
  - Displays helpful message when all configurations are using defaults
  - Supports filtering of global config, rule configs, and per-file-ignores

- **SARIF: Map severity field to SARIF result levels**
  - Error severity maps to SARIF "error" level
  - Warning severity maps to SARIF "warning" level
  - Improves integration with tools that consume SARIF output

- **Testing: Add O(n²) complexity regression testing infrastructure**
  - Detect potential quadratic time complexity issues in rules
  - Prevent performance regressions in line analysis algorithms

### Fixed

- **MD051 (link-fragments): Support extension-less cross-file links (GitHub-style)** (fixes extension-less link validation)
  - Recognize extension-less paths with fragments as cross-file links (e.g., `[link](page#section)` → `page.md#section`)
  - Resolve extension-less paths by trying markdown extensions (`.md`, `.markdown`, `.mdx`, etc.)
  - Handles GitHub-style links that omit file extensions, matching GitHub's rendering behavior
  - Applied to both link detection and cross-file validation
  - Reduces false positives in repositories using extension-less links

- **MD054 (link-image-style): Fix false positives for task lists and HTML tags** (fixes false positive detection)
  - Skip validation for links/images inside task list items (e.g., `- [ ] [link](url)`)
  - Skip validation for links/images inside HTML tags (e.g., `<a href="url">text</a>`)
  - Reduces false positives when links are part of task lists or HTML structures

- **MD057 (link-target-exists): Skip email addresses and fix absolute path bug** (fixes email and path handling)
  - Skip validation for email addresses (e.g., `mailto:user@example.com`)
  - Fix bug where absolute paths were incorrectly validated
  - Improves accuracy by correctly identifying email links vs file links

- **MD063 (heading-capitalization): Respect lowercase-words when inline code/link is last segment** (fixes #223)
  - When the last word in a heading is inline code or a link, respect `lowercase-words` configuration
  - Previously, inline code/link at the end was not checked against lowercase-words list
  - Ensures consistent capitalization rules apply to all heading segments

- **MD007 (ul-indent): Fix indent=1 edge case and integrate edge case tests** (fixes edge cases)
  - Fix handling of `indent = 1` configuration edge cases
  - Integrate comprehensive edge case tests for better coverage
  - Improves reliability for non-standard indent configurations

- **MD057 (link-target-exists): Point diagnostics to URL instead of link text** (fixes #226)
  - LSP diagnostics now point to the actual non-existent URL rather than the link text
  - Fixes incorrect positioning in editors where diagnostics appeared at wrong location
  - Makes diagnostics semantically correct by highlighting the actual problem
  - Improves both CLI and LSP diagnostic accuracy

- **File processor: Canonicalize file paths to prevent duplicate warnings**
  - Normalize file paths to resolve symbolic links and relative paths
  - Prevents duplicate warnings when the same file is referenced via different paths
  - Improves accuracy when processing files via symlinks or relative paths

- **Rules: Fixes for issues 219 and 220** (fixes #219, #220)
  - Fixes addressing edge cases and false positives
  - Improves overall rule accuracy and reliability

### Performance

- **MD007 (ul-indent): Cache mixed list nesting detection and optimize blank line checks**
  - Cache results of mixed list nesting detection to avoid redundant calculations
  - Optimize blank line checks for better performance on large files
  - Reduces processing time for files with complex list structures

### Changed

- **Rules: Categorize severities by document impact**
  - Reorganized rule severities into meaningful categories
  - Structure-critical rules (MD001, MD002, MD003, etc.) remain Error
  - Style-preference rules (MD004, MD007, MD029, etc.) now Warning
  - Better alignment between severity and actual impact on document quality

- **Documentation: Add severity categorization section to RULES.md**
  - Documents the reasoning behind severity assignments
  - Explains the distinction between structural errors and style warnings
  - Helps users understand why rules have their assigned severity levels

- **Tests: Reorganize issue-specific tests into appropriate test files**
  - Moved Issue #210 tests to `tests/rules/md007_test.rs`
  - Moved Issue #209 tests to `tests/rules/md007_test.rs`
  - Moved Issue #197 tests to `tests/cli_integration_tests.rs`
  - Removed `issueXXX`-named test files per project conventions


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.0.200-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.200/rumdl-v0.0.200-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.200/rumdl-v0.0.200-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.200-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.200/rumdl-v0.0.200-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.200/rumdl-v0.0.200-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.200-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.200/rumdl-v0.0.200-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.200/rumdl-v0.0.200-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.0.200-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.200/rumdl-v0.0.200-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.200/rumdl-v0.0.200-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.0.200-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.200/rumdl-v0.0.200-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.200/rumdl-v0.0.200-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.200-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.0.200/rumdl-v0.0.200-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.200/rumdl-v0.0.200-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.0.200-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.0.200/rumdl-v0.0.200-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.0.200/rumdl-v0.0.200-x86_64-pc-windows-msvc.zip.sha256) |

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

