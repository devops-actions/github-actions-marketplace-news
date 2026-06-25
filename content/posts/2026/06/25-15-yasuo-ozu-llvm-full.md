---
title: LLVM full install action
date: 2026-06-25 15:06:55 +00:00
tags:
  - yasuo-ozu
  - GitHub Actions
draft: false
repo: https://github.com/yasuo-ozu/llvm-full
marketplace: https://github.com/marketplace/actions/llvm-full-install-action
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/yasuo-ozu/llvm-full** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/llvm-full-install-action) to find the latest changes.

## What's Changed

First versioned release of the **LLVM full install action**. Use it with `yasuo-ozu/llvm-full@v1`.

### Highlights
- Correct `LLVM_SYS_<key>_PREFIX` for the Rust `llvm-sys` crate (LLVM 18 → `181`, 19 → `191`, …; 10–17 → `100`–`170`).
- Prebuilt archives for 20 targets: Linux x86_64/aarch64 (glibc + musl) / i686, macOS arm64/x86_64, Windows MSVC/GNU (x64, ARM64, i686), and FreeBSD/NetBSD/OpenBSD.
- Runtime fixes: macOS `DYLD_FALLBACK_LIBRARY_PATH` for bundled libunwind; Linux `libtinfo5` for older LLVM.
- CI now runs a post-release `llvm-sys` consumer smoke test against the published archives.

### Install
```yaml
- uses: yasuo-ozu/llvm-full@v1
  with:
    version: "18.1.8"
```
`@v1` tracks the latest v1.x; pin `@v1.0.0` for reproducibility. The high-numbered `vX.Y.Z` tags (v10.0.1 … v22.1.0) are the prebuilt LLVM archive releases, not action versions.

