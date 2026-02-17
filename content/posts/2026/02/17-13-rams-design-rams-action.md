---
title: Rams Design Review
date: 2026-02-17 13:24:08 +00:00
tags:
  - rams-design
  - GitHub Actions
draft: false
repo: https://github.com/rams-design/rams-action
marketplace: https://github.com/marketplace/actions/rams-design-review
version: v0.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/rams-design/rams-action** to version **v0.0.1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rams-design-review) to find the latest changes.

## Action Summary

Rams GitHub Action automates design reviews on pull requests, focusing on accessibility, visual consistency, and code quality. It conducts a full audit on the initial PR to establish a baseline and reviews only changed files in subsequent PRs, providing a design score and highlighting issues. This action streamlines design quality checks, identifies critical accessibility problems, and promotes consistent, maintainable code.

## Release notes

  **Features:**
  - Accessibility checks
  - Visual consistency analysis
  - AI slop detection
  - Automatic PR comments
  - Configurable failure thresholds

  **Usage:**
  ```yaml
  - uses: rams-design/rams-action@v0.0.1
    with:
      api_key: ${{ secrets.RAMS_API_KEY }}

  Get your API key at https://rams.ai
  ```
