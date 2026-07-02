---
title: Synaptic PR Review
date: 2026-07-02 06:44:45 +00:00
tags:
  - minhphu102003
  - GitHub Actions
draft: false
repo: https://github.com/minhphu102003/ai-pr-review-action
marketplace: https://github.com/marketplace/actions/synaptic-pr-review
version: v0.1.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/minhphu102003/ai-pr-review-action** to version **v0.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/synaptic-pr-review) to find the latest changes.

## What's Changed

## v0.1.1

- Strip model preamble: remove leading text before `## PR Review` heading in both OpenCode and direct engine paths
- OpenCode engine: `post_inline.py` now always updates summary comment when body changes (preamble or Key Issues stripped)
- Direct engine: `sanitize_review()` strips preamble before posting
