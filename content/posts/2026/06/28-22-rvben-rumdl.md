---
title: rumdl-action
date: 2026-06-28 22:12:00 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.25
dependentsNumber: "6"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.25**.

- This action is used across all versions by **6** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## What's Changed


### Added

- **lsp**: document LSP settings and scope link-completion triggers ([18fae1b](https://github.com/rvben/rumdl/commit/18fae1b78744891dd0d26a6d44f5beb0c6d285b8))
- **MD013**: reflow lists with configured marker spacing (#692) ([b00b117](https://github.com/rvben/rumdl/commit/b00b1173b1b0eb0be934e0454824932bb707fc69))

### Fixed

- **MD052**: preserve author casing in undefined-reference messages ([6d1cb96](https://github.com/rvben/rumdl/commit/6d1cb9668dea356a06552df6c7232baf030397aa))
- **MD013**: preserve single-tilde strikethrough content during reflow (#701) ([a2387ce](https://github.com/rvben/rumdl/commit/a2387cefc01a7c3da8d899a2cc3dadde3bb6e87d))
- **rules**: resolve complex link handling in reflow and MD052 (#702) ([d57a61a](https://github.com/rvben/rumdl/commit/d57a61a098c53e9fde079ec0e911b8e5bdb2e12e))
- **rules**: prevent front-matter and skippable region leakage (#699) ([e09fa06](https://github.com/rvben/rumdl/commit/e09fa06e40088fa0814acff4407574a3928714c9))
- **MD007**: align nested lists to a widened parent's content column (#700) ([595cc4d](https://github.com/rvben/rumdl/commit/595cc4df7a0a8befa1bd17edcc489a40e104d2da))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.25-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.25/rumdl-v0.2.25-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.25/rumdl-v0.2.25-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.25-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.25/rumdl-v0.2.25-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.25/rumdl-v0.2.25-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.25-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.25/rumdl-v0.2.25-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.25/rumdl-v0.2.25-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.25-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.25/rumdl-v0.2.25-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.25/rumdl-v0.2.25-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.25-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.25/rumdl-v0.2.25-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.25/rumdl-v0.2.25-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.25-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.25/rumdl-v0.2.25-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.25/rumdl-v0.2.25-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.25-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.25/rumdl-v0.2.25-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.25/rumdl-v0.2.25-x86_64-pc-windows-msvc.zip.sha256) |

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

