---
title: rumdl-action
date: 2026-07-18 06:50:14 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.35
dependentsNumber: "6"
actionType: Composite
actionSummary: |
  **Summary**
  
  rumdl is a high-performance Markdown linter and formatter built in Rust. It aims to improve the linting experience by offering speed, numerous lint rules covering common Markdown issues, automatic formatting with fixable violations, zero dependencies, highly configurable via TOML, support for multiple Markdown flavors, and various installation options for different platforms including Rust, Python, npm, pip, uv, mise, Nix, Termux User Repository (TUR), Arch Linux, and standalone binaries.
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.35**.

- This action is used across all versions by **6** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

**Summary**

rumdl is a high-performance Markdown linter and formatter built in Rust. It aims to improve the linting experience by offering speed, numerous lint rules covering common Markdown issues, automatic formatting with fixable violations, zero dependencies, highly configurable via TOML, support for multiple Markdown flavors, and various installation options for different platforms including Rust, Python, npm, pip, uv, mise, Nix, Termux User Repository (TUR), Arch Linux, and standalone binaries.

## What's Changed


### Added

- **cli**: honor --deny-config-warnings on the stdin path ([0f93ca5](https://github.com/rvben/rumdl/commit/0f93ca5187176e459bbbae4a43a8468983ae8176))
- **cli**: make --deny-config-warnings cover inline disable-comment rule names ([96d75f5](https://github.com/rvben/rumdl/commit/96d75f56b5f114983ec1163413d779f48a2ad8e7))
- **cli**: add --deny-config-warnings for config-file and CLI-flag problems ([5045daf](https://github.com/rvben/rumdl/commit/5045daf52e13d0e308740df7253177f24411a0e7))
- **reflow**: support breaking within emphasis spans ([2e8bded](https://github.com/rvben/rumdl/commit/2e8bded170f917ab00deef193aa5996a301c3bd4))

### Fixed

- **reflow**: preserve non-breaking spaces and the space before French double punctuation ([f66021f](https://github.com/rvben/rumdl/commit/f66021f067713fa28b481a457cb99b3dc7a7804b))
- **cli**: walk directory arguments even when file paths are also passed ([d058273](https://github.com/rvben/rumdl/commit/d058273dd177eb0d41059215c21cb1e598a3ab18))
- **lsp**: honor line anchors in goto-definition ([17a21e7](https://github.com/rvben/rumdl/commit/17a21e796f6f18ef1abf88e7b64d2a7f33647987))
- **md077**: attribute middle-level continuation lines to their own list item ([c73763b](https://github.com/rvben/rumdl/commit/c73763ba2e0149548703e8733346967e1eca1d28))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.35-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.35/rumdl-v0.2.35-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.35/rumdl-v0.2.35-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.35-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.35/rumdl-v0.2.35-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.35/rumdl-v0.2.35-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.35-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.35/rumdl-v0.2.35-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.35/rumdl-v0.2.35-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.35-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.35/rumdl-v0.2.35-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.35/rumdl-v0.2.35-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.35-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.35/rumdl-v0.2.35-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.35/rumdl-v0.2.35-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.35-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.35/rumdl-v0.2.35-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.35/rumdl-v0.2.35-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.35-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.35/rumdl-v0.2.35-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.35/rumdl-v0.2.35-x86_64-pc-windows-msvc.zip.sha256) |

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

