---
title: Fallow - Codebase Intelligence
date: 2026-04-26 06:13:56 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-intelligence
version: v2.49.0
dependentsNumber: "13"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.49.0**.

- This action is used across all versions by **13** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-intelligence) to find the latest changes.

## Action Summary

Fallow is a static analysis tool for TypeScript and JavaScript codebases that identifies unused code, duplication, complexity, and architecture drift, while offering optional runtime insights for execution analysis in production environments. It automates codebase health checks, enabling developers to clean up dead code, reduce duplication, and enforce maintainability without requiring extensive configuration. Built for fast performance and AI-assisted workflows, Fallow provides a project-wide understanding of the codebase, making it a powerful aid for improving code quality and streamlining reviews.

## What's Changed

## Highlights

This release closes a long-standing false-positive in cross-package monorepo analysis and adds a per-analysis production toggle to the embedder API.

## Fixed

- **Cross-package enum and class members no longer flagged as unused through barrel re-exports.** When `enum Foo { A, B, C }` is defined in `lib/types.ts`, re-exported by `lib/index.ts`, and consumed cross-package via `import { Foo } from '@scope/lib'; Foo.A`, every member of `Foo` was previously reported unused. The detection loop's origin-keyed lookup missed the access set keyed at the barrel because Phase 4 chain resolution synthesizes a stub `ExportSymbol` on the barrel that's indistinguishable from a real local declaration by name alone. `find_unused_members` now walks each access through `ReExportEdge` chains (named, renamed, and `export *` fan-out) to every defining-site export and copies the access set. Same fix applies to `whole_object_used_exports` for `Object.values(Foo)` patterns. Covers both `unused_enum_members` and `unused_class_members`. Real-world impact on vue-core: 17 false positives eliminated (12 enum + 5 class). Closes [#178](https://github.com/fallow-rs/fallow/issues/178).
- **Embedder API now respects per-analysis production config end-to-end.** `analyze_project` was reading the global `FallowConfig.production` flag for downstream filtering even when the per-call options overrode it; the flatten step now threads the resolved per-analysis flag through every detector consistently.
- **GitLab CI template defaults `FALLOW_PRODUCTION*` variables to empty strings** so pipelines that override them via `extends:` are no longer locked to the default.
- **Health Istanbul coverage keys by `(name, line, col)` instead of `(name, line)`** to disambiguate curried arrow functions that share a start line and column.

## Added

- **Per-analysis production mode for the programmatic API.** `analyze_project` now accepts an optional `production` flag that overrides the global `FallowConfig.production` for that single call, so an embedder can run a check pass with `production: false` (developer-mode entry points, full graph) and a follow-up health pass with `production: true` (start/build entries only, type-only deps detected) against the same project state without rebuilding config. CLI users get the same toggle via the existing `--production` flag; the new path is the embedder API surface (Vite plugin, GitHub Action library mode, IDE plugins).

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.48.5...v2.49.0

