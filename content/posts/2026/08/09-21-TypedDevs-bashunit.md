---
title: Install bashunit
date: 2026-08-09 21:47:27 +00:00
tags:
  - TypedDevs
  - GitHub Actions
draft: false
repo: https://github.com/TypedDevs/bashunit
marketplace: https://github.com/marketplace/actions/install-bashunit
version: 0.45.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This action is a simple testing framework for Bash scripts. It automates the writing, execution, and verification of test cases in Bash 3.0+ scripts. Key capabilities include 75 assertions, spies, mocks, data providers, snapshots, and more, making it easy to write maintainable and reliable tests.
---


Version updated for **https://github.com/TypedDevs/bashunit** to version **0.45.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-bashunit) to find the latest changes.

## Action Summary

This action is a simple testing framework for Bash scripts. It automates the writing, execution, and verification of test cases in Bash 3.0+ scripts. Key capabilities include 75 assertions, spies, mocks, data providers, snapshots, and more, making it easy to write maintainable and reliable tests.

## What's Changed


## ✨ Improvements
- `assert_is_symlink`, `assert_is_not_symlink` and `assert_symlink_to` assert on a symbolic link itself, which every other filesystem assertion follows through to the target (#981)
- `assert_true` and `assert_false` accept a command with its arguments — `assert_true test -d /tmp`. A single argument keeps its previous meaning (#994)
- Named snapshot assertions support multiple snapshots per test; mismatches show the resolved path and `--snapshot-update` hint (#986)

## 🛠️ Changes
- `assert_true` / `assert_false` report `unknown command` / `not executable` instead of a bare exit code 127 or 126 (#982)
- Core comparison assertions report missing required arguments as usage errors instead of comparing against empty values (#983)
- Performance: Literal snapshots bypass placeholder regex processing unless they contain a placeholder (about 13x faster) (#985)
- Performance: `assert_within_delta` uses fixed-point arithmetic for common values, with a `bc`/`awk` fallback for unsupported inputs (about 6.6x faster) (#979)
- Performance: Spy assertions and call counters use builtins instead of `cat` and command substitutions (about 6.5x faster) (#978)
- Performance: `assert_contains_ignore_case` uses Bash's `nocasematch` where available, falling back to `tr` on Bash 3.0 (about 10x faster) (#977)
- Build: standalone binaries omit source comments while preserving heredoc content and source markers, reducing the current artifact by about 22% (#990)
- Internal: Split `src/runner.sh` and `src/coverage.sh` into focused modules with no behavior change; see [ADR-010](adrs/adr-010-src-module-directories.md) (#924, #925)

## 🐛 Bug Fixes
- Snapshot placeholders no longer match anything at all without `perl`; the `grep` fallback treated a multi-line pattern as separate alternatives, and now uses `awk` over the whole value (#1002)
- Snapshots resolve correctly for an absolute test path; the `./` prefix made them cwd-relative, so a stray snapshot was recorded and every snapshot assertion passed (#1002)
- `assert_false` no longer passes when the command does not exist; exit codes 127 and 126 fail both boolean assertions, because the command never ran (#982)
- `assert_have_been_called_times` and `assert_have_been_called_nth_with` report a usage error for a non-numeric count instead of leaking a raw `integer expression expected` (#984)
- A failing test whose output quotes a shell-error phrase is no longer also reported as a runtime error (#992)
- Runtime errors are recognised from the exit code when the diagnostic text is translated or redirected away (#998)
- `assert_within_delta` accepts a leading `+` on any operand (#979)
- Invalid `BASHUNIT_SHARD_INDEX` / `BASHUNIT_SHARD_TOTAL` values now fail with a clear error instead of reaching raw arithmetic or reporting no tests (#969)
- Date assertions reject unparseable values instead of crashing or treating them as epoch 0 (#968)
- `assert_json_equals` rejects invalid JSON instead of considering two unparseable values equal (#967)
- Parallel runs preserve results from same-named test files in different directories (#959)
- Coverage no longer counts variable assignments as functions or emits malformed LCOV records for assignments containing `|` (#936)
- The nightly coverage workflow discovers nested unit tests while excluding coverage meta-tests and fixtures (#980)
- `build.sh` deduplicates embedded files by repository-relative path, preventing duplicate or missing modules with the same filename (#923)
- `bashunit doc` no longer errors when the default bootstrap file is missing (#929)


## 👥 Contributors
- @Chemaclass
- @objctp

## Checksum
SHA256: `19983f26299825ff26cfbb90e6b3b6e86fc8044168191d3e8b86f615313a80a9`

**Full Changelog:** [0.44.0...0.45.0](https://github.com/TypedDevs/bashunit/compare/0.44.0...0.45.0)

