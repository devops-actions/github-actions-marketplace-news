---
title: Rams Design Review
date: 2026-08-01 14:09:00 +00:00
tags:
  - rams-design
  - GitHub Actions
draft: false
repo: https://github.com/rams-design/rams-action
marketplace: https://github.com/marketplace/actions/rams-design-review
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  Rams Design Review is a GitHub Action that automatically scores changes in pull requests, emits structured findings, and automates the merging process based on design defects. It judges PRs by scoring UI changes (0–100), emitting issues and patches for critical designs, and gating merges to address critical defects only. The action can be scheduled to run at specific times or as part of a continuous integration/continuous deployment pipeline.
---


Version updated for **https://github.com/rams-design/rams-action** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rams-design-review) to find the latest changes.

## Action Summary

Rams Design Review is a GitHub Action that automatically scores changes in pull requests, emits structured findings, and automates the merging process based on design defects. It judges PRs by scoring UI changes (0–100), emitting issues and patches for critical designs, and gating merges to address critical defects only. The action can be scheduled to run at specific times or as part of a continuous integration/continuous deployment pipeline.

## What's Changed

Score UI changes 0–100 on every PR or scheduled sweep. Gate on criticals or a score floor. Findings land as structured JSON + git-applyable patches for your own agent step. We judge; your tools repair.
