---
title: Prune Stale Branches
date: 2024-03-29 03:27:52 +00:00
tags:
  - liatrio
  - GitHub Actions
draft: false
repo: liatrio/prune-stale-branches-action
marketplace: https://github.com/marketplace/actions/prune-stale-branches
version: v0.6.0
dependentsNumber: "?"
---


Version updated for **liatrio/prune-stale-branches-action** to version **v0.6.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prune-stale-branches) to find the latest changes.

## Release notes

This is the first release of the Prune Stale Branches Action which is capable of finding stale and/or unused branches in a repository.

The action will perform the following steps on each run:

1. Search all branches for any without activity since the provided `stale-branch-age` parameter.
2. If no activity has occurred since the provided date, check if an issue to alert the team has already been created.
3. If an issue has **NOT** been created, create one to alert owners of the branch deletion.
4. If an issue has been created, check if it's been open longer than the `stale-branch-issue-age` parameter specifies and delete the branch if so.
