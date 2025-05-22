---
title: Maven Dependency Tree Dependency Submission
date: 2025-05-22 01:12:08 +00:00
tags:
  - advanced-security
  - GitHub Actions
draft: false
repo: https://github.com/advanced-security/maven-dependency-submission-action
marketplace: https://github.com/marketplace/actions/maven-dependency-tree-dependency-submission
version: v5.0.0
dependentsNumber: "35,404"
---


Version updated for **https://github.com/advanced-security/maven-dependency-submission-action** to version **v5.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **35,404** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/maven-dependency-tree-dependency-submission) to find the latest changes.

## Release notes

## Improved multi-module support

This release improves multi-module support by reflecting which `pom.xml` file brings in a particular dependency. Previously, the dependencies were aggregated into the top-level `pom.xml` file. If a given package is brought in via multiple modules, that package will be reflected in all of the modules that reference it.

Because of this change in behavior, we've removed two configuration options:

- `snapshot-dependency-file-name`: no longer applicable since we submit more than one manifest
- `snapshot-include-file-name`: this flag determined whether the manifest object included the file path. It should always be available and there's no reason to omit it, so we've removed the flag.
