---
title: Dependabot Changelog Helper
date: 2023-11-27 18:59:37 +00:00
tags:
  - dangoslen
  - GitHub Actions
draft: false
repo: dangoslen/dependabot-changelog-helper
marketplace: https://github.com/marketplace/actions/dependabot-changelog-helper
version: v3.7.0
dependentsNumber: "83"
---


Version updated for **dangoslen/dependabot-changelog-helper** to version **v3.7.0**.
- This action is used across all versions by **83** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/dependabot-changelog-helper) to find the latest changes.

## Release notes

### Added
- Now supports [Dependabot multi-package updates](https://docs.github.com/en/code-security/dependabot/dependabot-version-updates/configuration-options-for-the-dependabot.yml-file#groups). Each dependency upgrade will form a new line under the configured [section](./README.md#sectionheader) as if the upgrade was from it's own pull request.

### Dependencies
- Bump `@actions/github` from 5.1.0 to 6.0.0 ([#209](https://github.com/dangoslen/dependabot-changelog-helper/pull/209))
- Bump `jest` from 29.6.1 to 29.7.0 ([#211](https://github.com/dangoslen/dependabot-changelog-helper/pull/211))
- Bump `@types/jest` from 29.5.2 to 29.5.8 ([#211](https://github.com/dangoslen/dependabot-changelog-helper/pull/211))
- Bump `actions/checkout` from 3.5.3 to 4.1.1 ([#207](https://github.com/dangoslen/dependabot-changelog-helper/pull/207))
- Bump `actions/setup-node` from 3 to 4 ([#206](https://github.com/dangoslen/dependabot-changelog-helper/pull/206))
- Bump `@vercel/ncc` from 0.36.1 to 0.38.1 ([#221](https://github.com/dangoslen/dependabot-changelog-helper/pull/221))
- Bump `eslint-plugin-jest` from 27.2.2 to 27.6.0 ([#220](https://github.com/dangoslen/dependabot-changelog-helper/pull/220))

### Refactored
- Refactored how a changelog gets updated to allow for multiple entries to be written in one invocation of the action. This is preparatory work to allow for multi-package updates
- Refactored `entry-extractor` to return an array of `DependabotEntry` values to update the changelog with. This is preparatory work to allow for multi-package updates
