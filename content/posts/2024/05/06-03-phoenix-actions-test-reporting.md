---
title: Test Reporting
date: 2024-05-06 03:32:55 +00:00
tags:
  - phoenix-actions
  - GitHub Actions
draft: false
repo: phoenix-actions/test-reporting
marketplace: https://github.com/marketplace/actions/test-reporting
version: v15
dependentsNumber: "305"
---


Version updated for **phoenix-actions/test-reporting** to version **v15**.
- This action is used across all versions by **305** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/test-reporting) to find the latest changes.

## Release notes

* Updated packages
* Refactored after package updates
* Updated snapshots
* Removed artifact download headers to be compatible with upload-artifact v4
* fix: reporting wrong number of tests in Dart (Thanks to @dominicmh for this fix! and to @tiagoferreira29 for reporting!)

You can now update to upload-artifact v4 if you're using it to publish your artifacts. This action can now download Azure blob storage based github action artifacts (github moved the artifact storage to azure between v3 and v4, observed via the artifact url).
