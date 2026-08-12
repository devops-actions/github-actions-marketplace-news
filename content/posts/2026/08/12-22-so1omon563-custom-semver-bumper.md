---
title: Custom Version Bumper
date: 2026-08-12 22:44:41 +00:00
tags:
  - so1omon563
  - GitHub Actions
draft: false
repo: https://github.com/so1omon563/custom-semver-bumper
marketplace: https://github.com/marketplace/actions/custom-version-bumper
version: v1.0.12
dependentsNumber: "14"
actionType: Composite
actionSummary: |
  GitHub Action to automatically tag merge commits with Semantic Versioning 2.0.0-compliant Git tags, handling commit messages for major, minor, and patch bumps, supporting Conventional Commits, pre-releases, and floating reference tags. The action can be configured to skip certain branches or use branch name fallbacks for versioning.
---


Version updated for **https://github.com/so1omon563/custom-semver-bumper** to version **v1.0.12**.

- This action is used across all versions by **14** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/custom-version-bumper) to find the latest changes.

## Action Summary

GitHub Action to automatically tag merge commits with Semantic Versioning 2.0.0-compliant Git tags, handling commit messages for major, minor, and patch bumps, supporting Conventional Commits, pre-releases, and floating reference tags. The action can be configured to skip certain branches or use branch name fallbacks for versioning.

## What's Changed

### 🐛 Bug Fixes
- handle pull request heads safely (#16) (`356127a`)
- require bats for full suite (#15) (`5b693a4`)
- parse Conventional Commit headers only (SO1-266) (#14) (`ceac5b8`)
- publish tags atomically (#13) (`12902d5`)
- preserve inline prerelease suffixes (SO1-265) (#12) (`d8d7d99`)
- validate prerelease suffixes (SO1-263) (#11) (`554cac9`)
- validate bump configuration (#10) (`b043d9c`)
