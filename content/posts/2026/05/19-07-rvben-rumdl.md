---
title: rumdl-action
date: 2026-05-19 07:21:27 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.1.94
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.1.94**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

This GitHub Action, **rumdl**, is a high-performance Markdown linter and formatter built with Rust. It ensures consistency and best practices in Markdown files by identifying issues through 74 linting rules, supporting multiple Markdown flavors, and offering automatic formatting and fixes for violations. Designed for speed and CI/CD integration, rumdl operates as a standalone, dependency-free tool with advanced configuration options and compatibility with various installation methods.

## What's Changed


### Added

- **md080**: add heading-anchor-collision rule ([df9146d](https://github.com/rvben/rumdl/commit/df9146d808ee1069958fe8c272ad8dac0079f1c3))

### Fixed

- **docs**: match unwrapped 'N lint rules' counts in guard ([8a768bf](https://github.com/rvben/rumdl/commit/8a768bf6922a0db4d5ec94737864de25b2f483cc))
- **docs**: make rule-count guard fail on unwrapped counts ([07226b8](https://github.com/rvben/rumdl/commit/07226b88e4b16064c47f79af7757c65c5eea4518))
- **md049**: neutralize inline-code dollars before math filtering ([28a73dd](https://github.com/rvben/rumdl/commit/28a73dd2516dda07a6204159a8808b52f86cd19c))
- **md049,md080**: code-block-aware math filter; mark MD080 unfixable ([49e1150](https://github.com/rvben/rumdl/commit/49e1150c87a96928a8f884bdbf828794d21ee37c))
- **math**: drop unmatched line-start $$ opener instead of swallowing document ([f02f63f](https://github.com/rvben/rumdl/commit/f02f63f65c0bc22f0ff8912bf162b3c34a6c3318))
- **math**: unify $$ math model across rules and make MD049 byte-accurate ([bf05e5c](https://github.com/rvben/rumdl/commit/bf05e5cde555df213f3d6c53112502666f7e9661))
- **math**: align line map with byte model for multi-pair dollar lines ([1a21816](https://github.com/rvben/rumdl/commit/1a218163cbc27fbebd6044995f79a5a6d541aeda))
- align math line map with byte model; run heading rules for blockquote-only docs ([444482b](https://github.com/rvben/rumdl/commit/444482b04b7b92532df00a009c379ee1cb5a0dea))
- **md080**: mirror MD051 anchor model instead of per-rule HTML guards ([e38730d](https://github.com/rvben/rumdl/commit/e38730d169058b128d4d4a4adabfb6cf1f7e7965))
- **md080**: allow markdown-enabled HTML blocks through the skip ([7d48cb7](https://github.com/rvben/rumdl/commit/7d48cb7d4c7edb5203e61d33e6ab333510470c0d))
- **md080**: skip blockquote headings inside HTML blocks ([334d301](https://github.com/rvben/rumdl/commit/334d3010e7a2588106346beca932402f610a821c))
- **md080**: address codex review findings ([cb5acc3](https://github.com/rvben/rumdl/commit/cb5acc3d8b0446f9528868c13b71ea9cdd54e647))
- **math**: close line-level math state at the fence, ignore prose $$ ([540b624](https://github.com/rvben/rumdl/commit/540b624ca39cded5085f4c1f421df72529914870))
- **math**: require line-start opener for $$ display blocks ([89e1a60](https://github.com/rvben/rumdl/commit/89e1a60f766971b7964889ba5defe72b772bac00))
- **math**: close $$ display blocks when fence shares a line with content ([f839492](https://github.com/rvben/rumdl/commit/f839492a34157fef1bb5ac80688209aea410d0b9))

### Performance

- **md049**: binary-search merged math ranges for membership ([feafbf8](https://github.com/rvben/rumdl/commit/feafbf8c9c7974399967ec6bc787d31a47f1a761))
- **md049**: precompute math ranges once instead of per span ([00d3a83](https://github.com/rvben/rumdl/commit/00d3a83e16c89bb694947b9c6035b75a33d6005f))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.1.94-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.94/rumdl-v0.1.94-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.94/rumdl-v0.1.94-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.94-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.94/rumdl-v0.1.94-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.94/rumdl-v0.1.94-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.94-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.94/rumdl-v0.1.94-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.94/rumdl-v0.1.94-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.1.94-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.94/rumdl-v0.1.94-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.94/rumdl-v0.1.94-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.1.94-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.94/rumdl-v0.1.94-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.94/rumdl-v0.1.94-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.94-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.1.94/rumdl-v0.1.94-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.94/rumdl-v0.1.94-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.1.94-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.1.94/rumdl-v0.1.94-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.1.94/rumdl-v0.1.94-x86_64-pc-windows-msvc.zip.sha256) |

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

