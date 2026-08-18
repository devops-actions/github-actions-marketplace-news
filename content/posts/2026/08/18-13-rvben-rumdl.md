---
title: rumdl-action
date: 2026-08-18 13:31:09 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.56
dependentsNumber: "7"
actionType: Composite
actionSummary: |
  rumdl is a high-performance Markdown linter and formatter written in Rust that helps maintain consistency in Markdown files. It offers over 80 lint rules, automatic formatting with the `--fix` option, and supports multiple Markdown flavors through auto-detection. The action provides a modern CLI for detailed error reporting and is optimized for speed, making it suitable for CI/CD workflows and editor integration.
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.56**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

rumdl is a high-performance Markdown linter and formatter written in Rust that helps maintain consistency in Markdown files. It offers over 80 lint rules, automatic formatting with the `--fix` option, and supports multiple Markdown flavors through auto-detection. The action provides a modern CLI for detailed error reporting and is optimized for speed, making it suitable for CI/CD workflows and editor integration.

## What's Changed


### Fixed

- **MD076**: attach its edit to each warning so the CLI reports it fixable ([a10f6c8](https://github.com/rvben/rumdl/commit/a10f6c8b63c1bd853be7c35e5f48af8d85df91c7))
- **MD076**: analyse each nested list on its own spacing ([eb2d9d8](https://github.com/rvben/rumdl/commit/eb2d9d8a012c20685179c7f056d73bbe211e8a67))
- **MD064**: judge column alignment per list so a nested item keeps its parent's exemption ([9ea97d1](https://github.com/rvben/rumdl/commit/9ea97d1d6456bcb6bd81ef827ac6f592871ee432))
- **MD076**: measure a list item's nesting level in columns as the block tracker does ([15ba409](https://github.com/rvben/rumdl/commit/15ba4091b1360a3e6d58c120fc6e4edc9e9c1981))
- **MD032**: measure list indent in columns so a tab nests and continues an item ([bd197b0](https://github.com/rvben/rumdl/commit/bd197b04dcdf6ad09b5bd3a0a7c4c66fbc5702ff))
- **MD013**: read sentence openers off the parse and honour reference definitions ([78bafa9](https://github.com/rvben/rumdl/commit/78bafa98acee48919c35ac5dfe418656b1918ddb))
- **MD032**: measure an HTML opener's indent in columns against every open item ([56944fc](https://github.com/rvben/rumdl/commit/56944fc9976dd204418a0abbf7165e6157db113b))
- **MD013**: keep links, images, math and HTML whole in sentence reflow ([72871b9](https://github.com/rvben/rumdl/commit/72871b984b7bf2b7374735f02dca766fab7c0a37))
- **code-block-tools**: resolve Windows tool names the way Command::new does ([a005be4](https://github.com/rvben/rumdl/commit/a005be4f124509f817417c9c71a8e17edcfb7530))
- **MD032**: let an HTML block or fence at short indent end a list ([75d49a8](https://github.com/rvben/rumdl/commit/75d49a80dca7290c6619a4de8db2b6e055e925e5))
- **MD032**: keep a Quarto div fence out of the lazy-continuation check ([98242fd](https://github.com/rvben/rumdl/commit/98242fd41515bd10080312ad94ddd1efac582288))
- **MD013**: run reflow after every rule that rewrites inline content ([aabb420](https://github.com/rvben/rumdl/commit/aabb4209f283cc6e9f36d1c908fc5be7a8675bc9))
- **MD046**: classify indented code blocks from the line above's verdict ([e8004fb](https://github.com/rvben/rumdl/commit/e8004fbff767ea7d59e172f83df582b64aee6784))
- **MD032**: treat under-indented text and no-space # lines as lazy continuations ([3e60005](https://github.com/rvben/rumdl/commit/3e60005ef9a010fc83df31c9750c8fa01ed26c54))
- **code-block-tools**: resolve tools in-process instead of spawning which ([fb3e5d8](https://github.com/rvben/rumdl/commit/fb3e5d81d70d0a7f62651df2866d9d129ff0763f))
- **MD057**: invalidate cache when link targets change ([f6ae68f](https://github.com/rvben/rumdl/commit/f6ae68fb22e7373b68b29adde3f8b113a7af2651))
- **MD075**: require an outer pipe on orphaned table row candidates ([66d8d12](https://github.com/rvben/rumdl/commit/66d8d12c013543df57192bacb639b92b0870d4b9))
- **MD034**: recognize reference definitions whose label escapes a closing bracket ([f024e4d](https://github.com/rvben/rumdl/commit/f024e4df3b3080c7cd35b0b527429a22e398f814))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.56-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.56/rumdl-v0.2.56-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.56/rumdl-v0.2.56-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.56-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.56/rumdl-v0.2.56-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.56/rumdl-v0.2.56-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.56-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.56/rumdl-v0.2.56-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.56/rumdl-v0.2.56-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.56-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.56/rumdl-v0.2.56-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.56/rumdl-v0.2.56-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.56-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.56/rumdl-v0.2.56-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.56/rumdl-v0.2.56-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.56-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.56/rumdl-v0.2.56-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.56/rumdl-v0.2.56-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.56-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.56/rumdl-v0.2.56-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.56/rumdl-v0.2.56-x86_64-pc-windows-msvc.zip.sha256) |

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

