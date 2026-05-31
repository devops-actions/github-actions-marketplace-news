---
title: Holon Runner
date: 2026-05-31 06:33:18 +00:00
tags:
  - holon-run
  - GitHub Actions
draft: false
repo: https://github.com/holon-run/holon
marketplace: https://github.com/marketplace/actions/holon-runner
version: v0.15.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/holon-run/holon** to version **v0.15.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/holon-runner) to find the latest changes.

## Action Summary

Holon is a local workbench designed to provide a persistent working environment for multiple agents performing continuous tasks. It organizes work into explicit units, preserving state, managing context, and handling event-driven waits and resumes, enabling agents to efficiently complete complex, multi-session workflows. By offering a local-first execution environment and clear boundaries for context and trust, Holon streamlines agent-based task automation and enhances collaboration between agents and operators.

## What's Changed

## Runtime line

Holon v0.15.1 is part of the Rust runtime line. The Rust runtime is now the main `holon` binary.

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
curl -L "https://github.com/holon-run/holon/releases/download/v0.15.1/holon-linux-amd64.tar.gz" | tar -xz
chmod +x holon
./holon --help
```

Replace `holon-linux-amd64.tar.gz` with `holon-darwin-amd64.tar.gz` or `holon-darwin-arm64.tar.gz` on macOS.

