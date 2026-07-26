---
title: pslrm Bump Action
date: 2026-07-26 14:52:39 +00:00
tags:
  - krymtkts
  - GitHub Actions
draft: false
repo: https://github.com/krymtkts/pslrm-bump-action
marketplace: https://github.com/marketplace/actions/pslrm-bump-action
version: v0.0.3
dependentsNumber: "7"
actionType: Composite
actionSummary: |
  This GitHub Action automates dependency updates for projects using pslrm by updating the `psreq.lock.psd1` file. It handles branch and pull request creation or updates based on changes in the lockfile, keeping the caller workflow focused on scheduling and permissions. The action ensures that pinned pslrm versions are used and maintains consistent versioning across projects.
---


Version updated for **https://github.com/krymtkts/pslrm-bump-action** to version **v0.0.3**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pslrm-bump-action) to find the latest changes.

## Action Summary

This GitHub Action automates dependency updates for projects using pslrm by updating the `psreq.lock.psd1` file. It handles branch and pull request creation or updates based on changes in the lockfile, keeping the caller workflow focused on scheduling and permissions. The action ensures that pinned pslrm versions are used and maintains consistent versioning across projects.

## What's Changed

### Added

- Automatically create and apply the `dependencies` and `pslrm` labels to bump pull requests.
  Label management failures do not block pull request automation.

