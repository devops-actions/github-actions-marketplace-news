---
title: WP Packages Changelog Action
date: 2026-04-13 22:10:07 +00:00
tags:
  - roots
  - GitHub Actions
draft: false
repo: https://github.com/roots/wp-packages-changelog-action
marketplace: https://github.com/marketplace/actions/wp-packages-changelog-action
version: v3.1.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/roots/wp-packages-changelog-action** to version **v3.1.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/wp-packages-changelog-action) to find the latest changes.

## Action Summary

The **WP Packages Changelog Action** automates the process of adding WordPress plugin changelog information as comments on pull requests when changes to `composer.lock` involve WP Packages dependencies. It retrieves changelogs from the WordPress.org API, highlights potential issues with unstable versions, and ensures developers are informed about updates and changes in their dependencies. This action streamlines dependency management and improves transparency in WordPress plugin updates during development workflows.

## What's Changed

## What's Changed

### Bug fix: detect all updated plugins

Previously, the action parsed the `composer.lock` diff to find changed plugins. This only detected plugins whose `"name"` line appeared in an added diff hunk — most simple version bumps were silently missed.

The action now fetches the full `composer.lock` from both the base and head commits and compares them as JSON, reliably detecting all `wp-plugin/*` changes.

### Recommended: add `contents: read` permission

For full accuracy, add `contents: read` to your workflow permissions:

```diff
    permissions:
+     contents: read
      pull-requests: write
```

Without this permission, the action falls back to the old diff-based detection with a visible warning in the PR comment.

### Other improvements

- Blob API fallback for lockfiles >1MB
- Warnings surfaced in the PR comment when detection may be incomplete

**Full Changelog**: https://github.com/roots/wp-packages-changelog-action/compare/v3.0.0...v3.1.0

