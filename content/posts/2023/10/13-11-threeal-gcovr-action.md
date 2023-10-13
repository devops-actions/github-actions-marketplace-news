---
title: Gcovr Action
date: 2023-10-13 11:04:07 +00:00
tags:
  - threeal
  - GitHub Actions
draft: false
repo: threeal/gcovr-action
marketplace: https://github.com/marketplace/actions/gcovr-action
version: v1.0.0
dependentsNumber: "23"
---


Version updated for **threeal/gcovr-action** to version **v1.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **23** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gcovr-action) to find the latest changes.

## Release notes

- Major migration to [JavaScript Action](https://docs.github.com/en/actions/creating-actions/creating-a-javascript-action) (#29).
- Fix send to [Coveralls](https://coveralls.io/) does not exit with non-zero status on failure (#27).
- Support multiple exclusions in the `excludes` input (previously `exclude` input) (#108).
- Cache pip dependencies (#34).
- Better output:
  - Colorized output (#38).
  - Better failed message (#66).
