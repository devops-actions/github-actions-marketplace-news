---
title: hpc-codecov-action
date: 2024-04-26 11:27:15 +00:00
tags:
  - 8c6794b6
  - GitHub Actions
draft: false
repo: 8c6794b6/hpc-codecov-action
marketplace: https://github.com/marketplace/actions/hpc-codecov-action
version: v4.0.0
dependentsNumber: "59"
---


Version updated for **8c6794b6/hpc-codecov-action** to version **v4.0.0**.
- This action is used across all versions by **59** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hpc-codecov-action) to find the latest changes.

## Release notes

### Added

- ``expr_only`` input parameter to generate report from expressions
  only, ignores coverage data of branches and top-level functions.

- ``ignore_dittos`` input parameter to ignore some of the compiler
  generated source codes, including record field functions, some of
  the type class names in derived instance, and top-level
  TemplateHaskell splices.

### Changed

- Update the ``hpc-codecov`` version to 0.6.0.0
- Update package dependencies from npm.

