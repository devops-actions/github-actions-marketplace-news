---
title: Cargo Workspace Inheritance Check
date: 2026-03-18 21:38:19 +00:00
tags:
  - RomarQ
  - GitHub Actions
draft: false
repo: https://github.com/RomarQ/cargo-workspace-inheritance-check
marketplace: https://github.com/marketplace/actions/cargo-workspace-inheritance-check
version: v1.1.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/RomarQ/cargo-workspace-inheritance-check** to version **v1.1.2**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cargo-workspace-inheritance-check) to find the latest changes.

## Action Summary

The `cargo-workspace-inheritance-check` GitHub Action identifies and resolves dependency inheritance issues in Cargo workspaces. It detects when member crates specify explicit dependency versions instead of inheriting them from the workspace, flags version mismatches, and provides suggestions for promoting commonly used dependencies to the workspace level. This tool automates the detection and correction of such issues, helping Rust developers maintain consistency, prevent version drift, and streamline dependency management across their projects.

## Release notes

## [1.1.2] - 2026-03-18

### Fixed

- `--fix` now strips `default-features` from member entries when converting to `{ workspace = true }`, since it must be set at the workspace level to have any effect
- `--fix` now checks target-specific dependency sections (e.g. `[target.'cfg(windows)'.dependencies]`) when determining whether to set `default-features = false` on promoted workspace dependencies

