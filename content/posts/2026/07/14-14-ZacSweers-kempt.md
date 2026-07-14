---
title: kempt-fmt
date: 2026-07-14 14:53:59 +00:00
tags:
  - ZacSweers
  - GitHub Actions
draft: false
repo: https://github.com/ZacSweers/kempt
marketplace: https://github.com/marketplace/actions/kempt-fmt
version: v0.3.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  A pre-commit-friendly multi-language source formatting pipeline that automates Kotlin, Java, and Rust code formatting, inserts license headers, and normalizes trailing whitespace. It provides a tailored configuration per repository based on detected languages and supports various tool versions and configurations, including optional license header support.
---


Version updated for **https://github.com/ZacSweers/kempt** to version **v0.3.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kempt-fmt) to find the latest changes.

## Action Summary

A pre-commit-friendly multi-language source formatting pipeline that automates Kotlin, Java, and Rust code formatting, inserts license headers, and normalizes trailing whitespace. It provides a tailored configuration per repository based on detected languages and supports various tool versions and configurations, including optional license header support.

## What's Changed

## Release Notes

_2026-07-14_

- Keep hook subprocess parsing stable when Git diff customization or JVM
  environment-option announcements would otherwise alter captured output.
- Add `--touched` to format or check files changed on the current branch,
  including committed, staged, unstaged, and non-ignored untracked files.
- Support files, recursive directories, and glob patterns as explicit
  `format` and `check` targets. These respect global and per-tool path
  exclusions unless `--force` is passed.

## Install kempt-fmt 0.3.0

### Install prebuilt binaries via shell script

```sh
curl --proto '=https' --tlsv1.2 -LsSf https://github.com/ZacSweers/kempt/releases/download/v0.3.0/kempt-fmt-installer.sh | sh
```

### Install prebuilt binaries via powershell script

```sh
powershell -ExecutionPolicy Bypass -c "irm https://github.com/ZacSweers/kempt/releases/download/v0.3.0/kempt-fmt-installer.ps1 | iex"
```

### Install prebuilt binaries via Homebrew

```sh
brew install ZacSweers/tap/kempt-fmt
```

## Download kempt-fmt 0.3.0

|  File  | Platform | Checksum |
|--------|----------|----------|
| [kempt-fmt-aarch64-apple-darwin.tar.xz](https://github.com/ZacSweers/kempt/releases/download/v0.3.0/kempt-fmt-aarch64-apple-darwin.tar.xz) | Apple Silicon macOS | [checksum](https://github.com/ZacSweers/kempt/releases/download/v0.3.0/kempt-fmt-aarch64-apple-darwin.tar.xz.sha256) |
| [kempt-fmt-x86_64-apple-darwin.tar.xz](https://github.com/ZacSweers/kempt/releases/download/v0.3.0/kempt-fmt-x86_64-apple-darwin.tar.xz) | Intel macOS | [checksum](https://github.com/ZacSweers/kempt/releases/download/v0.3.0/kempt-fmt-x86_64-apple-darwin.tar.xz.sha256) |
| [kempt-fmt-x86_64-pc-windows-msvc.zip](https://github.com/ZacSweers/kempt/releases/download/v0.3.0/kempt-fmt-x86_64-pc-windows-msvc.zip) | x64 Windows | [checksum](https://github.com/ZacSweers/kempt/releases/download/v0.3.0/kempt-fmt-x86_64-pc-windows-msvc.zip.sha256) |
| [kempt-fmt-aarch64-unknown-linux-gnu.tar.xz](https://github.com/ZacSweers/kempt/releases/download/v0.3.0/kempt-fmt-aarch64-unknown-linux-gnu.tar.xz) | ARM64 Linux | [checksum](https://github.com/ZacSweers/kempt/releases/download/v0.3.0/kempt-fmt-aarch64-unknown-linux-gnu.tar.xz.sha256) |
| [kempt-fmt-x86_64-unknown-linux-gnu.tar.xz](https://github.com/ZacSweers/kempt/releases/download/v0.3.0/kempt-fmt-x86_64-unknown-linux-gnu.tar.xz) | x64 Linux | [checksum](https://github.com/ZacSweers/kempt/releases/download/v0.3.0/kempt-fmt-x86_64-unknown-linux-gnu.tar.xz.sha256) |



