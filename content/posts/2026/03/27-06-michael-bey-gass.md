---
title: GASS - Github Activity Scoring System
date: 2026-03-27 06:15:41 +00:00
tags:
  - michael-bey
  - GitHub Actions
draft: false
repo: https://github.com/michael-bey/gass
marketplace: https://github.com/marketplace/actions/gass-github-activity-scoring-system
version: v1.2.2
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/michael-bey/gass** to version **v1.2.2**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gass-github-activity-scoring-system) to find the latest changes.

## Action Summary

The GitHub Activity Scoring System (GASS) is a GitHub Action that automates the evaluation of pull request code quality using AI and stores the results on-chain via the O2 Oracle. It addresses the need for objective, merit-based developer metrics by generating a quality score (0–100) for each PR and updating contributor records, enabling transparent and Sybil-resistant token distribution or standalone developer analytics. Key capabilities include AI-driven code analysis and integration with blockchain-based storage for verifiable scoring data.

## Release notes

## Bug fix

Subsequent PRs from the same contributor (updates, not creates) failed with `Failed to update property list rows` from the O2 Oracle API.

**Root cause:** When looking up an existing user, if found by `row.index` (the GitHub username), the `row_id` field was `undefined`. This made the PATCH request key the literal string `"undefined"`, which the O2 Oracle rejected.

**Fix:** Always use the GitHub username as the consistent row key for both create and update operations — which is what the row was originally created with.

## Full SHA

\`77d7ebe94b7d0571fc7d1e897a9d6db6b55f8ec6\`
