---
title: Install bashunit
date: 2026-07-24 13:49:27 +00:00
tags:
  - TypedDevs
  - GitHub Actions
draft: false
repo: https://github.com/TypedDevs/bashunit
marketplace: https://github.com/marketplace/actions/install-bashunit
version: 0.43.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This action is a simple testing framework for Bash scripts that automates the process of writing and running tests. It focuses on providing developers with a lightweight, fast testing experience with over 70 assertions across various families, including equality, strings, exit codes, numeric checks, arrays, file/directory permissions, JSON assertions, date comparisons, duration checks, snapshots, and test doubles. The framework is designed to be user-friendly and developer-centric, offering interactive learning through the `learn` command and extensive documentation at bashunit.com.
---


Version updated for **https://github.com/TypedDevs/bashunit** to version **0.43.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-bashunit) to find the latest changes.

## Action Summary

This action is a simple testing framework for Bash scripts that automates the process of writing and running tests. It focuses on providing developers with a lightweight, fast testing experience with over 70 assertions across various families, including equality, strings, exit codes, numeric checks, arrays, file/directory permissions, JSON assertions, date comparisons, duration checks, snapshots, and test doubles. The framework is designed to be user-friendly and developer-centric, offering interactive learning through the `learn` command and extensive documentation at bashunit.com.

## What's Changed


## ✨ Improvements
- Branch coverage now reports loop constructs (`while`/`until`/`for`/`select`): the loop body is a single-arm branch, marked covered only when the loop ran at least once, so a never-entered zero-iteration loop surfaces as an uncovered branch (#855)

## 🛠️ Changes
- Core string assertions (`assert_contains`/`assert_not_contains`, `assert_matches`/`assert_not_matches`, `assert_string_starts_with`/`assert_string_ends_with` and their negations) no longer fork a subshell per call to join their arguments; a fork-free join with identical behaviour replaces it (#844)
- The array, date, duration, json, files and folders assertions now resolve their failure label through the fork-free slot helper instead of a per-call command substitution — same labels, fewer forks
- Parallel test workers name their per-test result file by a per-suite ordinal instead of `mktemp` + `mv`, removing two forks per test (plus the `echo \| tr \| sed` arg sanitizing for data-provider tests) with identical result aggregation (#851)


## 👥 Contributors
- @Chemaclass

## Checksum
SHA256: `151f3647964d53d3f5a7065c141790fc1b66ea3039024c80ed09b3a9602064a2`

**Full Changelog:** [0.42.0...0.43.0](https://github.com/TypedDevs/bashunit/compare/0.42.0...0.43.0)

