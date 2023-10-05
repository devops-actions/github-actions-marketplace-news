---
title: Rust Marker Linter
date: 2023-10-05 10:59:49 +00:00
tags:
  - rust-marker
  - GitHub Actions
draft: false
repo: rust-marker/marker
marketplace: https://github.com/marketplace/actions/rust-marker-linter
version: v0.3.0
dependentsNumber: "5"
---


Version updated for **rust-marker/marker** to version **v0.3.0**.
- This publisher is shown as erified by GitHub.
- This action is used across all versions by **5** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rust-marker-linter) to find the latest changes.

## Release notes

This version introduces precompiled binaries and CI templates. This version also tried to combine all breaking changes, to make `v0.3.0` a solid baseline for new additions.

The [v0.3.0 milestone] contains a full list of all changes.

[v0.3.0 milestone]: https://github.com/rust-marker/marker/milestone/3?closed=1
[#231]: https://github.com/rust-marker/marker/pull/231
[#232]: https://github.com/rust-marker/marker/pull/232
[#239]: https://github.com/rust-marker/marker/pull/239
[#241]: https://github.com/rust-marker/marker/pull/241
[#244]: https://github.com/rust-marker/marker/pull/244
[#245]: https://github.com/rust-marker/marker/pull/245
[#252]: https://github.com/rust-marker/marker/pull/252
[#256]: https://github.com/rust-marker/marker/pull/256
[#259]: https://github.com/rust-marker/marker/pull/259
[#260]: https://github.com/rust-marker/marker/pull/260
[#263]: https://github.com/rust-marker/marker/pull/263
[#265]: https://github.com/rust-marker/marker/pull/265
[#268]: https://github.com/rust-marker/marker/pull/268

### Added
- [#232]: Add scope config for visitors and `for_each_expr` to `marker_utils`
- [#239]: GitHub releases now provide precompiled binaries of `cargo-marker` and `marker_rustc_driver`.
- [#252]: Marker now provides install scripts for linux, macos and windows
- [#259]: Introduced a GitHub Action for installing and running Marker

### Breaking Changes
- [#256]: Renamed `AstContext` -> `MarkerContext`
- [#256]: Moved `marker_api::ast::common::span` -> `marker_api::span`
- [#241]: Renamed `QuestionMarkExpr` -> `TryExpr`
- [#244]: `StmtKind` and `PatKind` no longer wrap `Kind*` directly
- [#245]: `emit_lint()` takes less arguments and returns a `DiagnosticBuilder` instance
- [#263]: Updated the [`ui_test`](https://crates.io/crates/ui_test) used by `marker_uitest` from `v0.11.7` to `v0.21.2`
- [#260]: Moved `AstContext::{body, item, lint_level_at}` to the new `AstMap` struct accessible via `MarkerContext::ast()`
- [#265]: Removed the `CallableData` trait
- [#268]: Moved semantic types and generics to the new `marker_api::sem` module
- [#268]: Moved common items, like IDs, to the new `marker_api::common` module
- [#268]: Removed the `Sem` and `Syn` prefix from types and generics
- [#268]: `marker_api::prelude` no longer contains the semantic and syntactic `TyKind` enums
- [#268]: `marker_api::prelude` now imports the `sem` and `ast` names
- [#268]: The `marker_api::ast` module has been flattened
- [#268]: The `marker_api::lint` and `marker_api::interface` are now private

### Internal

- [#231]: Significantly improved error handling
- [#239]: The release flow was automated. It's now a process of updating the `CHANGELOG.md` and doing several clicks to trigger the CI job.
