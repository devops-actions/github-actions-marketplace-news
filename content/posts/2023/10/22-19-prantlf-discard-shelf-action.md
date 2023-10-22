---
title: discard Build Output
date: 2023-10-22 19:05:32 +00:00
tags:
  - prantlf
  - GitHub Actions
draft: false
repo: prantlf/discard-shelf-action
marketplace: https://github.com/marketplace/actions/discard-build-output
version: v3.0.0
dependentsNumber: "4"
---


Version updated for **prantlf/discard-shelf-action** to version **v3.0.0**.
- This action is used across all versions by **4** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/discard-build-output) to find the latest changes.

## Release notes

# [3.0.0](https://github.com/prantlf/discard-shelf-action/compare/v2.1.1...v3.0.0) (2023-10-22)

## Features

* Run only in specified branches ([0442f58](https://github.com/prantlf/discard-shelf-action/commit/0442f58f3b9dcbdfe9fc5a2ba252d7e107d26acc))

## BREAKING CHANGES

If you used this action for branches `main` or `master`, your configuration will continue working, because those branches are enabled by default. If you used it for other branches, specify all their names in the input `branches`. If you used this action on all branches, set the input `branches` to `*`.

