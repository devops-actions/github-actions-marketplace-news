---
title: LaunchDarkly Code References in Pull Request
date: 2023-11-14 03:00:50 +00:00
tags:
  - launchdarkly
  - GitHub Actions
draft: false
repo: launchdarkly/find-code-references-in-pull-request
marketplace: https://github.com/marketplace/actions/launchdarkly-code-references-in-pull-request
version: v1.1.0
dependentsNumber: "?"
---


Version updated for **launchdarkly/find-code-references-in-pull-request** to version **v1.1.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/launchdarkly-code-references-in-pull-request) to find the latest changes.

## Release notes

### Added
- Indicate if a removed flag has all references removed
  - Output `any-extinct`, `extinct-flags-count`, `extinct-flags`

### Changed
- Update the comment design
- Update dependencies

### Fixed
- Detect aliases for removed flags
- Wrong output set for `any-removed`, `removed-flags-count`, `removed-flags`
