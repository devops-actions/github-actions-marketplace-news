---
title: nightshift-agent
date: 2026-06-07 06:41:05 +00:00
tags:
  - chamoda
  - GitHub Actions
draft: false
repo: https://github.com/chamoda/nightshift-agent
marketplace: https://github.com/marketplace/actions/nightshift-agent
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/chamoda/nightshift-agent** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nightshift-agent) to find the latest changes.

## What's Changed

## Fixes
- Skip issues that already have an open PR. Previously only PRs using the `nightshift/issue-<n>` branch name were detected; now any open PR that references the issue (e.g. `Closes #n`) also marks it as claimed.
