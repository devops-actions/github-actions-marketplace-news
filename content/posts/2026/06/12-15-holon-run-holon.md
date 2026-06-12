---
title: Holon Runner
date: 2026-06-12 15:31:24 +00:00
tags:
  - holon-run
  - GitHub Actions
draft: false
repo: https://github.com/holon-run/holon
marketplace: https://github.com/marketplace/actions/holon-runner
version: v0.18.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/holon-run/holon** to version **v0.18.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/holon-runner) to find the latest changes.

## What's Changed

## Runtime line

Holon v0.18.0 is part of the Rust runtime line. The Rust runtime is now the main `holon` binary.

This line is intentionally breaking relative to the old Go-line releases. If you need the old Go implementation, stay on `v0.12.0`.

Supported binary assets for this release are Linux amd64, macOS amd64, and macOS arm64.

## Install

Homebrew:

```bash
brew tap holon-run/tap
brew install holon
```

Direct binary:

```bash
curl -L "https://github.com/holon-run/holon/releases/download/v0.18.0/holon-linux-amd64.tar.gz" | tar -xz
chmod +x holon
./holon --help
```

Replace `holon-linux-amd64.tar.gz` with `holon-darwin-amd64.tar.gz` or `holon-darwin-arm64.tar.gz` on macOS.

