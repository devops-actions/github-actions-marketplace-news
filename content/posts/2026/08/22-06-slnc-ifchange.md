---
title: IfChange (slnc)
date: 2026-08-22 06:09:11 +00:00
tags:
  - slnc
  - GitHub Actions
draft: false
repo: https://github.com/slnc/ifchange
marketplace: https://github.com/marketplace/actions/ifchange-slnc
version: v0.3.2
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  `ifchange` is an automated tool designed to catch cross-file dependency issues in codebase by identifying and enforcing changes to referenced environment variables or configuration settings. It helps developers avoid common errors where a variable is renamed but not updated across all affected files, ensuring consistency throughout the project. The action supports linting for various file extensions and programming languages, offering robust error detection and real-time feedback during development and review processes.
---


Version updated for **https://github.com/slnc/ifchange** to version **v0.3.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ifchange-slnc) to find the latest changes.

## Action Summary

`ifchange` is an automated tool designed to catch cross-file dependency issues in codebase by identifying and enforcing changes to referenced environment variables or configuration settings. It helps developers avoid common errors where a variable is renamed but not updated across all affected files, ensuring consistency throughout the project. The action supports linting for various file extensions and programming languages, offering robust error detection and real-time feedback during development and review processes.

## What's Changed

## [0.3.2](https://github.com/slnc/ifchange/compare/v0.3.1...v0.3.2) (2026-08-21)


### Bug Fixes

* recognize LINT directives in extensionless Makefiles ([#53](https://github.com/slnc/ifchange/issues/53)) ([277063a](https://github.com/slnc/ifchange/commit/277063ac79ea1f33d85ff44689bbe4aeb0bec1af))
