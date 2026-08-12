---
title: rumdl-action
date: 2026-08-12 05:59:30 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.54
dependentsNumber: "7"
actionType: Composite
actionSummary: |
  The rumdl action is a high-performance Rust-based Markdown linter and formatter that provides fast linting, extensive rule coverage, automatic formatting with `--fix`, and support for multiple markdown flavors. It's designed to be zero-dependency and highly configurable, making it suitable for use in various environments including Rust, Python, npm, pip, uv, mise, Nix, Termux User Repository, and pacman.
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.54**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

The rumdl action is a high-performance Rust-based Markdown linter and formatter that provides fast linting, extensive rule coverage, automatic formatting with `--fix`, and support for multiple markdown flavors. It's designed to be zero-dependency and highly configurable, making it suitable for use in various environments including Rust, Python, npm, pip, uv, mise, Nix, Termux User Repository, and pacman.

## What's Changed


### Added

- **action**: add a command input to run rumdl fmt ([9b59bff](https://github.com/rvben/rumdl/commit/9b59bffc64f1038ce99c6645fa12fa6247673240))
- **action**: add install-only input to skip linting ([aa0c604](https://github.com/rvben/rumdl/commit/aa0c6048af8bf798dd6102d78fc95383a9069047))
- **MD010**: add ignore-code-languages to exempt fence languages from tab checks ([21b56d0](https://github.com/rvben/rumdl/commit/21b56d038ace5943370aa628d6cf088263c5abdf))

### Fixed

- **config**: honor the markdown attribute on every block-level element ([6f88d71](https://github.com/rvben/rumdl/commit/6f88d71c1bd0a06230da193a848c17f5763fde5f))
- **links**: stop parsing reference links and images inside HTML blocks ([8829f6b](https://github.com/rvben/rumdl/commit/8829f6b722c67a45a6c8f207e56473c9b8913f9d))
- **html-blocks**: keep a nested raw-text element from opening its own block ([27d96bb](https://github.com/rvben/rumdl/commit/27d96bbf978a53fddc93ca1519da48e8df97fb7c))
- **code-block-tools**: stop a linter in a format slot from overwriting the block ([a40d7da](https://github.com/rvben/rumdl/commit/a40d7daac542db2a5db83c065e43e54b0b6d6991))
- **code-block-tools**: report findings at the line they belong to ([31cc6cb](https://github.com/rvben/rumdl/commit/31cc6cba6e82091cf2dbd161f3c621feb98a606e))
- **code-block-tools**: bound a hanging tool by its timeout and stop respawning it ([6ce8a1d](https://github.com/rvben/rumdl/commit/6ce8a1d214a6749bfec5cd0fa07228a30a9b373e))
- **action**: add rumdl to PATH so later workflow steps can call it ([98baf60](https://github.com/rvben/rumdl/commit/98baf602371b04281e2280f90fe0bb4f5e8fd068))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.54-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.54/rumdl-v0.2.54-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.54/rumdl-v0.2.54-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.54-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.54/rumdl-v0.2.54-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.54/rumdl-v0.2.54-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.54-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.54/rumdl-v0.2.54-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.54/rumdl-v0.2.54-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.54-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.54/rumdl-v0.2.54-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.54/rumdl-v0.2.54-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.54-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.54/rumdl-v0.2.54-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.54/rumdl-v0.2.54-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.54-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.54/rumdl-v0.2.54-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.54/rumdl-v0.2.54-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.54-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.54/rumdl-v0.2.54-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.54/rumdl-v0.2.54-x86_64-pc-windows-msvc.zip.sha256) |

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

