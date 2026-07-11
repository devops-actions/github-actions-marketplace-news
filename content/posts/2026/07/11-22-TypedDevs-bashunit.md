---
title: Install bashunit
date: 2026-07-11 22:17:22 +00:00
tags:
  - TypedDevs
  - GitHub Actions
draft: false
repo: https://github.com/TypedDevs/bashunit
marketplace: https://github.com/marketplace/actions/install-bashunit
version: 0.41.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/TypedDevs/bashunit** to version **0.41.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-bashunit) to find the latest changes.

## What's Changed


## ✨ Improvements
- `--retry <n>` / `BASHUNIT_RETRY` re-runs a failed test up to N times; passes if any attempt passes, annotates retried tests, and works with `--parallel` and `--stop-on-failure` (#737)
- `--random-order` with `--seed <n>` / `BASHUNIT_SEED` randomizes test file and function order to surface inter-test coupling; prints the seed for reproducible replay and works with `--parallel` (#738)
- `--shard <index>/<total>` runs a deterministic, non-overlapping subset of the test files to split a suite across parallel CI runners; composes with `--parallel` (#739)
- `--report-tap <file>` writes a TAP v13 report to a file (complements the streaming `--output tap`) (#740)
- `--report-json <file>` writes results as JSON (summary counts + per-test records); no `jq` dependency (#741)
- `assert_file_permissions <mode> <file>` asserts a file's octal permission mode; portable across GNU/BSD `stat` (#742)
- `assert_array_length <n> <array>` asserts an array has exactly `n` elements (#743)
- `assert_within_delta <expected> <actual> <delta>` asserts a number is within a tolerance; supports floats (#744)

## 🐛 Bug Fixes
- `watch` subcommand failed with `bashunit::watch::run: command not found` in the released binary because `src/watch.sh` was missing from the build; it is now bundled (#735)

## 🛠️ Changes
- Faster test execution by removing subprocess forks from hot paths (no behaviour change)


## 👥 Contributors
- @Chemaclass

## Checksum
SHA256: `146c9b1f5462633d40c377ab0548bbd1a720ce365f49ef6942621192b4d15f79`

**Full Changelog:** [0.40.0...0.41.0](https://github.com/TypedDevs/bashunit/compare/0.40.0...0.41.0)

