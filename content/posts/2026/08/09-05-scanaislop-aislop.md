---
title: aislop — AI Code Quality Gate
date: 2026-08-09 05:50:11 +00:00
tags:
  - scanaislop
  - GitHub Actions
draft: false
repo: https://github.com/scanaislop/aislop
marketplace: https://github.com/marketplace/actions/aislop-ai-code-quality-gate
version: v0.14.1
dependentsNumber: "4"
actionType: Composite
actionSummary: |
  The aislop GitHub Action is designed to detect and score AI-slop, such as narrative comments, swallowed exceptions, hidden fallbacks, `as any` casts, hallucinated imports, duplicated helpers, dead code, todo stubs, oversized functions in your codebase. It provides a comprehensive set of rules for 10 programming languages (TypeScript, JavaScript, Expo/React Native, Python, Go, Rust, Ruby, PHP, C#, and C/C++) to ensure code quality and maintainability. The action scores every change with sub-second speed and is deterministic, using no LLM in the runtime path. It supports installation via npm, Yarn, Bun, Homebrew, and PyPI, and offers CLI tools for repair, auto-fix, CI mode, and per-edit hooks.
---


Version updated for **https://github.com/scanaislop/aislop** to version **v0.14.1**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aislop-ai-code-quality-gate) to find the latest changes.

## Action Summary

The aislop GitHub Action is designed to detect and score AI-slop, such as narrative comments, swallowed exceptions, hidden fallbacks, `as any` casts, hallucinated imports, duplicated helpers, dead code, todo stubs, oversized functions in your codebase. It provides a comprehensive set of rules for 10 programming languages (TypeScript, JavaScript, Expo/React Native, Python, Go, Rust, Ruby, PHP, C#, and C/C++) to ensure code quality and maintainability. The action scores every change with sub-second speed and is deterministic, using no LLM in the runtime path. It supports installation via npm, Yarn, Bun, Homebrew, and PyPI, and offers CLI tools for repair, auto-fix, CI mode, and per-edit hooks.

## What's Changed

v0.14.1 expands aislop to 10 language targets with first-class C# and C/C++ support, plus accuracy and reliability improvements across the scanner.

### Added

- **C# support.** Project discovery, formatting, linting, complexity analysis, dependency checks, and C#-specific AI-slop rules.
- **C/C++ support.** Detection and scoring with cppcheck, clang-tidy, clang-format, complexity analysis, and C/C++-specific AI-slop rules.

### Fixed

- Reduced false findings in C# and C++ strings, comments, raw strings, and interpolated code.
- Improved file discovery and exclusions across platforms and nested repositories.
- Improved CLI behavior for invalid targets, timed-out tools, Windows tool lookup, dependency scans, and Python imports.

### Changed

- Refreshed project dependencies and CI tooling.
- Split large integration modules into smaller, focused components.

### Validation

- 2,032 tests passing across 198 files
- Linux and Windows CI passing
- Aislop self-scan at 100/100 with zero findings
- npm package dry run completed for `aislop@0.14.1`

