---
title: Release Build Flow Action
date: 2026-02-20 21:28:29 +00:00
tags:
  - wgtechlabs
  - GitHub Actions
draft: false
repo: https://github.com/wgtechlabs/release-build-flow-action
marketplace: https://github.com/marketplace/actions/release-build-flow-action
version: v1.4.2
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/wgtechlabs/release-build-flow-action** to version **v1.4.2**.
- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/release-build-flow-action) to find the latest changes.

## Action Summary

The **Release Build Flow Action** automates the process of managing software releases on GitHub by analyzing conventional commit messages. It determines semantic version bumps, generates structured changelogs in the "Keep a Changelog" format, and creates GitHub Releases without manual intervention. This action eliminates the complexity and errors of manual release management by providing deterministic, rule-based automation for versioning, changelog maintenance, and release creation.

## Release notes

## [1.4.2] - 2026-02-20

### Changed

- fix monorepo mode crash with "Cannot index string with string path"
- optimize JSON handling for commit parsing and routing
- improve JSON handling in package information collection
- validate WORKSPACE_PACKAGES format in version detection script
- validate WORKSPACE_PACKAGES format in commit changelog script
