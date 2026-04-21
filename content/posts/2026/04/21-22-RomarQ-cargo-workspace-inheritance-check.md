---
title: Cargo Workspace Inheritance Check
date: 2026-04-21 22:00:51 +00:00
tags:
  - RomarQ
  - GitHub Actions
draft: false
repo: https://github.com/RomarQ/cargo-workspace-inheritance-check
marketplace: https://github.com/marketplace/actions/cargo-workspace-inheritance-check
version: v1.3.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/RomarQ/cargo-workspace-inheritance-check** to version **v1.3.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cargo-workspace-inheritance-check) to find the latest changes.

## Action Summary

This GitHub Action, `cargo-workspace-inheritance-check`, automates the detection and resolution of dependency inheritance issues in Rust's Cargo workspaces. It identifies cases where workspace member crates specify dependency versions directly instead of using `{ workspace = true }`, flags version mismatches, and suggests candidates for centralizing shared dependencies in the `[workspace.dependencies]` section of the root `Cargo.toml`. By enforcing consistent dependency management, it helps prevent version drift, reduces duplication, and simplifies dependency maintenance across workspace projects.

## What's Changed

## [1.3.0] - 2026-04-21

**Full Changelog**: https://github.com/RomarQ/cargo-workspace-inheritance-check/compare/v1.2.0...v1.3.0

### Added

- Ignore rules via `[workspace.metadata.inheritance-check]` in the root `Cargo.toml`:

  ```toml
  [workspace.metadata.inheritance-check]
  ignore = [
    { dependency = "rand", member = "crates/bar" }, # skip in a specific crate
    { dependency = "openssl" },                     # skip everywhere
  ]
  ```

  Ignored `(dependency, member)` pairs are suppressed from both reporting and `--fix`.
  Without `member`, the rule applies to every crate and also drops the dependency
  from promotion-candidate grouping. Both inline-array and
  `[[workspace.metadata.inheritance-check.ignore]]` array-of-tables syntax are
  accepted.

