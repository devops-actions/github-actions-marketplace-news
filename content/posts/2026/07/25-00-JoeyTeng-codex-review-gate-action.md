---
title: Codex Review Gate
date: 2026-07-25 00:31:29 +00:00
tags:
  - JoeyTeng
  - GitHub Actions
draft: false
repo: https://github.com/JoeyTeng/codex-review-gate-action
marketplace: https://github.com/marketplace/actions/codex-review-gate
version: v1.3.2
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  The Codex Review Gate GitHub Action is a reusable tool designed for repositories that want a required status check to stay pending or failing until Codex review output for the current PR head is clean. It automates the process of requesting and evaluating Codex AI-generated reviews, ensuring reliability and control over the review state machine. The action handles different states of Codex findings, including outdated but unresolved threads, and provides clear disclosure about any generated comments from Codex.
---


Version updated for **https://github.com/JoeyTeng/codex-review-gate-action** to version **v1.3.2**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/codex-review-gate) to find the latest changes.

## Action Summary

The Codex Review Gate GitHub Action is a reusable tool designed for repositories that want a required status check to stay pending or failing until Codex review output for the current PR head is clean. It automates the process of requesting and evaluating Codex AI-generated reviews, ensuring reliability and control over the review state machine. The action handles different states of Codex findings, including outdated but unresolved threads, and provides clear disclosure about any generated comments from Codex.

## What's Changed

## Fixed

- Accept every exact official clean-result tagline observed during the `@v1` consumer rollout.
- Preserve the closed clean grammar: arbitrary prose, punctuation near misses, and finding-formatted content still fail closed.
- Exercise the live `Another round soon, please!` form through the full state machine, including reasserting success over stale status history without requesting another review.

## Release identity

- Action commit: `11d400902175edd773340dc9ec00f8dd421feff7`
- Canonical source PR: `JoeyTeng/codex-review-gate#21`
- Canonical source merge: `f8a6b84eb39459dd5aa6c7a20487f444ae387df3`

The signed `v1.3.2`, `v1.3`, and `v1` tags all peel to the same tested action commit.

