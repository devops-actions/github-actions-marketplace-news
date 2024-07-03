---
title: Maven Dependency Tree Dependency Submission
date: 2024-07-03 16:46:48 +00:00
tags:
  - advanced-security
  - GitHub Actions
draft: false
repo: advanced-security/maven-dependency-submission-action
marketplace: https://github.com/marketplace/actions/maven-dependency-tree-dependency-submission
version: v4.1.0
dependentsNumber: "23,969"
---


Version updated for **advanced-security/maven-dependency-submission-action** to version **v4.1.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **23,969** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/maven-dependency-tree-dependency-submission) to find the latest changes.

## Release notes

* Adds the ability to change the detector details for the dependency snapshots via the optional input parameters:
  * `detector-name`
  * `detector-url`
  * `detector-version`
  
  If the `detector-name` is specified, then all three become mandatory as there are no sensible defaults that can be attributed to the values.
