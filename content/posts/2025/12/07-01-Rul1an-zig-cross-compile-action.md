---
title: Zig Cross-Compiler
date: 2025-12-07 01:33:40 +00:00
tags:
  - Rul1an
  - GitHub Actions
draft: false
repo: https://github.com/Rul1an/zig-cross-compile-action
marketplace: https://github.com/marketplace/actions/zig-cross-compiler
version: v2.6.0
dependentsNumber: "?"
---


Version updated for **https://github.com/Rul1an/zig-cross-compile-action** to version **v2.6.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zig-cross-compiler) to find the latest changes.

## Release notes

**Added**

*   **Tier 1 Expansion:** Promoted `x86_64-linux-gnu` and `x86_64-linux-musl` from Tier 2 to Tier 1.
*   **New Examples:** Added `examples/c-linux-gnu` and `examples/c-linux-musl` as Verified Reference Architectures.
*   **Local Development:** Added `CONTRIBUTING.md` with a "Paved Road" guide and `scripts/local-ci.sh` for running CI locally (`act`).
*   **Verify Level Input:** Clarified `verify-level` behavior (`soft check`) in `README.md`.
*   **CI Matrix:** Refactored Linux verification to a standard scalable matrix strategy.
*   **Coverage:** Extended verification to include dedicated macOS ARM64 runner and Windows x64 target.

**Changed**

*   **Musl Policy Docs:** Explicitly documented `rust-musl-mode: allow` as "wiring only".
*   **Go Version Sync:** Downgraded `examples/go-cgo` to Go 1.23 to match validation workflow.
*   **Docs:** Refined Performance & Caching section with honest caching framing (`~/.cache/zig`).

