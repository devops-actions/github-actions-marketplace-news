---
title: rumdl-action
date: 2026-05-01 06:16:05 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.85
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.85**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The `rumdl` GitHub Action is a high-performance Markdown linter and formatter, built with Rust, designed to ensure consistency and best practices in Markdown files. It automates tasks such as identifying and fixing common Markdown issues, supports multiple Markdown flavors, and provides detailed error reporting, making it ideal for CI/CD pipelines and editor integrations. With its speed, zero dependencies, and robust configuration options, it streamlines the process of maintaining clean and standardized Markdown documentation.

## What's Changed


### Added

- **md051**: add ignore-case and ignored-pattern for markdownlint parity ([4535a2b](https://github.com/rvben/rumdl/commit/4535a2b48486940551e3fe1b2dede137ebde8a48))
- **md013**: add heading-line-length, code-block-line-length, stern ([6c22f82](https://github.com/rvben/rumdl/commit/6c22f82fd08c21721f0fbb0d8c23cfe32c3e2df0))
- **md033**: add table-allowed-elements option for markdownlint parity ([10bdc18](https://github.com/rvben/rumdl/commit/10bdc18e09eb92dac69aa550326efdfdbbb59521))
- **md027**: add list-items option for opt-in markdownlint parity ([2589aad](https://github.com/rvben/rumdl/commit/2589aadd813bfb2afe925b0e59cb81ea6512b42b))
- **md060**: add aligned-delimiter option for markdownlint parity ([ce6eaac](https://github.com/rvben/rumdl/commit/ce6eaaca77ea3a4ebd0cd2249e518378afe47874))

### Fixed

- **md051**: unify ignore-case and ignored-pattern across same-doc and cross-file paths ([3c295bc](https://github.com/rvben/rumdl/commit/3c295bc4e3780c6bf4a6556f2a5986732d77a6a8))
- **config**: initialize canonical_project_root_cache in From impl ([306777d](https://github.com/rvben/rumdl/commit/306777d0c61b9e4090e39aceb37f5a64b35ed069))
- **md013**: require GFM table evidence before classifying list-item line ([a04f742](https://github.com/rvben/rumdl/commit/a04f7421229485c91393e5b4b798a9c923249217))
- **config**: log when normalize_match_path falls back to raw absolute path ([6a6ceed](https://github.com/rvben/rumdl/commit/6a6ceedd44ae338cc58803b805f2740fba35c967))
- **md013**: preserve tables nested inside list items during reflow ([fc3f89d](https://github.com/rvben/rumdl/commit/fc3f89de7fc7b45da5d6d685d43dcbdeefb3465c))
- **config**: fall back to cwd when normalizing per-file glob paths ([360bde1](https://github.com/rvben/rumdl/commit/360bde1940fd3961e5ca88d4c8a021aa171c9a1a))
- **md054**: include trailing `[]` in collapsed link span ([caa3acc](https://github.com/rvben/rumdl/commit/caa3acc5e8c9248a5e12a84e8282a90d31631421))

### Performance

- **config**: cache canonical project_root and harden silent-fallback diagnostic ([d4ea4ea](https://github.com/rvben/rumdl/commit/d4ea4ea081b215200fc8a9cade9f893d1616d8b8))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.85-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.85/rumdl-v0.1.85-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.85/rumdl-v0.1.85-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.85-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.85/rumdl-v0.1.85-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.85/rumdl-v0.1.85-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.85-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.85/rumdl-v0.1.85-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.85/rumdl-v0.1.85-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.85-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.85/rumdl-v0.1.85-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.85/rumdl-v0.1.85-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.85-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.85/rumdl-v0.1.85-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.85/rumdl-v0.1.85-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.85-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.85/rumdl-v0.1.85-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.85/rumdl-v0.1.85-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.85-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.85/rumdl-v0.1.85-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.85/rumdl-v0.1.85-x86_64-pc-windows-msvc.zip.sha256) |

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

