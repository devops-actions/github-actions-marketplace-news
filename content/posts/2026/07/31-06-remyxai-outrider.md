---
title: Remyx Outrider
date: 2026-07-31 06:42:48 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.7.41
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  This GitHub Action, Outrider, automates the validation and comparison of new methods against existing codebases. It schedules or dispatches runs on demand to wire arXiv methods into real call sites, measure change against tracked metrics, and supports multiple backends like Anthropic Opus and z.ai's GLM-5.2. The action provides draft PRs with self-reviews, issues for preflight validation, branch-only mode, ensures no duplicate work, and generates a selection narrative in step summaries.
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.7.41**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## Action Summary

This GitHub Action, Outrider, automates the validation and comparison of new methods against existing codebases. It schedules or dispatches runs on demand to wire arXiv methods into real call sites, measure change against tracked metrics, and supports multiple backends like Anthropic Opus and z.ai's GLM-5.2. The action provides draft PRs with self-reviews, issues for preflight validation, branch-only mode, ensures no duplicate work, and generates a selection narrative in step summaries.

## What's Changed

- Cut the numeric `(Remyx relevance 0.85)` decoration from PR/Issue Confidence lines and the `relevance_score:` spec-frontmatter field. Categorical tier stays.
- Remove the *"Want eval-on-every-PR? Outrider Validate (coming soon, paid tier)"* pitch from the PR footer. Sales copy on unsolicited bot PRs is a maintainer-block magnet.
- Floating `v1` pointer moved to this release.

See #109.
