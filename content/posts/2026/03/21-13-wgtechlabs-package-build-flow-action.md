---
title: Package Build Flow Action
date: 2026-03-21 13:29:39 +00:00
tags:
  - wgtechlabs
  - GitHub Actions
draft: false
repo: https://github.com/wgtechlabs/package-build-flow-action
marketplace: https://github.com/marketplace/actions/package-build-flow-action
version: v2.1.1
dependentsNumber: "6"
actionType: Composite
---


Version updated for **https://github.com/wgtechlabs/package-build-flow-action** to version **v2.1.1**.
- This action is used across all versions by **6** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/package-build-flow-action) to find the latest changes.

## Action Summary

The **Package Build Flow Action** automates the versioning, building, and publishing of JavaScript packages to the NPM Registry and GitHub Packages. It simplifies workflows by providing intelligent flow detection based on GitHub events, supporting multiple release types (e.g., production, pre-release, staging), and enabling seamless integration with monorepos. Key features include smart semantic versioning, dual registry support, automated dist-tag management, security scanning, and zero-configuration setup for streamlined package management.

## Release notes

## [2.1.1] - 2026-03-21

### Changed

- checkout branch then reset to triggering commit sha
- clarify scope detection priority, dependency-order limits, and clean-commit parser behavior
- update README and examples for v2 with commit convention gate
- extract bot actor detection into dedicated script with ci tests
- add bot-safe validation job and document bot detection
- add Bun-native runtime, audit, and publish support without workflow Node setup (#34)
- Bump wgtechlabs/release-build-flow-action from 1.6.0 to 1.7.0 (#32)
