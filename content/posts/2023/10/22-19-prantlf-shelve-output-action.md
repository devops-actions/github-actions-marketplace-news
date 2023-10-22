---
title: Shelve Build Output
date: 2023-10-22 19:05:30 +00:00
tags:
  - prantlf
  - GitHub Actions
draft: false
repo: prantlf/shelve-output-action
marketplace: https://github.com/marketplace/actions/shelve-build-output
version: v2.0.0
dependentsNumber: "6"
---


Version updated for **prantlf/shelve-output-action** to version **v2.0.0**.
- This action is used across all versions by **6** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/shelve-build-output) to find the latest changes.

## Release notes

# [2.0.0](https://github.com/prantlf/shelve-output-action/compare/v1.1.0...v2.0.0) (2023-10-22)

## Features

* Run only in specified branches ([16faccb](https://github.com/prantlf/shelve-output-action/commit/16faccba212b872ecce93d8cf6e9ce21008c1e3f))

## BREAKING CHANGES

If you used this action for branches `main` or `master`, your configuration will continue working, because those branches are enabled by default. If you used it for other branches, specify all their names in the input `branches`. If you used this action on all branches, set the input `branches` to `*`.

