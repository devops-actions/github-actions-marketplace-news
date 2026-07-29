---
title: Maha Claim Preflight
date: 2026-07-29 23:05:41 +00:00
tags:
  - Maha-Strategies
  - GitHub Actions
draft: false
repo: https://github.com/Maha-Strategies/maha-claim-preflight-action
marketplace: https://github.com/marketplace/actions/maha-claim-preflight
version: v1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the preflight check of Maha Provenance Standard claims in Markdown documents during pull request reviews. It adds a claim count table and backlog to the GitHub job summary and writes a derived source-free JSON record into the runner workspace, ensuring that only sanitized input is processed. The action does not read confidential or sensitive material and is designed for small review inputs such as release notes, documentation, or pull-request claims.
---


Version updated for **https://github.com/Maha-Strategies/maha-claim-preflight-action** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/maha-claim-preflight) to find the latest changes.

## Action Summary

This GitHub Action automates the preflight check of Maha Provenance Standard claims in Markdown documents during pull request reviews. It adds a claim count table and backlog to the GitHub job summary and writes a derived source-free JSON record into the runner workspace, ensuring that only sanitized input is processed. The action does not read confidential or sensitive material and is designed for small review inputs such as release notes, documentation, or pull-request claims.

## What's Changed

First public release of the privacy-conscious MPS/0.1 claim preflight Action.\n\n- Default no-secret mode for sanitized Markdown and text drafts\n- Pull-request claim map and tagged review backlog\n- Runner-local, source-free JSON result\n- Aggregate github_action attribution only
