---
title: rust-affected
date: 2026-03-13 13:33:11 +00:00
tags:
  - RobertRautenbach
  - GitHub Actions
draft: false
repo: https://github.com/RobertRautenbach/rust-affected
marketplace: https://github.com/marketplace/actions/rust-affected
version: v3.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/RobertRautenbach/rust-affected** to version **v3.0.1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rust-affected) to find the latest changes.

## Action Summary

The `rust-affected` GitHub Action analyzes changes in a Rust workspace to identify which packages are affected by a code push. It leverages the Cargo dependency graph to determine directly modified crates, affected library or binary members, and whether a force-triggered full rebuild is necessary. This action streamlines CI/CD workflows by automating dependency impact analysis, enabling efficient builds and deployments.

## Release notes

## What's Changed
* docs: update README to reflect mutually exclusive `affected_library_members` / `affected_binary_members` by @Copilot in https://github.com/RobertRautenbach/rust-affected/pull/9
* build(deps): bump docker/build-push-action from 6 to 7 by @dependabot[bot] in https://github.com/RobertRautenbach/rust-affected/pull/12
* build(deps): bump rust from 1.93.1-alpine3.23 to 1.94.0-alpine3.23 by @dependabot[bot] in https://github.com/RobertRautenbach/rust-affected/pull/11
* build(deps): bump docker/setup-buildx-action from 3 to 4 by @dependabot[bot] in https://github.com/RobertRautenbach/rust-affected/pull/10


**Full Changelog**: https://github.com/RobertRautenbach/rust-affected/compare/v3.0.0...v3.0.1
