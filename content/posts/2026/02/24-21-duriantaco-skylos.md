---
title: Skylos - Python SAST & Dead Code Detection
date: 2026-02-24 21:42:05 +00:00
tags:
  - duriantaco
  - GitHub Actions
draft: false
repo: https://github.com/duriantaco/skylos
marketplace: https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection
version: v3.4.2
dependentsNumber: "11"
actionType: Composite
---


Version updated for **https://github.com/duriantaco/skylos** to version **v3.4.2**.
- This action is used across all versions by **11** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection) to find the latest changes.

## Action Summary

Skylos is a hybrid static application security testing (SAST) tool designed for Python, TypeScript, and Go, combining traditional static analysis with AI to detect dead code, security vulnerabilities (e.g., SQL injection, secrets), and code quality issues with high precision. It automates tasks like dead code detection, security scanning, and quality gating in CI/CD pipelines, offering features such as inline PR reviews, runtime validation, and reduced false positives. Skylos is privacy-first, requiring no configuration for seamless integration into development workflows.

## Release notes

## [3.4.2] - 2026-02-22

### Added
- Next.js/React framework TypeScript dead code detection. Convention-based exports, route handlers, config exports, react patterns, and exported custom hooks are no longer flagged as dead code
- Added dynamic dispatch pattern detection. `getattr(module, f"prefix_{var}")` registers f-string patterns and marks matching functions as used
- Added `globals()[f"prefix_{var}"]` f-string subscript detection 
- Added `__init_subclass__` registry pattern are now marked as implicitly used
- `base_classes` field on `Definition` for tracking class inheritance chains
- Added Indirect enum inheritance
- Added 12 new tests for dynamic pattern detection and enum member handling

### Fixed
- Fixed `pattern_tracker.pattern_refs.append()`. Was not compiling regex patterns, so f-string pattern matching was silently breaking
- Fixed inline f-strings in `getattr`/`globals()`. Calls were ignored because only pre-assigned variable names were checked
- Fixed functions containing dynamic dispatch (`getattr`/`globals()` with f-string) now auto-marked as used
- Fixed functions returning a `__init_subclass__` base type now recognized as registry consumers and marked as used
- Fixed uppercase class variable. Check was short-circuiting before enum detection could run, and the early return discarded the confidence reduction without assigning it
- Enum methods now also skipped
- Uppercase class variable early-return now properly assigns `def_obj.confidence` before returning
