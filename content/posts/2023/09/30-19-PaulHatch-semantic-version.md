---
title: Git Semantic Version
date: 2023-09-30 19:05:11 +00:00
tags:
  - PaulHatch
  - GitHub Actions
draft: false
repo: PaulHatch/semantic-version
marketplace: https://github.com/marketplace/actions/git-semantic-version
version: v5.3.0
dependentsNumber: "0"
---


Version updated for **PaulHatch/semantic-version** to version **v5.3.0**.
- This publisher is shown as erified by GitHub.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/git-semantic-version) to find the latest changes.

## Release notes

This version [finally introduces a new branch-based versioning mode](https://github.com/PaulHatch/semantic-version/issues/76), `version_from_branch`, to support on-going releases. If enabled, the major and optionally minor version will always be taken from the branch, and only tags which match will be considered candidates. By default, any branch name format is allowed and will be used as the version so long as it ends with a major or major.minor version, e.g. `release/v1` or `release/1.2` or `v1`. This is an advanced feature and should really only be needed if you maintaining ongoing updates for previous versions. Additional documentation and an expanded user guide coming soon. With this release `use_branches` is deprecated and will be removed in v6.

Additionally, this release fixes [a bug](https://github.com/PaulHatch/semantic-version/issues/122) where prerelease mode was not working when bump each commit was enabled.
