---
title: Install bashunit
date: 2026-08-17 05:40:20 +00:00
tags:
  - TypedDevs
  - GitHub Actions
draft: false
repo: https://github.com/TypedDevs/bashunit
marketplace: https://github.com/marketplace/actions/install-bashunit
version: 0.49.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action automates testing Bash scripts using the `bashunit` framework, which provides a simple and fast way to write tests. It includes various assertions and features such as spies, mocks, data providers, snapshots, and more, making it easy to test complex Bash scripts efficiently.
---


Version updated for **https://github.com/TypedDevs/bashunit** to version **0.49.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-bashunit) to find the latest changes.

## Action Summary

This GitHub Action automates testing Bash scripts using the `bashunit` framework, which provides a simple and fast way to write tests. It includes various assertions and features such as spies, mocks, data providers, snapshots, and more, making it easy to test complex Bash scripts efficiently.

## What's Changed

## ⚠️ Upgrade note

`bashunit empty_dir/` — a path that exists but holds no test files — used to exit **0** while silently running `BASHUNIT_DEFAULT_PATH` instead. It now reports `No tests found` and exits **1**.

If a pipeline passes a path that is sometimes empty, its build was green over a suite it never asked for, and it will go red on upgrade. Where the empty run is deliberate — a sharded CI matrix, a changed-files run — use the new flag:

```bash
bashunit --pass-with-no-tests --shard 4/4 tests/
```

## Added
- `--pass-with-no-tests` exits 0 when a run selects no tests. The run still reports `No tests found`; only the verdict changes. It does not excuse a path that is not on disk. Same flag, same spelling, as jest, vitest, Playwright and Cypress (#1263)
- `--list-tags` prints the tags of the selected files, one per line, sorted and deduplicated, and runs nothing (#1265)

## Changed
- A `test` or `bench` path that does not exist is named and refused before the run starts, instead of the `No tests found` / `No benchmarks found` an empty selection gives. Every genuinely-empty case keeps that message (#1263)
- A path argument that selects nothing no longer falls back to `BASHUNIT_DEFAULT_PATH` (#1263)
- `--snapshot-report-unused` and `--snapshot-prune` now report a snapshot whose test **file** was deleted or renamed — the most common way one is orphaned. This widens what `--snapshot-prune` deletes (#1194)
- A `--tag` matching nothing now names the tags the run saw (#1265)
- Performance: a sequential run is about 3.9ms faster per test file, and the total runtime costs one fork and one subshell less (#1271)
- Performance: per-test cleanup no longer reads the whole of `BASHUNIT_TEMP_DIR` — a 100-test file went from 978ms to 542ms against 5000 leftovers (#1269)

## Fixed
- A sequential run no longer leaks a file descriptor per test file. At the limit it stopped executing tests and reported `risky` while still exiting 0 (#1271)
- `Time taken` no longer reports `0ms`, or a negative duration, for a runtime it could not measure (#1271)
- A run using `--test-timeout` no longer leaves its watchdog holding the caller's captured output for the rest of the timeout budget (#1137)
- A test that both fails an assertion and hits a shell error reports the diagnostic alone (#1267)
- `--list` under `--parallel` no longer prints `No tests found` in the middle of the ids (#1007)

**Full changelog**: https://github.com/TypedDevs/bashunit/compare/0.48.0...0.49.0
