---
title: Translatize Sync
date: 2026-07-23 06:20:27 +00:00
tags:
  - Translatize
  - GitHub Actions
draft: false
repo: https://github.com/Translatize/sync-action
marketplace: https://github.com/marketplace/actions/translatize-sync
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Translatize Sync is a GitHub Action that automates the synchronization of source keys and translations between a local repository and a Translatize project. It simplifies the process by providing commands to push new source keys, pull completed translations, and gate pull requests based on missing or changed strings. The action uses a branch-bound API token for authentication and supports configuration via `translatize.config.json`.
---


Version updated for **https://github.com/Translatize/sync-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/translatize-sync) to find the latest changes.

## Action Summary

Translatize Sync is a GitHub Action that automates the synchronization of source keys and translations between a local repository and a Translatize project. It simplifies the process by providing commands to push new source keys, pull completed translations, and gate pull requests based on missing or changed strings. The action uses a branch-bound API token for authentication and supports configuration via `translatize.config.json`.

## What's Changed

First public release of Translatize Sync.

Sync your app's translations with [Translatize](https://translatize.com) from GitHub workflows:

- `push` – upload new and changed source keys to a project branch
- `pull` – download completed translations into your locale files
- `status` – compare local files with the branch; gate PRs with `--fail-on-missing` / `--fail-on-diff`

Authenticates with a branch-bound Translatize API token (repo secret). Works with any repo layout via `translatize.config.json`.

Docs: https://translatize.com/docs/github-action

