---
title: rumdl-action
date: 2026-08-03 06:16:32 +00:00
tags:
  - rvben
  - GitHub Actions
draft: false
repo: https://github.com/rvben/rumdl
marketplace: https://github.com/marketplace/actions/rumdl-action
version: v0.2.49
dependentsNumber: "7"
actionType: Composite
actionSummary: |
  **Summary:**
  rumdl is a high-performance Rust-based Markdown linter and formatter that offers 81 lint rules covering common Markdown issues, automatic formatting with `--fix`, zero dependencies, and multiple installation options (Rust, Python, standalone binaries). It is designed for speed, with benchmarks showing significant performance improvements over alternatives.
---


Version updated for **https://github.com/rvben/rumdl** to version **v0.2.49**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rumdl-action) to find the latest changes.

## Action Summary

**Summary:**
rumdl is a high-performance Rust-based Markdown linter and formatter that offers 81 lint rules covering common Markdown issues, automatic formatting with `--fix`, zero dependencies, and multiple installation options (Rust, Python, standalone binaries). It is designed for speed, with benchmarks showing significant performance improvements over alternatives.

## What's Changed


### Security

- **config**: keep an extends target's path and contents out of messages about it ([72bcb49](https://github.com/rvben/rumdl/commit/72bcb49ad8cb07d836b048196a7e54a09b202661))

  An `extends` value is expanded from the environment before it is resolved, so naming the
  resolved path in an error or warning printed environment variable values wherever that
  message went, which under CI is the build log. `extends` also points at an arbitrary path,
  so a target that is not valid TOML had its offending line quoted back. A file reached
  through `extends` is now named by the reference as written, and its own text is never
  repeated. A config you name yourself is unchanged, and `rumdl config`, the language server's
  report to its editor, and `RUST_LOG=debug` still show resolved paths.

  Reported privately by Shuvam Kumar.

### Fixed

- **md072**: keep every trailing newline when sorting frontmatter keys ([a5e7c40](https://github.com/rvben/rumdl/commit/a5e7c4030a18f66bdfbd2c270935eb9d6686511a))
- **fix-utils**: measure fix ranges against the content the rule read ([2ed4238](https://github.com/rvben/rumdl/commit/2ed423868e0a8771395fbc1c12b365793f8de9f9))
- **md044**: read a wikilink's display text, not the page name it hides ([51d584e](https://github.com/rvben/rumdl/commit/51d584e6f8eef7f728897a9bd348093d696f3f91))
- **md039**: keep wikilinks and nested images intact when trimming link text ([aabd859](https://github.com/rvben/rumdl/commit/aabd85940900d035a1daf2387ef4e26857e1f01d))
- **md045,md057,md044**: stop reporting wiki embeds as images ([1147d17](https://github.com/rvben/rumdl/commit/1147d1788809ab70c50af4cdcdb802edc2d4c77b))
- **md058,md065**: preserve the trailing newline when inserting blank lines (#783) ([0ba54ce](https://github.com/rvben/rumdl/commit/0ba54cefdf0405d27bd23fb6e69c4b4ad854d133))
- **md013**: track line numbers in BlockBuilder for list reflow (#780) ([56e2b3f](https://github.com/rvben/rumdl/commit/56e2b3f13dc94c6532f99095482e33a1c56db383))
- **mkdocs**: read an indented code block inside a container body as code ([9439134](https://github.com/rvben/rumdl/commit/94391349bc613e38c115b646cc3d66dfebe9ea89))
- **md087,inline-config**: judge directives in indented container bodies ([9285de1](https://github.com/rvben/rumdl/commit/9285de1fa70bffdd291377c71ab5fc74a9620371))

### Performance

- **md038**: judge nested backticks against the outermost spans on a line ([b02ea88](https://github.com/rvben/rumdl/commit/b02ea886d28036c6a920fc0c40f4c466ba2b6f87))


## Downloads

| File | Platform | Checksum |
|------|----------|----------|
| [rumdl-v0.2.49-x86_64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.49/rumdl-v0.2.49-x86_64-unknown-linux-gnu.tar.gz) | Linux x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.49/rumdl-v0.2.49-x86_64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.49-x86_64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.49/rumdl-v0.2.49-x86_64-unknown-linux-musl.tar.gz) | Linux x86_64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.49/rumdl-v0.2.49-x86_64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.49-aarch64-unknown-linux-gnu.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.49/rumdl-v0.2.49-aarch64-unknown-linux-gnu.tar.gz) | Linux ARM64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.49/rumdl-v0.2.49-aarch64-unknown-linux-gnu.tar.gz.sha256) |
| [rumdl-v0.2.49-aarch64-unknown-linux-musl.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.49/rumdl-v0.2.49-aarch64-unknown-linux-musl.tar.gz) | Linux ARM64 (musl) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.49/rumdl-v0.2.49-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [rumdl-v0.2.49-x86_64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.49/rumdl-v0.2.49-x86_64-apple-darwin.tar.gz) | macOS x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.49/rumdl-v0.2.49-x86_64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.49-aarch64-apple-darwin.tar.gz](https://github.com/rvben/rumdl/releases/download/v0.2.49/rumdl-v0.2.49-aarch64-apple-darwin.tar.gz) | macOS ARM64 (Apple Silicon) | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.49/rumdl-v0.2.49-aarch64-apple-darwin.tar.gz.sha256) |
| [rumdl-v0.2.49-x86_64-pc-windows-msvc.zip](https://github.com/rvben/rumdl/releases/download/v0.2.49/rumdl-v0.2.49-x86_64-pc-windows-msvc.zip) | Windows x86_64 | [checksum](https://github.com/rvben/rumdl/releases/download/v0.2.49/rumdl-v0.2.49-x86_64-pc-windows-msvc.zip.sha256) |

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

