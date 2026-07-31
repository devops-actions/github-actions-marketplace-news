---
title: rumdl-action
date: 2026-07-31 06:41:32 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.47
dependentsNumber: "7"
actionType: Composite
actionSummary: |
  rumdl is a high-performance Markdown linter and formatter that provides a modern, fast alternative to markdownlint. It offers over 80 lint rules covering common Markdown issues, supports multiple Markdown flavors, and includes automatic formatting with the `--fix` option. With its Rust-based architecture, rumdl is significantly faster than alternatives, making it ideal for large codebases and CI/CD pipelines.
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.47**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter that provides a modern, fast alternative to markdownlint. It offers over 80 lint rules covering common Markdown issues, supports multiple Markdown flavors, and includes automatic formatting with the `--fix` option. With its Rust-based architecture, rumdl is significantly faster than alternatives, making it ideal for large codebases and CI/CD pipelines.

## What's Changed


### Added

- **md084**: flag deprecated and markup-unsuitable Unicode code points ([bac271b](https://github.com/rvben/rumdl/commit/bac271b8afc1c965bfdc86985853645532e7325a))
- **md013**: measure reflowed lines with the check's length exemptions ([2063a81](https://github.com/rvben/rumdl/commit/2063a8163b684375771080924b95b061c0e11c67))

### Fixed

- **md013**: take the space before an inline span from the source ([038dc39](https://github.com/rvben/rumdl/commit/038dc398bf807d612d6aa965b353177d1d29b886))
- **md084**: report invisible characters orphaned mid-line by an annotation delimiter ([a3e6152](https://github.com/rvben/rumdl/commit/a3e6152bade0f901dcdb726632a161b8ed42502c))
- **md084**: keep orphaned selectors visible beside an annotation delimiter ([4a2dec0](https://github.com/rvben/rumdl/commit/4a2dec02509322cd9060e802df9f2dff75e36d73))
- **md084**: keep the removal fix for invisible deprecated code points ([ab37e5d](https://github.com/rvben/rumdl/commit/ab37e5d360d7a6eb03698dc429bfa29a0f9c850f))
- **md013**: keep protecting an element a reflow break carried forward ([d86470b](https://github.com/rvben/rumdl/commit/d86470ba71a7b2deb834ec8d8879680f22b97f52))
- **md013**: break semantic lines only where the source has whitespace ([3fd88b7](https://github.com/rvben/rumdl/commit/3fd88b7900413e70ce8bc79fae4d61ecc98efb92))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.47-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.47/rumdl-v0.2.47-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.47/rumdl-v0.2.47-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.47-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.47/rumdl-v0.2.47-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.47/rumdl-v0.2.47-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.47-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.47/rumdl-v0.2.47-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.47/rumdl-v0.2.47-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.47-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.47/rumdl-v0.2.47-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.47/rumdl-v0.2.47-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.47-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.47/rumdl-v0.2.47-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.47/rumdl-v0.2.47-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.47-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.47/rumdl-v0.2.47-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.47/rumdl-v0.2.47-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.47-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.47/rumdl-v0.2.47-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.47/rumdl-v0.2.47-x86_64-pc-windows-msvc.zip.sha256) |

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

