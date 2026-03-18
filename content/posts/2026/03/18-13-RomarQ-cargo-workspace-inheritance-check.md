---
title: Cargo Workspace Inheritance Check
date: 2026-03-18 13:33:05 +00:00
tags:
  - RomarQ
  - GitHub Actions
draft: false
repo: https://github.com/RomarQ/cargo-workspace-inheritance-check
marketplace: https://github.com/marketplace/actions/cargo-workspace-inheritance-check
version: v1.0.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/RomarQ/cargo-workspace-inheritance-check** to version **v1.0.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cargo-workspace-inheritance-check) to find the latest changes.

## Action Summary

This GitHub Action, `cargo-workspace-inheritance-check`, is a tool for detecting and resolving dependency inheritance issues in Rust Cargo workspaces. It identifies and flags cases where workspace member crates directly specify dependency versions instead of inheriting them from the workspace, highlights version mismatches, and suggests candidates for centralizing shared dependencies. By automating the detection and resolution of these issues, it helps maintain consistency, prevents version drift, and simplifies dependency management across large workspaces.

## Release notes

## [1.0.0] - 2026-03-17

**Full Changelog**: https://github.com/RomarQ/cargo-workspace-inheritance-check/compare/v0.2.0...v1.0.0

### Added

- GitHub Action for CI integration (`uses: RomarQ/cargo-workspace-inheritance-check@v1`)
- CI workflow with smoke tests

