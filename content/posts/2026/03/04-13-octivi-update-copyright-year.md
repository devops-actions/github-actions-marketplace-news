---
title: Update Copyright Year
date: 2026-03-04 13:31:49 +00:00
tags:
  - octivi
  - GitHub Actions
draft: false
repo: https://github.com/octivi/update-copyright-year
marketplace: https://github.com/marketplace/actions/update-copyright-year
version: v1.3.0
dependentsNumber: "5"
actionType: Composite
---


Version updated for **https://github.com/octivi/update-copyright-year** to version **v1.3.0**.
- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/update-copyright-year) to find the latest changes.

## Action Summary

The **Update Copyright Year GitHub Action** automates the process of scanning and updating copyright years in file headers across a repository using configurable patterns. This action simplifies the maintenance of accurate year ranges in code headers, particularly in repositories with numerous files, by providing a lightweight, dependency-free solution. Its pure Bash implementation ensures fast execution with minimal overhead, making it secure, efficient, and easy to integrate into workflows.

## Release notes

### Added

- Add support for multiline YAML parameters for action inputs ([`edbbe94`](https://github.com/octivi/update-copyright-year/commit/edbbe94)) (Marcin Engelmann)
- Add `dry_run` and `verbose` modes with GitHub-native step logs and summary reporting ([`6381636`](https://github.com/octivi/update-copyright-year/commit/6381636)) (Marcin Engelmann)

### Fixed

- Interpret `patterns` input values as fixed strings instead of regular expressions ([`d68e1d3`](https://github.com/octivi/update-copyright-year/commit/d68e1d3)) (Marcin Engelmann)


