---
title: Agent-friendly score diff
date: 2026-05-03 06:39:59 +00:00
tags:
  - hsnice16
  - GitHub Actions
draft: false
repo: https://github.com/hsnice16/agent-friendly-action
marketplace: https://github.com/marketplace/actions/agent-friendly-score-diff
version: v0.1.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/hsnice16/agent-friendly-action** to version **v0.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-friendly-score-diff) to find the latest changes.

## Action Summary

The **agent-friendly-action** is a GitHub Action designed to automate the evaluation of pull requests by calculating and posting a delta in the "Agent Friendly Code" score as a comment on the PR. It analyzes code changes by comparing the base and head branches, scoring both, and providing a breakdown of the impact of the changes on code quality metrics. This action eliminates the need for external servers, runs entirely within your CI environment, and helps developers track and improve their code quality directly within the PR workflow.

## What's Changed

## [0.1.1] - 2026-05-01

### Changed

- `size` signal now respects the repo's `.gitignore` in addition to the existing baseline (`node_modules`, `.git`, `vendor`, `target`, `dist`, `build`, `.next`). Repos with operational dirs that are gitignored (clone workspaces, build caches, generated data) no longer have those files counted toward the "manageable size" bucket — the score now matches what the dashboard sees on a fresh shallow clone. New runtime dep: `ignore@7.0.5`.
