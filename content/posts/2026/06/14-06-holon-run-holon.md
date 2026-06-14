---
title: Holon Runner
date: 2026-06-14 06:44:24 +00:00
tags:
  - holon-run
  - GitHub Actions
draft: false
repo: https://github.com/holon-run/holon
marketplace: https://github.com/marketplace/actions/holon-runner
version: v0.18.3
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/holon-run/holon** to version **v0.18.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/holon-runner) to find the latest changes.

## What's Changed

## Overview

Holon v0.18.3 is a Rust runtime maintenance release focused on diagnostics, provider catalog updates, child-agent observability, and runtime reliability.

Supported binary assets for this release are Linux amd64, macOS amd64, and macOS arm64.

## Notable changes

- Added bounded runtime performance diagnostics for inspecting runtime behavior without unbounded trace output: https://github.com/holon-run/holon/pull/1768
- Added GLM-5.2 model catalog support for BigModel and Z.ai provider configurations: https://github.com/holon-run/holon/pull/1755
- Improved child-agent observability by exposing private child agent status through local control APIs and child token usage on supervised task status: https://github.com/holon-run/holon/pull/1748 and https://github.com/holon-run/holon/pull/1744
- Improved runtime persistence and closeout reliability by serializing SQLite writes and recording terminal turn records for runtime errors: https://github.com/holon-run/holon/pull/1753 and https://github.com/holon-run/holon/pull/1754
- Hardened task and context closeout paths by guarding child terminal completion on active child work, materializing generic tool output refs, and degrading oversized last turns before `minimum_exact_round_unfit`: https://github.com/holon-run/holon/pull/1766, https://github.com/holon-run/holon/pull/1767, and https://github.com/holon-run/holon/pull/1760

## Install

Homebrew:

```bash
brew tap holon-run/tap
brew install holon
```

Direct binary:

```bash
curl -L "https://github.com/holon-run/holon/releases/download/v0.18.3/holon-linux-amd64.tar.gz" | tar -xz
chmod +x holon
./holon --help
```

Replace `holon-linux-amd64.tar.gz` with `holon-darwin-amd64.tar.gz` or `holon-darwin-arm64.tar.gz` on macOS.

