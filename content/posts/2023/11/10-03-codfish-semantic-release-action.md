---
title: Semantic Release Action
date: 2023-11-10 03:20:09 +00:00
tags:
  - codfish
  - GitHub Actions
draft: false
repo: codfish/semantic-release-action
marketplace: https://github.com/marketplace/actions/semantic-release-action
version: v3.0.0
dependentsNumber: "0"
---


Version updated for **codfish/semantic-release-action** to version **v3.0.0**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/semantic-release-action) to find the latest changes.

## Release notes

# [3.0.0](https://github.com/codfish/semantic-release-action/compare/v2.2.1...v3.0.0) (2023-11-09)


### Bug Fixes

* run safe-directory on /github/workspace ([3e26d45](https://github.com/codfish/semantic-release-action/commit/3e26d457fde0157b58fcd2e0329738a4830d9cd8))


### Features

* bump semantic to v22, use node v20 ([7f2510c](https://github.com/codfish/semantic-release-action/commit/7f2510c67d16fcf31d05e50fdbeb3cd1c7792f34))
* include main branch by default, update input casing ([ad7eb9d](https://github.com/codfish/semantic-release-action/commit/ad7eb9d18d052ffd8554651af1f1b12e8479b6bb))


### BREAKING CHANGES

* Using semantic-release v22. Please see release notes:
    - https://github.com/semantic-release/semantic-release/releases/tag/v21.0.0
    - https://github.com/semantic-release/semantic-release/releases/tag/v22.0.0

* All inputs are using kebab case rather than snake. Simply update the following inputs if you are using them:
    - `additional_packages` -> `additional-packages`
    - `dry_run` -> `dry-run`
    - `repository_url` -> `repository-url`
    - `tag_format` -> `tag-format`




