---
title: Zetestic
date: 2026-08-04 22:26:30 +00:00
tags:
  - Rzhan9
  - GitHub Actions
draft: false
repo: https://github.com/Rzhan9/prtestbot
marketplace: https://github.com/marketplace/actions/zetestic
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  A GitHub Action and Python tool that automatically reviews Pull Request diffs to determine if changes have adequate test coverage by analyzing code diff, locating related existing tests, identifying changed/added behavior, determining coverage status, and suggesting concrete tests. It posts a formatted report as a PR comment and updates its previous comment on subsequent commits.
---


Version updated for **https://github.com/Rzhan9/prtestbot** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zetestic) to find the latest changes.

## Action Summary

A GitHub Action and Python tool that automatically reviews Pull Request diffs to determine if changes have adequate test coverage by analyzing code diff, locating related existing tests, identifying changed/added behavior, determining coverage status, and suggesting concrete tests. It posts a formatted report as a PR comment and updates its previous comment on subsequent commits.

## What's Changed

Will now keep track of a score based on how many test obligations are created and how many are actually adequately covered. If 10 obligations are created and 8 are fulfilled, the score will be 8/10. The bot will now also fail if the final score is less than 70%.
