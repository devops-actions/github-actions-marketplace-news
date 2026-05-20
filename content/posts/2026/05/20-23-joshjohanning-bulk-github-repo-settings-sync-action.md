---
title: Bulk GitHub Repository Settings Sync
date: 2026-05-20 23:15:57 +00:00
tags:
  - joshjohanning
  - GitHub Actions
draft: false
repo: https://github.com/joshjohanning/bulk-github-repo-settings-sync-action
marketplace: https://github.com/marketplace/actions/bulk-github-repository-settings-sync
version: v2.10.0
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/joshjohanning/bulk-github-repo-settings-sync-action** to version **v2.10.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bulk-github-repository-settings-sync) to find the latest changes.

## Action Summary

The "Bulk GitHub Repository Settings Sync Action" automates the process of updating and synchronizing settings across multiple GitHub repositories. It simplifies tasks such as configuring merge strategies, enabling security features like secret scanning and Dependabot updates, syncing files (e.g., `.gitignore`, workflow files, CODEOWNERS), and managing repository rulesets and topics. This action addresses the challenge of manually managing repository settings at scale, providing centralized control, dynamic filtering, and preview capabilities for efficient governance and consistency.

## What's Changed

## What's Changed
* chore(deps-dev): bump jest from 30.4.1 to 30.4.2 by @dependabot[bot] in https://github.com/joshjohanning/bulk-github-repo-settings-sync-action/pull/202
* feat: add PENDING subResult status and pending-repositories output by @joshjohanning in https://github.com/joshjohanning/bulk-github-repo-settings-sync-action/pull/204

## ⚠️ `changed-repositories` output calculation change

- Repositories with an existing up-to-date sync PR (`pr-up-to-date`) are now reported as `pending` instead of `changed`.
- `changed-repositories` now counts only repositories where the action changed something during this run, or would change something in dry-run mode.
- `pending-repositories` counts repositories where the desired change is already present in an open PR, so the action did not need to update anything this run.

This makes dry-run output clearer: `changed-repositories` answers "how many repositories would this run modify?", while `pending-repositories` answers "how many repositories already have the change staged in an open PR?".

If you previously used `changed-repositories` as a "repos not yet fully reconciled" count, use `changed-repositories + pending-repositories` instead.

**Full Changelog**: https://github.com/joshjohanning/bulk-github-repo-settings-sync-action/compare/v2.9.6...v2.10.0
