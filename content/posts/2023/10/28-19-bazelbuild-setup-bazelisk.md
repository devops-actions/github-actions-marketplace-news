---
title: Setup Bazelisk
date: 2023-10-28 19:17:03 +00:00
tags:
  - bazelbuild
  - GitHub Actions
draft: false
repo: bazelbuild/setup-bazelisk
marketplace: https://github.com/marketplace/actions/setup-bazelisk
version: v2.0.0
dependentsNumber: "769"
---


Version updated for **bazelbuild/setup-bazelisk** to version **v2.0.0**.
- This action is used across all versions by **769** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-bazelisk) to find the latest changes.

## Release notes

This change adds a minimum runner version(node12 -> node16), which can break users using an out-of-date/fork of the runner. This would be most commonly affecting users on GHES 3.3 or before, as those runners do not support node16 actions and they can use actions from github.com via [github connect](https://docs.github.com/en/enterprise-server@3.0/admin/github-actions/managing-access-to-actions-from-githubcom/enabling-automatic-access-to-githubcom-actions-using-github-connect) or manually copying the repo to their GHES instance.
