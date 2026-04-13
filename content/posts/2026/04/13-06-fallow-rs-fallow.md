---
title: Fallow - Codebase Health
date: 2026-04-13 06:28:19 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.30.0
dependentsNumber: "7"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.30.0**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action, "Fallow," is a Rust-based codebase analysis tool designed for TypeScript and JavaScript projects. It automates the detection of unused code, duplicate code, high-complexity functions, and architectural issues, providing fast and accurate insights without requiring configuration. Key features include analyzing dead code, identifying duplication, assessing code complexity, auditing changes, and offering auto-removal of unused elements, which streamlines code maintenance and improves overall project quality.

## What's Changed

## Highlights

**Arrow-wrapped dynamic import detection** -- `React.lazy(() => import('./Foo'))`, `loadable`, `defineAsyncComponent`, and any lazy loading wrapper are now detected generically. The default export of the target module is credited as used. No configuration or known-function list needed.

**JSDoc visibility tags** -- `@internal`, `@beta`, and `@alpha` join `@public` as recognized JSDoc/TSDoc tags that suppress unused-export detection. All four tags are stored as a `VisibilityTag` enum, preserving the semantic distinction for future API surface reporting. Priority: Public > Internal > Alpha > Beta.

**`--file` for lint-staged** -- scope check output to specific files. Dependency-level issues are suppressed in file mode since they are project-wide properties. Warns on non-existent paths.

```bash
# Pre-commit hook via lint-staged
fallow check --file src/Button.tsx --file src/utils.ts
```

**`--include-entry-exports`** -- entry file exports are normally marked as used automatically. This flag makes them subject to unused-export detection, catching typos like `meatdata` instead of `metadata` in Next.js pages.

**Script multiplexer support** -- `concurrently`, `npm-run-all`, `run-s`, `run-p` arguments are now recognized as script names, not binary dependencies. Prevents false positives for `concurrently "npm:dev" "npm:test"` patterns.

## Bug Fixes

- Arrow-wrapped imports with `destructured_names: ["default"]` now produce `ImportedName::Default` instead of `ImportedName::Named("default")`, correctly crediting the default export in the module graph

## Install

```bash
npm install -D fallow@2.30.0
# or
cargo install fallow-cli@2.30.0
```

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.29.1...v2.30.0
