---
title: Gcovr Action
date: 2024-09-26 16:47:02 +00:00
tags:
  - threeal
  - GitHub Actions
draft: false
repo: threeal/gcovr-action
marketplace: https://github.com/marketplace/actions/gcovr-action
version: v1.1.0
dependentsNumber: "121"
---


Version updated for **threeal/gcovr-action** to version **v1.1.0**.
- This action is used across all versions by **121** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gcovr-action) to find the latest changes.

## Release notes

## What's Changed

* Added support for generating [Cobertura](https://cobertura.github.io/cobertura/) XML reports.
* Added support for generating HTML reports.
* Modified the `github-token` input to be optional, allowing the report to be sent to [Coveralls](https://coveralls.io/) without specifying a GitHub token.
* Improved the gcovr installation using [pipx-install-action](https://www.npmjs.com/package/pipx-install-action).
* Enhanced the request for sending Coveralls reports using [formdata-node](https://www.npmjs.com/package/formdata-node) and [got](https://www.npmjs.com/package/got).
* Improved input handling and logging using [gha-utils](https://www.npmjs.com/package/gha-utils).
* Enhanced documentation in the `README.md` file.
* Improved the development workspace.
* Updated dependencies.

## New Contributors

* @niwciu made their first contribution in https://github.com/threeal/gcovr-action/pull/413.
* @jonathanreeves made their first contribution in https://github.com/threeal/gcovr-action/pull/433.

**Full Changelog**: https://github.com/threeal/gcovr-action/compare/v1...v1.1.0

