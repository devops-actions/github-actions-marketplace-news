---
title: kempt-fmt
date: 2026-07-29 06:31:00 +00:00
tags:
  - ZacSweers
  - GitHub Actions
draft: false
repo: https://github.com/ZacSweers/kempt
marketplace: https://github.com/marketplace/actions/kempt-fmt
version: v0.3.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  kempt is a GitHub Action that automates the formatting and linting of source code across various programming languages, such as Kotlin, Java, Rust, and Gradle. It helps maintain consistent code styles by running language-specific formatters, inserting license headers, and normalizing trailing whitespace. The action supports configuration via a `.kempt.toml` file and can be installed using Homebrew or shell scripts.
---


Version updated for **https://github.com/ZacSweers/kempt** to version **v0.3.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kempt-fmt) to find the latest changes.

## Action Summary

kempt is a GitHub Action that automates the formatting and linting of source code across various programming languages, such as Kotlin, Java, Rust, and Gradle. It helps maintain consistent code styles by running language-specific formatters, inserting license headers, and normalizing trailing whitespace. The action supports configuration via a `.kempt.toml` file and can be installed using Homebrew or shell scripts.

## What's Changed

## Release Notes

_2026-07-28_

- Support nested `{ extend = ... }` path includes and excludes, allowing whitespace normalization to add other paths without repeating Kempt's defaults.
- Add Gradle dependency sorting for `.gradle` and `.gradle.kts` files through
  Square's standalone Gradle Dependencies Sorter CLI.

## Install kempt-fmt 0.3.1

### Install prebuilt binaries via shell script

```sh
curl --proto '=https' --tlsv1.2 -LsSf https://github.com/ZacSweers/kempt/releases/download/v0.3.1/kempt-fmt-installer.sh | sh
```

### Install prebuilt binaries via powershell script

```sh
powershell -ExecutionPolicy Bypass -c "irm https://github.com/ZacSweers/kempt/releases/download/v0.3.1/kempt-fmt-installer.ps1 | iex"
```

### Install prebuilt binaries via Homebrew

```sh
brew install ZacSweers/tap/kempt-fmt
```

## Download kempt-fmt 0.3.1

|  File  | Platform | Checksum |
|--------|----------|----------|
| [kempt-fmt-aarch64-apple-darwin.tar.xz](https://github.com/ZacSweers/kempt/releases/download/v0.3.1/kempt-fmt-aarch64-apple-darwin.tar.xz) | Apple Silicon macOS | [checksum](https://github.com/ZacSweers/kempt/releases/download/v0.3.1/kempt-fmt-aarch64-apple-darwin.tar.xz.sha256) |
| [kempt-fmt-x86_64-apple-darwin.tar.xz](https://github.com/ZacSweers/kempt/releases/download/v0.3.1/kempt-fmt-x86_64-apple-darwin.tar.xz) | Intel macOS | [checksum](https://github.com/ZacSweers/kempt/releases/download/v0.3.1/kempt-fmt-x86_64-apple-darwin.tar.xz.sha256) |
| [kempt-fmt-x86_64-pc-windows-msvc.zip](https://github.com/ZacSweers/kempt/releases/download/v0.3.1/kempt-fmt-x86_64-pc-windows-msvc.zip) | x64 Windows | [checksum](https://github.com/ZacSweers/kempt/releases/download/v0.3.1/kempt-fmt-x86_64-pc-windows-msvc.zip.sha256) |
| [kempt-fmt-aarch64-unknown-linux-gnu.tar.xz](https://github.com/ZacSweers/kempt/releases/download/v0.3.1/kempt-fmt-aarch64-unknown-linux-gnu.tar.xz) | ARM64 Linux | [checksum](https://github.com/ZacSweers/kempt/releases/download/v0.3.1/kempt-fmt-aarch64-unknown-linux-gnu.tar.xz.sha256) |
| [kempt-fmt-x86_64-unknown-linux-gnu.tar.xz](https://github.com/ZacSweers/kempt/releases/download/v0.3.1/kempt-fmt-x86_64-unknown-linux-gnu.tar.xz) | x64 Linux | [checksum](https://github.com/ZacSweers/kempt/releases/download/v0.3.1/kempt-fmt-x86_64-unknown-linux-gnu.tar.xz.sha256) |



