---
title: label-driven-review-and-approval-check
date: 2026-04-07 21:55:29 +00:00
tags:
  - p0fi
  - GitHub Actions
draft: false
repo: https://github.com/p0fi/label-driven-review-and-approval-check
marketplace: https://github.com/marketplace/actions/label-driven-review-and-approval-check
version: v1.0.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/p0fi/label-driven-review-and-approval-check** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/label-driven-review-and-approval-check) to find the latest changes.

## Action Summary

This GitHub Action automates the process of requesting reviews and enforcing approval thresholds for pull requests based on assigned labels that represent ownership areas (e.g., `frontend`, `backend`). It ensures that the appropriate reviewers are notified, evaluates whether the required approvals are met, and prevents merging until the thresholds are satisfied. Key features include automatic review requests, merge gating, dynamic configuration via code, and the ability to use a single status check for streamlined approval management.

## What's Changed

- docs: remove checks: write permission, update check run references (83930c7)
- refactor: remove Checks API, use job summary instead (58cc1c9)
- docs: update README to use repository rulesets instead of branch protection (97bab6f)
- Further shorten Action Description in action.yml (a31fa79)
- Shorten Action Description in action.yml (39c6016)
- docs: rewrite README for usage-only, add CONTRIBUTING.md and AGENTS.md (37e1e76)
- chore: update action metadata and config for approver-list model (aac0c70)
- feat: replace GitHub Teams with static approver lists (aeba15b)
- fix: update biome.json for Biome 1.8+ compatibility (422bfc4)
- Add Dist (065a43d)
