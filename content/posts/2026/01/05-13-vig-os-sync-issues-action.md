---
title: Sync Issues and PRs
date: 2026-01-05 13:23:51 +00:00
tags:
  - vig-os
  - GitHub Actions
draft: false
repo: https://github.com/vig-os/sync-issues-action
marketplace: https://github.com/marketplace/actions/sync-issues-and-prs
version: v0.1.1
dependentsNumber: "?"
---


Version updated for **https://github.com/vig-os/sync-issues-action** to version **v0.1.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sync-issues-and-prs) to find the latest changes.

## Action Summary

The "Sync Issues and PRs Action" is a GitHub Action designed to automate the synchronization of repository issues and pull requests into organized markdown files. It captures all relevant details, including comments, conversations, metadata, and review threads, enabling users to archive or process repository information outside of GitHub. This action simplifies tracking and documentation tasks, particularly for teams requiring offline or structured records of GitHub activity.

## Release notes

# Release v0.1.1

**Release Date:** December 19, 2025

## Critical Bug Fix

This release fixes a critical issue that prevented the GitHub Action from executing properly.

### Fixed
- **Missing build artifacts**: Fixed missing `dist/index.js` file in published releases. The action now correctly includes all compiled code, ensuring GitHub Actions can find and execute the action.
- Updated `.gitignore` to allow distribution files to be committed to the repository.

## Enhancements

### Developer Experience Improvements
- **TypeScript definitions**: Added comprehensive TypeScript definition files (`.d.ts`) for better IDE support and type checking when using this action in TypeScript projects.
- **Source maps**: Included source maps for improved debugging experience.
- **License compliance**: Added `licenses.txt` file with all dependency licenses in the distribution folder.

### Dependencies
- Updated `vig-os/commit-action` from `v0.1.0` to `v0.1.1` in internal workflows.

## Installation

Update your workflow to use the latest version:

```yaml
- name: Sync Issues and PRs
  uses: vig-os/sync-issues-action@v0.1.1
```

## Migration

No migration required. This is a patch release that fixes a critical bug. All existing workflows using `v0.1.0` should update to `v0.1.1` to ensure the action executes correctly.

## Full Changelog

For detailed changes, see the [CHANGELOG.md](https://github.com/vig-os/sync-issues-action/blob/dev/CHANGELOG.md).

---

**Full Changelog:** [v0.1.0...v0.1.1](https://github.com/vig-os/sync-issues-action/compare/v0.1.0...v0.1.1)

