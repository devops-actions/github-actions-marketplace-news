---
title: rumdl-action
date: 2026-03-12 21:39:02 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.47
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.47**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The `rumdl` GitHub Action is a high-performance Markdown linter and formatter built in Rust, designed to ensure consistency and enforce best practices in Markdown files. It automates linting, formatting, and issue-fixing tasks, offering features such as 71 lint rules, support for multiple Markdown flavors, and zero dependencies for streamlined integration into CI/CD workflows. With its speed, configurability, and robust error reporting, it provides an efficient and modern solution for maintaining high-quality Markdown documents.

## Release notes


### Fixed

- **MD007**: MkDocs flavor now enforces 4-space indentation (`indent=4, style=fixed`) as required by Python-Markdown; conflicting user config emits a warning and is overridden ([#522](https://github.com/rvben/rumdl/issues/522))
- **MD013**: Reflow fix no longer dedents continuation paragraphs after code blocks inside admonitions in list items ([#509](https://github.com/rvben/rumdl/issues/509))
- **MD025**: Auto-fix now cascades heading demotion to child headings, preserving the document's heading hierarchy ([#525](https://github.com/rvben/rumdl/issues/525))
- **MD070**: Fence collision detection expanded to ~50 language identifiers (Python, JS, Shell, Rust, Go, YAML, etc.) where triple backtick sequences commonly appear ([#518](https://github.com/rvben/rumdl/issues/518))
- **MD070**: Auto-fix integration now works correctly in both CLI and LSP code action paths by including a complete `Fix` struct on warnings
- **MD046**: Removed redundant nested fence detection that produced false positives on Python code blocks containing embedded markdown
- **LSP**: Server now publishes empty diagnostics to invalidate client cache when switching to pull mode, preventing stale errors from persisting ([#517](https://github.com/rvben/rumdl/issues/517))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.47-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.47/rumdl-v0.1.47-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.47/rumdl-v0.1.47-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.47-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.47/rumdl-v0.1.47-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.47/rumdl-v0.1.47-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.47-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.47/rumdl-v0.1.47-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.47/rumdl-v0.1.47-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.47-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.47/rumdl-v0.1.47-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.47/rumdl-v0.1.47-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.47-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.47/rumdl-v0.1.47-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.47/rumdl-v0.1.47-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.47-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.47/rumdl-v0.1.47-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.47/rumdl-v0.1.47-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.47-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.47/rumdl-v0.1.47-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.47/rumdl-v0.1.47-x86_64-pc-windows-msvc.zip.sha256) |

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

