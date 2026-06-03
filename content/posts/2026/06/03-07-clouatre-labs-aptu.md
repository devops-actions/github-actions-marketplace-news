---
title: Aptu Triage
date: 2026-06-03 07:00:05 +00:00
tags:
  - clouatre-labs
  - GitHub Actions
draft: false
repo: https://github.com/clouatre-labs/aptu
marketplace: https://github.com/marketplace/actions/aptu-triage
version: v0.8.5
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/clouatre-labs/aptu** to version **v0.8.5**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aptu-triage) to find the latest changes.

## What's Changed

## What's Changed

### Features
- **Security:** Detect leaked GitHub App installation tokens (`ghs_`) -- covers both the current opaque format and the new stateless JWT format rolling out in May 2026 (#1283)

### Refactor
- **Edition 2024:** Remove redundant `ref` patterns and `into_owned` residuals across the workspace (#1289)

### Tests
- Replace `assert!(matches!())` with `assert_matches!` (stabilized in Rust 1.96); remove two placeholder `assert!(true)` tests in `facade.rs` (#1287)

### Docs
- **Security:** Update `authority_url` description to reflect CWE-1336 for prompt-injection patterns (#1290)

### Chores
- **Toolchain:** Bump Rust to 1.96.0 (#1286)
- **CI:** Use `ubuntu-24.04-arm` runners everywhere (#1277)
- **Deps:** Bump `aptu-coder-core` to 0.15.0 (#1278)
- **Deps:** Update `octocrab` to 0.51 (#1280)
- **Deps:** Update non-major dependencies (#1285)
- **Deps:** Update GitHub Actions (#1279, #1284)

**Full changelog:** https://github.com/clouatre-labs/aptu/compare/v0.8.4...v0.8.5

