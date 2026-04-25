---
title: Greencheck CI Fixer
date: 2026-04-25 05:56:19 +00:00
tags:
  - braedonsaunders
  - GitHub Actions
draft: false
repo: https://github.com/braedonsaunders/greencheck
marketplace: https://github.com/marketplace/actions/greencheck-ci-fixer
version: v0.1.5
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/braedonsaunders/greencheck** to version **v0.1.5**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/greencheck-ci-fixer) to find the latest changes.

## Action Summary

**Summary:**  
The `greencheck` GitHub Action automates the remediation of failed CI runs by leveraging AI agents like Claude Code or Codex to analyze logs, identify issues, and apply fixes directly to the repository. It eliminates the need for manual intervention in resolving common CI errors, such as syntax issues or test failures, by providing features like log parsing, regression detection with automatic reverts, and cost-controlled execution. This tool streamlines CI workflows, reduces context-switching, and ensures safe, efficient error correction.

## What's Changed

## Fixed
- Ensured greencheck fix pushes use the configured `trigger-token` instead of checkout's persisted credentials.
- Stopped the CI wait early when no follow-up workflow run exists and the dispatch fallback cannot start.

## Changed
- Documented the recommended `trigger-token: ${{ github.token }}` setup with `actions: write`, `workflow_dispatch`, and `persist-credentials: false`.
- Updated README, examples, action metadata, and the setup skill to match the verified no-PAT configuration.

## Verified
- Published `v0.1.5` and moved the `v0` major tag to the same commit.
- Verified the Marketplace listing shows `v0.1.5` as Latest with the updated quickstart.
- Verified in `braedonsaunders/homerun`: greencheck pushed a fix, dispatched follow-up CI via `workflow_dispatch`, and CI passed.

**Full Changelog**: https://github.com/braedonsaunders/greencheck/compare/v0.1.3...v0.1.5
