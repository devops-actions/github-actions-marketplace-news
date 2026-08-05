---
title: Claude Code Marketplace Manager
date: 2026-08-05 06:11:32 +00:00
tags:
  - spencerbeggs
  - GitHub Actions
draft: false
repo: https://github.com/spencerbeggs/claude-code-marketplace-manager
marketplace: https://github.com/marketplace/actions/claude-code-marketplace-manager
version: 1.0.3
dependentsNumber: "3"
actionType: Node
nodeVersion: 24
actionSummary: |
  **Purpose and Functionality**: This GitHub Action automates the process of modifying a Claude Code marketplace manifest to re-pin plugin entries. It ensures that only explicit changes are made, preserves formatting, and signs commits through a GitHub App.
  
  **Problems Solved or Tasks Automated**: The action simplifies the task of repinning plugins by handling JSON parsing and validation, ensuring that updates are precise and compliant with branch protection rules.
  
  **Key Capabilities**: - Partially merges plugin entries in `.claude-plugin/marketplace.json`.
  - Validates changes before committing.
  - Uses a GitHub App for server-side verification and signing.
---


Version updated for **https://github.com/spencerbeggs/claude-code-marketplace-manager** to version **1.0.3**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/claude-code-marketplace-manager) to find the latest changes.

## Action Summary

**Purpose and Functionality**: This GitHub Action automates the process of modifying a Claude Code marketplace manifest to re-pin plugin entries. It ensures that only explicit changes are made, preserves formatting, and signs commits through a GitHub App.

**Problems Solved or Tasks Automated**: The action simplifies the task of repinning plugins by handling JSON parsing and validation, ensuring that updates are precise and compliant with branch protection rules.

**Key Capabilities**: - Partially merges plugin entries in `.claude-plugin/marketplace.json`.
- Validates changes before committing.
- Uses a GitHub App for server-side verification and signing.

## What's Changed

### Bug Fixes

* `land` now refuses `pr` mode when `base` and `branch` are the same. Previously nothing stopped the two from colliding, and the single `GitBranch.upsert` would move the *base* branch itself onto the new commit — landing an unreviewed change directly on it, with the pull request call only failing afterward on a head equal to its base. The guard runs before the commit is built, so `land`'s error channel now also includes `InvalidInputError`. `commit` mode is unaffected — it never reads `branch`. [#20][#20]

- Fixed a `pr` mode race where the action's own pull request could be auto-closed by GitHub. The landing sequence now builds the finished commit first and moves the head branch straight onto it with a single update, so the branch never passes through a state where it's identical to `base` (which GitHub reads as an empty diff and auto-closes). The existing force-reset guarantee is unchanged: every `pr`-mode run still discards the previous run's commits and re-roots on `base`'s current tip.
- Auto-merge is now requested as a separate step after the pull request is opened or updated, so a repository that rejects the requested merge method no longer makes PR creation itself look like it failed. A failure to enable auto-merge still fails the run.

### Refactoring

* Default-branch resolution now goes through the library's repository service instead of a hand-written API type cast.
* Consolidated four internal error types into a single structured error with a `kind` field, and collapsed duplicate layer wiring between the `pre` and `post` phases. [#20][#20]

### Dependencies

* | Dependency      | Type       | Action  | From    | To      |                                                                          |
  | --------------- | ---------- | ------- | ------- | ------- | ------------------------------------------------------------------------ |
  | @effected/jsonc | dependency | updated | \~0.5.1 | \~0.5.2 | [#17][#17] Thanks [@spencerbeggs](https://github.com/apps/spencerbeggs)! |

- | Dependency                       | Type       | Action  | From   | To      |                                                                     |
  | -------------------------------- | ---------- | ------- | ------ | ------- | ------------------------------------------------------------------- |
  | @savvy-web/github-action-effects | dependency | removed | ^3.1.0 | —       |                                                                     |
  | @effected/github                 | dependency | added   | —      | \~0.2.2 |                                                                     |
  | @effected/github-actions         | dependency | added   | —      | \~0.5.0 | [#20][#20] Thanks [@spencerbeggs](https://github.com/spencerbeggs)! |

### Patch Changes

Thanks to [@spencerbeggs](https://github.com/spencerbeggs) for their contributions!

[#17]: https://github.com/spencerbeggs/claude-code-marketplace-manager/pull/17

[#20]: https://github.com/spencerbeggs/claude-code-marketplace-manager/pull/20

> This is a version-only release. No packages were published to a registry.
