---
title: Build unikernel images with Unikraft
date: 2024-02-29 03:25:51 +00:00
tags:
  - unikraft
  - GitHub Actions
draft: false
repo: unikraft/kraftkit
marketplace: https://github.com/marketplace/actions/build-unikernel-images-with-unikraft
version: v0.7.10
dependentsNumber: "6"
---


Version updated for **unikraft/kraftkit** to version **v0.7.10**.
- This action is used across all versions by **6** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-unikernel-images-with-unikraft) to find the latest changes.

## Release notes

## KraftKit v0.7.10 (2024-02-28T16:41:19Z)

This is a stable release of kraftkit.

## Changelog
### 🚀 New Features
* 151b93756f8a295324b8ad8b60ce6ab94a41139c: feat(pkg): Add debug log entry for selected packager (#1319) (@craciunoiuc)
* e01f18e6a7e009aeeeea379885a7c647d8ccefda: feat(pkg): Add warning about unset `--plat` and `--arch` flag (#1317) (@craciunoiuc)
* c1af71fd932ffc734d2b6cc15af1162f798c26c9: feat(ps): Colorize machine state (#1320) (@craciunoiuc)
* 0f7a4d3f9b4db73401f184c7905e02d2e4f8029c: feat: Wrap machine create/start/log-related err messages (#1321) (@craciunoiuc)
### 🐛 Bug Fixes
* ebfb1c5483d4749fb26ab2c06c99746295fd1086: fix(action): Add random suffix for uniqueness (#1311) (@nderjung)
* 1f12659898ee3b562790dd8f82c50abf0b011911: fix(config): Write auth back to global config (#1314) (@nderjung)
* 7ed36d822d917e4b4ca13a3f5bbae83d4acc35e5: fix(pkg): Correct packager name (#1318) (@craciunoiuc)
* b56aa9b6d67b710bb33fe26f58d0ca966e537ad6: fix(qemu): Clean up state dir and log file when removing (#1325) (@craciunoiuc)
* 27eeb876cf1caa6039792a68cea560b723d06f5f: fix(qemu): Do not set the new state to `unknown` (#1323) (@craciunoiuc)
* abc92505a0a0f8c740e9eba0daf33b0cf7097b29: fix(qemu): Handle non-existent QMP monitor file (#1322) (@craciunoiuc)
* fc799ff8b1c87ef8613ba1748230f8a9dc9c86a9: fix(qemu): Prevent possible duplicate and nil-exception list (#1324) (@craciunoiuc)
* c85ae70bf5828120520150c32fb6ab4afd4a20e4: fix: Better handling of package runtimes (#1316) (@craciunoiuc)
### 🤖 Bumps
* d686aa2c8eac90f5c076d8259ad8d0097f060b0a: gomod(deps): Bump 'golangci-lint' to latest version (#1315) (@nderjung)
* 50b711e0c6158775c7339dfd284929388f8eca73: gomod(deps): Bump 'sdk.kraft.cloud' to v0.4.10 (#1312) (@nderjung)


