---
title: rumdl-action
date: 2026-08-10 14:24:36 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.53
dependentsNumber: "7"
actionType: Composite
actionSummary: |
  rumdl is a high-performance Markdown linter and formatter written in Rust. It aims to provide fast linting and formatting of Markdown files, with support for multiple markdown flavors and automatic fixing. The tool is highly configurable through TOML-based configuration files and offers zero dependencies. It improves upon existing tools like ruff by being built for speed using Rust, with 82 lint rules covering common Markdown issues.
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.53**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter written in Rust. It aims to provide fast linting and formatting of Markdown files, with support for multiple markdown flavors and automatic fixing. The tool is highly configurable through TOML-based configuration files and offers zero dependencies. It improves upon existing tools like ruff by being built for speed using Rust, with 82 lint rules covering common Markdown issues.

## What's Changed


### Fixed

- **tables**: find a table's extent in the document's flavor ([ad139af](https://github.com/rvben/rumdl/commit/ad139af7aa11904768588fdac7fb10eca1ad3051))
- **tables**: quoted brackets and a blank target are not a wikilink ([a8aed70](https://github.com/rvben/rumdl/commit/a8aed70e3d5599f5759f46a412b2db48c2d3e9d1))
- **lsp**: a rescan keeps an open buffer only where a file still is ([8e16303](https://github.com/rvben/rumdl/commit/8e16303a900ea20e07e57c7dbb82115f74b13c51))
- **lsp**: keep an open document indexed from its buffer ([ea30cca](https://github.com/rvben/rumdl/commit/ea30ccac9c3ecef75d8863a9c83d996857cd0a6f))
- **lsp**: index what an editor is showing when the workspace is rescanned ([0d8eacc](https://github.com/rvben/rumdl/commit/0d8eacc81c99bef35c9aa5e5fe58c362e5d5073b))
- **lsp**: stop an evicted file from being put back by a waiting disk read ([5644516](https://github.com/rvben/rumdl/commit/5644516f37fd5fe7ac177406777d57bd173d6982))
- **md075**: ignore Obsidian wikilink aliases in prose after tables ([dda35d5](https://github.com/rvben/rumdl/commit/dda35d54d654b3aa54410faa779aa4af4f9cf2f0))
- **md084**: stop deleting line endings as invisible characters ([e6ca26e](https://github.com/rvben/rumdl/commit/e6ca26ebfa1d76aaa628f3b060231f048159b875))
- **rules**: report a multi-line link's range on the line it ends on ([2e1fde5](https://github.com/rvben/rumdl/commit/2e1fde59e2ec9566674a9314a504f190160cfe37))
- **config**: break "did you mean" ties by name instead of by key order ([23fafd9](https://github.com/rvben/rumdl/commit/23fafd96f45caca63ee9c42ad63b237dbb43cba5))
- **lsp**: keep a pending edit when a file is only evicted from the index ([1e34c47](https://github.com/rvben/rumdl/commit/1e34c4726adbebf7d63bb4e7cf48046b014240fb))
- **lsp**: drop a pending edit when its file is deleted ([f718eca](https://github.com/rvben/rumdl/commit/f718ecafb671a9ace9426e0b158fbe10f5789a1b))
- **md038**: include the closing backtick in the reported range ([128b9a1](https://github.com/rvben/rumdl/commit/128b9a190c745b8d38a9d8ec94a651e800051e1f))
- **md038**: stop deleting a line when trimming a multi-line code span ([e2e27ac](https://github.com/rvben/rumdl/commit/e2e27ac6d8da74f0741ab11b3c2589cce028dcf8))
- **md018**: recognize tags that start with a digit ([6237384](https://github.com/rvben/rumdl/commit/6237384fdfe98e6b156dc7bbe50dbe5b0a206fe2))
- **lsp**: stop publishing diagnostics for files that were never opened ([8b89584](https://github.com/rvben/rumdl/commit/8b895847da2050cae10658739ac81a8b313fd1b1))
- **lsp**: refresh cross-file diagnostics when the workspace index changes ([eecda03](https://github.com/rvben/rumdl/commit/eecda03825d251384e64b9d70135417ffab4fd32))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.53-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.53/rumdl-v0.2.53-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.53/rumdl-v0.2.53-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.53-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.53/rumdl-v0.2.53-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.53/rumdl-v0.2.53-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.53-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.53/rumdl-v0.2.53-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.53/rumdl-v0.2.53-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.53-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.53/rumdl-v0.2.53-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.53/rumdl-v0.2.53-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.53-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.53/rumdl-v0.2.53-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.53/rumdl-v0.2.53-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.53-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.53/rumdl-v0.2.53-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.53/rumdl-v0.2.53-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.53-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.53/rumdl-v0.2.53-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.53/rumdl-v0.2.53-x86_64-pc-windows-msvc.zip.sha256) |

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

