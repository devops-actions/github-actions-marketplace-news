---
title: Fallow - Codebase Health
date: 2026-04-06 14:05:53 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.13.4
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.13.4**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action, **Fallow**, is a Rust-native codebase analyzer designed for TypeScript and JavaScript projects. It automates the detection of unused code, duplicate code, high-complexity functions, and architectural issues, providing actionable insights in sub-second analysis without requiring configuration. Key capabilities include identifying dead code, circular dependencies, and duplication, as well as offering tools for auditing and automatically fixing issues to maintain cleaner, more efficient codebases.

## What's Changed

## Bug fixes

- **False positive unused exports from namespace exports** — `export namespace Foo { export function bar() {} }` no longer reports inner declarations (`bar`, etc.) as unused top-level exports. This was caused by three interacting bugs: the AST walker descended into namespace bodies and extracted inner `export function` declarations as independent flat module exports; `TSModuleDeclaration` was always classified as type-only even for runtime namespaces; and member accesses like `Foo.bar()` were never matched back to the leaked inner exports. ([#52](https://github.com/fallow-rs/fallow/issues/52))

  Inner exports are now tracked as namespace members on the namespace's `ExportInfo`, analogous to how enum and class members work. Runtime namespaces (no `declare`) are correctly classified as non-type-only.

## Install

```bash
npm install -g fallow@2.13.4
# or
cargo install fallow-cli@2.13.4
```

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.13.3...v2.13.4
