---
title: NotTodayThankyou
date: 2026-08-17 21:56:00 +00:00
tags:
  - NotTodayThankyou
  - GitHub Actions
draft: false
repo: https://github.com/NotTodayThankyou/NotTodayThankyou
marketplace: https://github.com/marketplace/actions/nottodaythankyou
version: v1
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action automatically closes pull requests that fail selected tests and checks, ensuring clean code contributions from contributors. It solves problems by automating the closing of problematic PRs, such as those without workflows, with too many recent commits, or without an associated issue. The action allows customization through configuration options like post-comment messages, require-associated-issue settings, and max-prs-per-day limits.
---


Version updated for **https://github.com/NotTodayThankyou/NotTodayThankyou** to version **v1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nottodaythankyou) to find the latest changes.

## Action Summary

This GitHub Action automatically closes pull requests that fail selected tests and checks, ensuring clean code contributions from contributors. It solves problems by automating the closing of problematic PRs, such as those without workflows, with too many recent commits, or without an associated issue. The action allows customization through configuration options like post-comment messages, require-associated-issue settings, and max-prs-per-day limits.

## What's Changed

- Add branding (fc29bf4)
- Don't run tests on push (for now) (6eb4449)
- Update README.md (91a911b)
- Update README.md (c0139c0)
- Update docs and metadata (aaf613b)
- Revert "Add check to tests that the workflow calling the Action did not error" (6222c7d)
- Add check to tests that the workflow calling the Action did not error (88a46c2)
- Test if PR author is a contributor (c0fbf7f)
- Don't treat closing a PR as a failed workflow run (23b5433)
- Handle 404s from listWorkflowRunsForRepo (b2aa7b9)
