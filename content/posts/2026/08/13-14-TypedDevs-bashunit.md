---
title: Install bashunit
date: 2026-08-13 14:02:00 +00:00
tags:
  - TypedDevs
  - GitHub Actions
draft: false
repo: https://github.com/TypedDevs/bashunit
marketplace: https://github.com/marketplace/actions/install-bashunit
version: 0.47.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action is a testing framework for Bash scripts, focusing on developer experience with 93 assertions and additional features like spies, mocks, data providers, and snapshots. It automates the process of writing, running, and documenting tests for Bash scripts efficiently.
---


Version updated for **https://github.com/TypedDevs/bashunit** to version **0.47.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-bashunit) to find the latest changes.

## Action Summary

This GitHub Action is a testing framework for Bash scripts, focusing on developer experience with 93 assertions and additional features like spies, mocks, data providers, and snapshots. It automates the process of writing, running, and documenting tests for Bash scripts efficiently.

## What's Changed


## ✨ Improvements
- `--output <text|tap|json|junit>` prints the JSON and JUnit reports on stdout, so a pipeline needs no temp file; `--report-json` still writes its file alongside (#1018)
- `bashunit::skip_if`, `bashunit::skip_unless`, `bashunit::skip_unless_command <cmd>` and `bashunit::skip_on <windows|macos|linux>` mark a test skipped **and** end it, replacing `bashunit::skip && return` (#1019)
- Per-test `# @timeout <seconds>`, `# @retry <n>` and `# @skip [reason]` annotations override the run-wide flags in both directions; a malformed value aborts the run (#1020)
- `[suite:<name>]` sections in `.bashunitrc` name a set of paths and options; `--suite <name>` runs one (repeatable) and `--list-suites` lists them (#1021)
- `--sandbox` fails a test that runs an external command it did not mock, and `--sandbox-allow <cmd,...>` widens the baseline allowlist (ADR-012) (#1022)
- `bashunit::mock_sequence <cmd> <answer>…` answers each call with the next entry, so retry loops need no hand-rolled counter file; the last entry repeats once exhausted (#1023)
- `assert_have_never_been_called <cmd>` asserts a spied command never ran, printing the recorded calls when it did (#1023)
- `assert_is_file_readable`, `assert_is_file_writable`, `assert_is_file_executable`, their negatives and `assert_is_file_not_empty` give files the parity directories already had (#1024)
- `assert_json_key_not_exists` checks that a JSON path is absent, and `assert_json_length` the size of an array, object or string (#1025)
- `bashunit bench --report-json <file>` and `--report-junit <file>` write the benchmark run to disk, so a CI run leaves an artifact to store, chart and compare (#1028)
- `bashunit bench --baseline <file>` fails a run when a benchmark is more than `--baseline-tolerance` percent (default 10) slower than the recorded one, comparing medians; `--baseline-update <file>` records the new reference (#1029)
- `--snapshot-prune` deletes the snapshot files no test resolved, printing every path; full runs only, and never on a run with failures (#1030)

## 🛠️ Changes
- LCOV `BRDA` carries the arm's execution count instead of a 0/1 taken flag, taken from the arm's first executable line; `BRF` and `BRH` are unchanged (#1061)
- Performance: `--coverage` is about 10x faster — a run over this repo's `src` went from 9.23s to 0.96s. The report phase classifies lines, scans declarations and branches and emits the whole LCOV report in one awk invocation per run instead of Bash loops and forks per file, hit data is grouped once, the DEBUG trap rejects untracked lines before recording, and the caches are read through the variable table (#1056, #1057, #1059, #1060, #1084, #1088, #1090)

## 🐛 Bug Fixes
- Coverage reports every file under `--coverage-paths`, not only the ones a test executed: an untouched file shows as `0/N (0%)` and `--coverage-min` gates on that denominator. This repo reported 11 of its own 121 files. **Percentages drop, because the old ones were measured over the files that ran** (#1053)
- `--coverage-diff` counts a changed file that no test executed, instead of skipping it and letting a brand new untested file pass a `--coverage-min 90` gate. A docs-only commit still reports 100% (#1054)
- Coverage read a statement ending in `)` as a `case` arm, so `x=$(foo)` left the denominator while `x=$(printf '%s\n')` stayed. A `)` now closes an arm only when no `(` opened earlier on the line, recovering 456 executable lines of this repo's `src/`. **Percentages move in both directions per file** (#1055)
- A brace inside a comment, a string or a heredoc no longer counts towards a function's span, so a single stray `{` stops swallowing every later function in the file — 11 functions in this repo's `src/coverage/lines.sh` were reported as 1, and `END {` inside an embedded awk program was reported as a function. `FN`, `FNDA`, `FNF` and `FNH` change; lines and branches do not (#1086)


## 👥 Contributors
- @Chemaclass
- @ColumbusLabs

## Checksum
SHA256: `defa50ff54c902acf33c17a2813a879defb349452b51f667736800e63c0156ae`

**Full Changelog:** [0.46.0...0.47.0](https://github.com/TypedDevs/bashunit/compare/0.46.0...0.47.0)

