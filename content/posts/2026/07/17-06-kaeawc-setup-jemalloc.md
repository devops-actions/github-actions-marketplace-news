---
title: setup-jemalloc
date: 2026-07-17 06:57:00 +00:00
tags:
  - kaeawc
  - GitHub Actions
draft: false
repo: https://github.com/kaeawc/setup-jemalloc
marketplace: https://github.com/marketplace/actions/setup-jemalloc
version: v0.0.4
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action downloads, installs, and caches jemalloc, replacing the default malloc to free up unused native memory due to fragmentation. It supports Linux but requires arm64e target architecture on macOS. The action can be invoked multiple times within a job without affecting existing processes, ensuring atomic installations and idempotency.
---


Version updated for **https://github.com/kaeawc/setup-jemalloc** to version **v0.0.4**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-jemalloc) to find the latest changes.

## Action Summary

This GitHub Action downloads, installs, and caches jemalloc, replacing the default malloc to free up unused native memory due to fragmentation. It supports Linux but requires arm64e target architecture on macOS. The action can be invoked multiple times within a job without affecting existing processes, ensuring atomic installations and idempotency.

## What's Changed

## Bug fixes

- **Fixed SIGSEGV (exit code 139) when the action is invoked more than once in the same job** (#5, #6). The relocate step previously overwrote `/usr/local/lib/libjemalloc.so.2` in place with `cp` — but on a second invocation that library is already `LD_PRELOAD`'d into the running `cp`, and truncating a live-mmap'd shared object crashed it before the workload ran. The install is now **atomic** (temp file + `rename(2)`, so live mappings keep the old inode) and **idempotent** (skips entirely when the destination already matches). The action is now safe to invoke multiple times per job.

## Internals

- Relocate logic extracted into `scripts/linux/relocate.sh` / `scripts/mac/relocate.sh` with dependency-free unit tests (`tests/relocate_test.sh`).
- New CI jobs: shellcheck + unit tests, and a `linux_double_invocation` regression job that invokes the action twice in one job and asserts the first invocation's jemalloc-preloaded process survives the second.

**Full Changelog**: https://github.com/kaeawc/setup-jemalloc/compare/v0.0.3...v0.0.4

