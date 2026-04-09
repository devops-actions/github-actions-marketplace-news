---
title: Bulk GitHub Repository Settings Sync
date: 2026-04-09 22:03:03 +00:00
tags:
  - joshjohanning
  - GitHub Actions
draft: false
repo: https://github.com/joshjohanning/bulk-github-repo-settings-sync-action
marketplace: https://github.com/marketplace/actions/bulk-github-repository-settings-sync
version: v2.0.6
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/joshjohanning/bulk-github-repo-settings-sync-action** to version **v2.0.6**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bulk-github-repository-settings-sync) to find the latest changes.

## Action Summary

The Bulk GitHub Repository Settings Sync Action automates the process of updating and synchronizing settings, configurations, and files across multiple GitHub repositories. It simplifies tasks such as managing repository settings (merge strategies, branch deletion, security features), syncing files (e.g., `.gitignore`, `dependabot.yml`, workflow files), and enforcing consistent rulesets and templates. This action addresses the challenge of manually managing repositories at scale, providing dynamic targeting, dry-run previews, and comprehensive logging for efficient and centralized repository management.

## What's Changed

## What's Changed
* refactor: normalize repo result model with subResults array by @joshjohanning and @Wuodan in https://github.com/joshjohanning/bulk-github-repo-settings-sync-action/pull/120

> **Note:** Warning-only repos (e.g., failed to enable a feature) no longer count in `changed-repositories`. They now correctly count as `unchanged-repositories`. Use the `warning-repositories` output to detect warnings.


**Full Changelog**: https://github.com/joshjohanning/bulk-github-repo-settings-sync-action/compare/v2.0.5...v2.0.6

