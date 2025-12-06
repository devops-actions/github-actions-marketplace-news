---
title: VCS Diff Lint
date: 2024-09-06 16:46:33 +00:00
tags:
  - fedora-copr
  - GitHub Actions
draft: false
repo: fedora-copr/vcs-diff-lint-action
marketplace: https://github.com/marketplace/actions/vcs-diff-lint
version: v1.10.0
dependentsNumber: "25"
---


Version updated for **fedora-copr/vcs-diff-lint-action** to version **v1.10.0**.
- This action is used across all versions by **25** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vcs-diff-lint) to find the latest changes.

## Release notes

This version properly analyzes the top-most commit from the PR (without merge commit) against the correct last known commit (the one known in the PR version, not the one in the current upstream's HEAD branch, which might have changed by merging of concurrent PRs).
