---
title: Set Label When Approved
date: 2024-06-05 08:46:29 +00:00
tags:
  - TobKed
  - GitHub Actions
draft: false
repo: TobKed/label-when-approved-action
marketplace: https://github.com/marketplace/actions/set-label-when-approved
version: v1.3
dependentsNumber: "74"
---


Version updated for **TobKed/label-when-approved-action** to version **v1.3**.
- This action is used across all versions by **74** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/set-label-when-approved) to find the latest changes.

## Release notes

* turns missing pr in workflow_run into warning.

Sometimes (quite often really) when PR gets approved, the PR
gets merged rather quickly, without waiting for result of this
action. Or a new PR gets pushed quickly. In those cases PR will
not be found. But this is usually not a problem then and rather
than failing, we should simply print a warning and exit.
