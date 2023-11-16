---
title: Branch sync
date: 2023-11-16 03:09:06 +00:00
tags:
  - JDTX0
  - GitHub Actions
draft: false
repo: JDTX0/branch-sync
marketplace: https://github.com/marketplace/actions/branch-sync
version: 1.5.0
dependentsNumber: "?"
---


Version updated for **JDTX0/branch-sync** to version **1.5.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/branch-sync) to find the latest changes.

## Release notes

# Changelog

## v1.5.0

- Optimized code to search for existing PR's before opening a new one
- Added helpful GitHub action summaries to link to the created PR or provide
a reason why the PR wasn't created (e.g. no diff)
- Return the correct PR URL in the GitHub actions output instead of an API URL
- Updated existing search PR code to look for a predefined title rather than simply
using the source/target branch as that can pick up PR's that aren't created by
the action.
- NodeJS changed to v16
- Rebuilt code against latest actions toolkit to fix `set-output` deprecated warnings
- Updated all dependencies/library versions
