---
title: rumdl-action
date: 2026-02-26 13:29:00 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.29
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.29**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter built with Rust, designed to ensure consistency and best practices in Markdown files. It automates tasks such as detecting and fixing common Markdown issues, supports multiple Markdown flavors, and provides advanced features like detailed error reporting, intelligent caching, and CI/CD integration. With its speed, configurability, and zero-dependency design, it streamlines Markdown linting and formatting for developers.

## Release notes


### Added

- **MD077**: New `list-continuation-indent` rule that checks list item continuation
  lines use the correct indentation (content-aligned rather than tab-stop-aligned)
- **LSP**: Go-to-definition and find-references for markdown links, enabling
  navigation between link references and their definitions
- **LSP**: Surface code-block-tools diagnostics in server mode so language-specific
  linting errors appear in the editor
- **MD044**: Honor backtick-delimited code in HTML comments when checking proper names

### Fixed

- **MD013**: Exempt link reference definitions and standalone link/image lines from
  reflow line-length checks inside list items. Previously, these exempt lines were
  joined with other content, producing incorrect combined lengths (e.g., 160 instead
  of the actual line length) ([#466](https://github.com/rvben/rumdl/issues/466))
- **MD013**: Normalize reflow mode now checks each paragraph independently instead of
  joining all content across paragraph boundaries. Exempt paragraphs (link ref defs,
  standalone links) are preserved verbatim during reflow output
- **LSP**: Close 4 navigation gaps in go-to-definition and find-references
- **LSP**: Count fixable warnings document-wide for source.fixAll and clear config
  cache on change
- **LSP**: Create source.fixAll action for single-issue files
- **LSP**: Skip external code-block-tools on keystroke events to reduce latency
- **LSP**: Detect stale global-fallback entries in config cache so newly created
  `.rumdl.toml` files are picked up without restarting the language server
- Docs: Fix multi-paragraph list item indentation (thanks @sisp in #465)

### Changed

- **LSP**: source.fixAll code action now respects MD007 indent configuration


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.29-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.29/rumdl-v0.1.29-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.29/rumdl-v0.1.29-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.29-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.29/rumdl-v0.1.29-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.29/rumdl-v0.1.29-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.29-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.29/rumdl-v0.1.29-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.29/rumdl-v0.1.29-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.29-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.29/rumdl-v0.1.29-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.29/rumdl-v0.1.29-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.29-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.29/rumdl-v0.1.29-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.29/rumdl-v0.1.29-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.29-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.29/rumdl-v0.1.29-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.29/rumdl-v0.1.29-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.29-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.29/rumdl-v0.1.29-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.29/rumdl-v0.1.29-x86_64-pc-windows-msvc.zip.sha256) |

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

