---
title: rumdl-action
date: 2026-07-14 22:38:44 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.33
dependentsNumber: "6"
actionType: Composite
actionSummary: |
  **Summary**
  
  rumdl is a high-performance Markdown linter and formatter written in Rust, designed to speed up linting tasks with its Rust-based implementation. It includes 76 lint rules covering common Markdown issues and offers automatic formatting with the `--fix` flag for files and stdin/stdout. The tool supports multiple Markdown flavors, is zero-dependency, highly configurable, and has a modern CLI interface with detailed error reporting.
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.33**.

- This action is used across all versions by **6** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

**Summary**

rumdl is a high-performance Markdown linter and formatter written in Rust, designed to speed up linting tasks with its Rust-based implementation. It includes 76 lint rules covering common Markdown issues and offers automatic formatting with the `--fix` flag for files and stdin/stdout. The tool supports multiple Markdown flavors, is zero-dependency, highly configurable, and has a modern CLI interface with detailed error reporting.

## What's Changed


### Fixed

- **md044**: stop flagging proper names inside bare URLs ([5e9b51a](https://github.com/rvben/rumdl/commit/5e9b51a9936b9e009a332914951b1b89d91c4655))
- **md040**: recognize file-extension fence labels as known languages ([686ba20](https://github.com/rvben/rumdl/commit/686ba20b9bfa573cf6fdd66193a0736f3f50cbd0))
- **cli**: replace unhelpful panic message with an actionable one (#717) ([37ac880](https://github.com/rvben/rumdl/commit/37ac880b9804322dee3523e200592b3e4d82d524))
- **reflow**: re-search cached inline-math after a dollar sign ([a30a4f9](https://github.com/rvben/rumdl/commit/a30a4f97cd0328e60347e402b3332e2bf896741e))
- **reflow**: support multiple backticks and optimize code span parsing ([81944c5](https://github.com/rvben/rumdl/commit/81944c5addd6579b729f438c8768cedd55a2816d))
- **md013**: stop reflow from starting lines with block markers ([eebd18b](https://github.com/rvben/rumdl/commit/eebd18b751bfe880e5a16fab8544e07070f08de2))

### Performance

- **reflow**: implement cached match lookups to prevent quadratic suffix scanning ([1cc8d2b](https://github.com/rvben/rumdl/commit/1cc8d2bc6ea3b37848ab4253cb1059bc7e77b69e))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.33-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.33/rumdl-v0.2.33-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.33/rumdl-v0.2.33-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.33-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.33/rumdl-v0.2.33-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.33/rumdl-v0.2.33-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.33-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.33/rumdl-v0.2.33-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.33/rumdl-v0.2.33-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.33-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.33/rumdl-v0.2.33-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.33/rumdl-v0.2.33-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.33-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.33/rumdl-v0.2.33-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.33/rumdl-v0.2.33-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.33-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.33/rumdl-v0.2.33-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.33/rumdl-v0.2.33-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.33-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.33/rumdl-v0.2.33-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.33/rumdl-v0.2.33-x86_64-pc-windows-msvc.zip.sha256) |

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

