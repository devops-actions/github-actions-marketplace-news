---
title: PR Ripple
date: 2026-07-06 22:56:56 +00:00
tags:
  - vivek5071
  - GitHub Actions
draft: false
repo: https://github.com/vivek5071/ripple
marketplace: https://github.com/marketplace/actions/pr-ripple
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/vivek5071/ripple** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pr-ripple) to find the latest changes.

## What's Changed

## What's new

- **`dry-run` input** — run the full analysis pipeline with zero side effects: the report is logged instead of posted, reviewers are logged instead of requested, AI review is skipped. Trial Ripple on any repo without spamming your team:
  ```yaml
  - uses: vivek5071/ripple@v1
    with:
      dry-run: true
  ```
- **Test suite** — 8 unit tests covering symbol extraction and owner resolution
- **CI** — typecheck + tests on every push and PR
