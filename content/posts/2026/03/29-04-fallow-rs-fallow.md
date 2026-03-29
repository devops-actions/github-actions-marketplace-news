---
title: Fallow - Codebase Health
date: 2026-03-29 04:39:44 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.5.5
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.5.5**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action, **Fallow**, helps developers analyze TypeScript and JavaScript codebases by identifying dead code, duplicate code, and complex code sections. It automates tasks such as detecting unused files, exports, and dependencies, finding copy-pasted code, and highlighting overly complex functions to optimize code quality and maintainability. With its Rust-native implementation, it provides fast, zero-configuration analysis, making it ideal for efficient code cleanup and refactoring.

## What's Changed

## Bug Fix

**Stale cache prevented type-level enum detection from taking effect.** The type-level enum member detection added in v2.5.3 and v2.5.4 (`Record<Enum, T>`, `{ [K in Enum]: T }`, `keyof typeof Enum`, qualified type names) requires re-extraction of files, but the cache version was not bumped. Users upgrading from v2.5.2 or earlier would still see false unused enum member reports until running with `--no-cache`.

This release bumps the cache version to automatically invalidate stale entries.

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.5.4...v2.5.5
