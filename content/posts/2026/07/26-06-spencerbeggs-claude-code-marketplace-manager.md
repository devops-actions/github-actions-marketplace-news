---
title: Claude Code Marketplace Manager
date: 2026-07-26 06:35:27 +00:00
tags:
  - spencerbeggs
  - GitHub Actions
draft: false
repo: https://github.com/spencerbeggs/claude-code-marketplace-manager
marketplace: https://github.com/marketplace/actions/claude-code-marketplace-manager
version: 1.0.1
dependentsNumber: "3"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the process of updating and validating plugin entries in a Claude Code marketplace manifest. It simplifies the manual task of editing JSON files by applying only the specified changes, ensuring valid JSON format, and committing changes with server-side signing to meet branch protection rules. The action supports both manual input through the workflow_dispatch event and receiving updates from another repository via repository_dispatch events, using GitHub Apps for authentication.
---


Version updated for **https://github.com/spencerbeggs/claude-code-marketplace-manager** to version **1.0.1**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/claude-code-marketplace-manager) to find the latest changes.

## Action Summary

This GitHub Action automates the process of updating and validating plugin entries in a Claude Code marketplace manifest. It simplifies the manual task of editing JSON files by applying only the specified changes, ensuring valid JSON format, and committing changes with server-side signing to meet branch protection rules. The action supports both manual input through the workflow_dispatch event and receiving updates from another repository via repository_dispatch events, using GitHub Apps for authentication.

## What's Changed

### Bug Fixes

* `pr` mode now resets the head branch onto the base branch before committing, so re-running against the same `branch` updates the existing pull request in place instead of stacking another commit onto an increasingly stale base. Because `branch` defaults to a fixed name reused run over run, the old behavior let long-lived branches drift until the pull request reported a merge conflict.
* Each `pr`-mode run now leaves a single commit that diffs cleanly against the current base. Treat that branch as owned by the action: commits pushed to it by anything else are discarded on the next run.

### Refactoring

* `ManifestCommitter.land` now takes a validated, non-no-op manifest change rather than raw text, making "commit unvalidated text" and "commit byte-identical text" compile errors instead of ordering conventions. `EditResult` became a `NoopEdit | ChangedEdit` union and `ManifestValidator.validateEdit` mints the branded value `land` accepts. Internal only — no input or output contract changed. [#6][#6]

### Patch Changes

Thanks to [@spencerbeggs](https://github.com/spencerbeggs) for their contributions!

[#6]: https://github.com/spencerbeggs/claude-code-marketplace-manager/pull/6

> This is a version-only release. No packages were published to a registry.
