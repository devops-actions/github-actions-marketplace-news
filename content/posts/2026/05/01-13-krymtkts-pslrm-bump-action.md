---
title: pslrm Bump Action
date: 2026-05-01 13:53:30 +00:00
tags:
  - krymtkts
  - GitHub Actions
draft: false
repo: https://github.com/krymtkts/pslrm-bump-action
marketplace: https://github.com/marketplace/actions/pslrm-bump-action
version: v0.0.1-alpha
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/krymtkts/pslrm-bump-action** to version **v0.0.1-alpha**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pslrm-bump-action) to find the latest changes.

## Action Summary

The `pslrm-bump-action` is a GitHub Action designed to automate dependency management for projects using the `pslrm` module. It updates the `psreq.lock.psd1` lockfile by running `pslrm`, and if changes are detected, it automatically handles branch creation, commits, pushes, and pull request updates. This action simplifies dependency update workflows by streamlining lockfile management, ensuring consistency, and reducing manual effort in maintaining dependencies.

## What's Changed

### Added

- Add a preview GitHub Action that updates `psreq.lock.psd1` with `pslrm`.
- Add automation for branch, commit, push, and pull request handling around lockfile updates.
- Add inputs for project selection, PowerShell edition selection and GitHub token.
- Add outputs so caller workflows can inspect the run outcome and bump state.

### Notes

- The current preview targets one project per action run.
- The target project uses `psreq.psd1` and `psreq.lock.psd1`.
- The current preview focuses on lockfile update plus pull request creation.
- Multi-project orchestration is not implemented in the current preview.
- Action releases and pinned `pslrm` versions have separate version tracks.

