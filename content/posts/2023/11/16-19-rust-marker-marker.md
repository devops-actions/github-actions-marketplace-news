---
title: Rust Marker Linter
date: 2023-11-16 19:04:57 +00:00
tags:
  - rust-marker
  - GitHub Actions
draft: false
repo: rust-marker/marker
marketplace: https://github.com/marketplace/actions/rust-marker-linter
version: v0.4.0
dependentsNumber: "5"
---


Version updated for **rust-marker/marker** to version **v0.4.0**.
- This action is used across all versions by **5** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rust-marker-linter) to find the latest changes.

## Release notes

The [v0.4.0 milestone] contains a full list of all changes.

[v0.4.0 milestone]: https://github.com/rust-marker/marker/milestone/4
[#278]: https://github.com/rust-marker/marker/pull/278
[#288]: https://github.com/rust-marker/marker/pull/288
[#294]: https://github.com/rust-marker/marker/pull/294
[#306]: https://github.com/rust-marker/marker/pull/306
[#309]: https://github.com/rust-marker/marker/pull/309

### Added
- [#306]: The `LintPass` trait now as a new `check_crate` method.
- [#294]: Items and fields now provide information about their visibility

### Fixed
- [#306]: Rustc's driver no longer ICEs on spans from compiler generated code.

### Breaking Changes
- [#278]: Moved the `span()` method from the inherent impl to `HasSpan` trait for `ClosureParam`, `FnParam`, `StructFieldPat`.
- [#278]: The trait `TyData` no longer has own `span()` method, but instead requires `HasSpan` as a supertrait.
- [#278]: All public methods that took `&Span` as a parameter now take `impl HasSpan`. This is a minor breaking change, as `&Span` implements `HasSpan`, but if you relied on type inference based on the function parameter type, then making a method generic may break your code.
- [#288]: Lint identifiers use the lint crate name as a new infix, to prevent name collisions across lint crates.
- [#306]: The items of a `Crate` are now wrapped in a `ModItem`, that is the root module of the crate.
- [#309]: Renamed `CallExpr::operand` to `CallExpr::func`
- [#309]: Renamed `RefPat::pattern()` -> `RefPat::pat()`
- [#309]: Renamed `OrPat::patterns()` -> `RefPat::pats()`
