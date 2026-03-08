---
title: Sync CLAUDE.md
date: 2026-03-08 21:22:32 +00:00
tags:
  - EtK2000
  - GitHub Actions
draft: false
repo: https://github.com/EtK2000/CLAUDE.md-sync
marketplace: https://github.com/marketplace/actions/sync-claude-md
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/EtK2000/CLAUDE.md-sync** to version **v1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sync-claude-md) to find the latest changes.

## Action Summary

The `CLAUDE.md-sync` GitHub Action automates the process of keeping a specific file, `CLAUDE.md`, synchronized across multiple repositories. It compares the file in a designated source repository with its counterparts in consumer repositories and automatically creates or updates pull requests to reflect any changes. This action eliminates the need for manual updates, ensuring consistency and reducing maintenance overhead for managing shared files across projects.

## Release notes

  Initial release of claude-md-sync.

  Syncs a canonical CLAUDE.md from a source repo to consumer repos via PR.

  - Configurable source/target repo, branch, and file path
  - No-ops when files are already in sync
  - Opens a new PR when drift is detected
  - Updates existing PR if one is already open
