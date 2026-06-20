---
title: Holon Solve
date: 2026-06-20 07:17:12 +00:00
tags:
  - holon-run
  - GitHub Actions
draft: false
repo: https://github.com/holon-run/holon
marketplace: https://github.com/marketplace/actions/holon-solve
version: v0.19.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/holon-run/holon** to version **v0.19.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/holon-solve) to find the latest changes.

## What's Changed

## Runtime line

Holon v0.19.1 is part of the Rust runtime line. The Rust runtime is now the main `holon` binary.

This line is intentionally breaking relative to the old Go-line releases. If you need the old Go implementation, stay on `v0.12.0`.

This patch release restores the `xiaomi-token-plan` provider alias, fixes inline brief hydration in the TUI, and adds docs for recently added Web GUI and runtime diagnostics features.

Supported binary assets for this release are Linux amd64, macOS amd64, and macOS arm64.

## Changes

- Restore the `xiaomi-token-plan` provider with its own base URL and `XIAOMI_TOKEN_PLAN_API_KEY` environment variable ([#1890](https://github.com/holon-run/holon/pull/1890)).
- Fix TUI rendering for inline brief hydration so brief text can be displayed without an extra lookup ([#1889](https://github.com/holon-run/holon/pull/1889)).
- Add user-facing guides for the Web GUI, memory auto-load, child token usage, and performance diagnostics ([#1888](https://github.com/holon-run/holon/pull/1888)).

## Install

Homebrew:

```bash
brew tap holon-run/tap
brew install holon
```

Direct binary:

```bash
curl -L "https://github.com/holon-run/holon/releases/download/v0.19.1/holon-linux-amd64.tar.gz" | tar -xz
chmod +x holon
./holon --help
```

Replace `holon-linux-amd64.tar.gz` with `holon-darwin-amd64.tar.gz` or `holon-darwin-arm64.tar.gz` on macOS.

