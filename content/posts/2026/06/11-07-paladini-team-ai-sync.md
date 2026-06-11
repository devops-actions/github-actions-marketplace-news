---
title: Team AI Sync
date: 2026-06-11 07:22:44 +00:00
tags:
  - paladini
  - GitHub Actions
draft: false
repo: https://github.com/paladini/team-ai-sync
marketplace: https://github.com/marketplace/actions/team-ai-sync
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/paladini/team-ai-sync** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/team-ai-sync) to find the latest changes.

## What's Changed

# Changelog

## v1.0.0

Initial stable release of `team-ai-sync`.

### Added

- JavaScript GitHub Action running on Node 24.
- `sync-config.json` contract for target repositories, files, directories,
  exclusions, sync mode, orphan deletion, and pull request options.
- File sync and recursive directory sync.
- `overwrite` and `skip` sync modes.
- Optional orphan deletion inside configured synced directories.
- Safe repository-relative path validation.
- Per-target processing with independent failure reporting.
- Pull request creation and update per target repository.
- Label and reviewer support for generated pull requests.
- `dry-run` mode for validation without branch pushes or pull requests.
- JSON outputs for pull request URLs, synced targets, failed targets, and
  change detection.
- Public demo repositories and run evidence.
- Versioned documentation under `docs/`.

