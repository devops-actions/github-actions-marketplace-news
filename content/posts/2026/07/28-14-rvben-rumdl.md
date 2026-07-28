---
title: rumdl-action
date: 2026-07-28 14:50:43 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.44
dependentsNumber: "7"
actionType: Composite
actionSummary: |
  **Summary:**
  
  rumdl is a high-performance, Rust-based Markdown linter and formatter designed to speed up linting and formatting processes. It offers over 79 rules covering common Markdown issues and supports multiple flavors including GFM, MkDocs, MDX, Quarto, and MyST. The tool is fast, zero-dependency, and highly configurable via TOML files, with automatic formatting for unfixable violations using the `--fix` option. It's widely used by developers to maintain clean and consistent Markdown documents in projects.
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.44**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

**Summary:**

rumdl is a high-performance, Rust-based Markdown linter and formatter designed to speed up linting and formatting processes. It offers over 79 rules covering common Markdown issues and supports multiple flavors including GFM, MkDocs, MDX, Quarto, and MyST. The tool is fast, zero-dependency, and highly configurable via TOML files, with automatic formatting for unfixable violations using the `--fix` option. It's widely used by developers to maintain clean and consistent Markdown documents in projects.

## What's Changed


### Added

- **config**: read .editorconfig when a project opts in ([c215175](https://github.com/rvben/rumdl/commit/c215175d87500b0ef0ef23fbcf193b580ced884d))
- **md085**: add opt-in rule for paragraph continuation indentation ([f929e82](https://github.com/rvben/rumdl/commit/f929e82a06a3dbde8d827ed64bd248020fcd0246))
- **md063**: add sentence-case-restart-after option ([498d922](https://github.com/rvben/rumdl/commit/498d92285eb16c69f0f5d29b31d733b4c54685c1))
- **md041**: add allow-preamble option ([72ca4f4](https://github.com/rvben/rumdl/commit/72ca4f461c00fb7e65ee1c2d4d7bf1455cb5cdbc))
- **md013**: add math-blocks option to exempt display math from the length check ([e75ea67](https://github.com/rvben/rumdl/commit/e75ea671ca1488b29be87dcb71fab6f603ed4b3c))

### Fixed

- **md013**: don't reflow display math blocks or the prose written against their delimiters ([bda0cc5](https://github.com/rvben/rumdl/commit/bda0cc52df1139dda4be005920919b30a41cf11a), [c03c883](https://github.com/rvben/rumdl/commit/c03c88366a0da58df769465a533327bee247e9c5))
- **watch**: re-run when a config above the watched path changes ([d085756](https://github.com/rvben/rumdl/commit/d0857567c8ba2bb502441d2a082466b01db53bdc))
- **lsp**: stop caching a config that could not be resolved ([151f8e2](https://github.com/rvben/rumdl/commit/151f8e2aa85309c6b7ba349a3d588183d6092d2c))
- **lsp**: resolve to defaults when a file's config cannot be loaded ([76165f9](https://github.com/rvben/rumdl/commit/76165f96cb11f97851c72b2614e104febf0f3b4e))
- **lsp**: surface a broken user config instead of falling back to a parent ([0c315ea](https://github.com/rvben/rumdl/commit/0c315ea8f495b034d27edd2ba2a68d5ee3184460))
- **lsp**: resolve a discovered config the same way the CLI does ([a6724d2](https://github.com/rvben/rumdl/commit/a6724d2f573ed23f5510763db4882604fc473d6b))
- **md013**: wrap paragraphs before numbers that only look like list markers ([099a900](https://github.com/rvben/rumdl/commit/099a90058efe224a2ba544c512f28b7348419724))
- **md037,md052**: check emphasis and references inside table cells ([0e4859c](https://github.com/rvben/rumdl/commit/0e4859c2b57e645b9a303fdd3cc39cfc4a03db33))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.44-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.44/rumdl-v0.2.44-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.44/rumdl-v0.2.44-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.44-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.44/rumdl-v0.2.44-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.44/rumdl-v0.2.44-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.44-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.44/rumdl-v0.2.44-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.44/rumdl-v0.2.44-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.44-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.44/rumdl-v0.2.44-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.44/rumdl-v0.2.44-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.44-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.44/rumdl-v0.2.44-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.44/rumdl-v0.2.44-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.44-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.44/rumdl-v0.2.44-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.44/rumdl-v0.2.44-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.44-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.44/rumdl-v0.2.44-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.44/rumdl-v0.2.44-x86_64-pc-windows-msvc.zip.sha256) |

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

