---
title: Cargo Workspace Inheritance Check
date: 2026-03-19 21:47:59 +00:00
tags:
  - RomarQ
  - GitHub Actions
draft: false
repo: https://github.com/RomarQ/cargo-workspace-inheritance-check
marketplace: https://github.com/marketplace/actions/cargo-workspace-inheritance-check
version: v1.2.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/RomarQ/cargo-workspace-inheritance-check** to version **v1.2.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cargo-workspace-inheritance-check) to find the latest changes.

## Action Summary

This GitHub Action, `cargo-workspace-inheritance-check`, is a tool designed to identify and resolve dependency inheritance issues in Rust Cargo workspaces. It ensures consistency by checking for direct version specifications in member crates instead of using the shared `[workspace.dependencies]`, flags version mismatches, and identifies dependencies suitable for centralization at the workspace level. The tool automates the detection and correction of these issues, helping developers prevent version drift, reduce redundancy, and maintain clean dependency management in their projects.

## Release notes

## [1.2.0] - 2026-03-19

**Full Changelog**: https://github.com/RomarQ/cargo-workspace-inheritance-check/compare/v1.1.2...v1.2.0

## What's Changed
* Simplify codebase: extract shared helpers and reduce duplication (https://github.com/RomarQ/cargo-workspace-inheritance-check/pull/13, https://github.com/RomarQ/cargo-workspace-inheritance-check/pull/17)
* refactor: simplify Diagnostic to enum, extract for_each_dep_table_mut (https://github.com/RomarQ/cargo-workspace-inheritance-check/pull/14)
* feat: alternate registry support (https://github.com/RomarQ/cargo-workspace-inheritance-check/pull/15)

### Added

- Alternate registry support: dependencies using `registry = "my-registry"` are now handled correctly
  - A member dep only matches a workspace dep if both use the same registry (or both use the default crates.io)
  - Promotion candidates are grouped by `(name, registry)` pair — deps from different registries are not grouped together
  - `--fix` strips `registry` from member deps when converting to `{ workspace = true }` (the workspace dep owns the registry)
  - `--fix` carries `registry` into promoted workspace deps

