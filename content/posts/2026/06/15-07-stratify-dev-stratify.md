---
title: Stratify Quality Gate
date: 2026-06-15 07:21:07 +00:00
tags:
  - stratify-dev
  - GitHub Actions
draft: false
repo: https://github.com/stratify-dev/stratify
marketplace: https://github.com/marketplace/actions/stratify-quality-gate
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/stratify-dev/stratify** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/stratify-quality-gate) to find the latest changes.

## What's Changed

First public release of Stratify, a polyglot codebase-intelligence tool. One binary reads your whole repository, builds one language-agnostic model, and runs six static analyses on it.

## Highlights
- Six analyses: dead code, duplication, complexity, churn hotspots, dependency cycles, layer boundaries
- Five languages, each with the full set: Java, Ruby, TypeScript, Python, Go
- Confidence-rated findings: uncertain results show as "possibly unused" instead of false-flagging working code
- Surfaces: CLI (human, JSON, SARIF), GitHub Action quality gate, MCP server, editor LSP, and OpenTelemetry/Datadog export

## Install stratify-cli 0.1.0

### Install prebuilt binaries via shell script

```sh
curl --proto '=https' --tlsv1.2 -LsSf https://github.com/stratify-dev/stratify/releases/download/v0.1.0/stratify-cli-installer.sh | sh
```

### Install prebuilt binaries via Homebrew

```sh
brew install stratify-dev/tap/stratify
```

## Download stratify-cli 0.1.0

|  File  | Platform | Checksum |
|--------|----------|----------|
| [stratify-cli-aarch64-apple-darwin.tar.xz](https://github.com/stratify-dev/stratify/releases/download/v0.1.0/stratify-cli-aarch64-apple-darwin.tar.xz) | Apple Silicon macOS | [checksum](https://github.com/stratify-dev/stratify/releases/download/v0.1.0/stratify-cli-aarch64-apple-darwin.tar.xz.sha256) |
| [stratify-cli-x86_64-apple-darwin.tar.xz](https://github.com/stratify-dev/stratify/releases/download/v0.1.0/stratify-cli-x86_64-apple-darwin.tar.xz) | Intel macOS | [checksum](https://github.com/stratify-dev/stratify/releases/download/v0.1.0/stratify-cli-x86_64-apple-darwin.tar.xz.sha256) |
| [stratify-cli-x86_64-pc-windows-msvc.zip](https://github.com/stratify-dev/stratify/releases/download/v0.1.0/stratify-cli-x86_64-pc-windows-msvc.zip) | x64 Windows | [checksum](https://github.com/stratify-dev/stratify/releases/download/v0.1.0/stratify-cli-x86_64-pc-windows-msvc.zip.sha256) |
| [stratify-cli-aarch64-unknown-linux-gnu.tar.xz](https://github.com/stratify-dev/stratify/releases/download/v0.1.0/stratify-cli-aarch64-unknown-linux-gnu.tar.xz) | ARM64 Linux | [checksum](https://github.com/stratify-dev/stratify/releases/download/v0.1.0/stratify-cli-aarch64-unknown-linux-gnu.tar.xz.sha256) |
| [stratify-cli-x86_64-unknown-linux-gnu.tar.xz](https://github.com/stratify-dev/stratify/releases/download/v0.1.0/stratify-cli-x86_64-unknown-linux-gnu.tar.xz) | x64 Linux | [checksum](https://github.com/stratify-dev/stratify/releases/download/v0.1.0/stratify-cli-x86_64-unknown-linux-gnu.tar.xz.sha256) |



