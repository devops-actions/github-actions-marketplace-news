---
title: Review Router Audit
date: 2026-08-03 06:11:05 +00:00
tags:
  - tenpace-app
  - GitHub Actions
draft: false
repo: https://github.com/tenpace-app/review-router-audit
marketplace: https://github.com/marketplace/actions/review-router-audit
version: v1.1.3
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  Review Router Audit checks GitHub repositories to identify stale open pull requests, unreviewed pull requests, and other review-related issues. It reports these metrics in a Markdown summary and JSON format, providing insights into the health of the review process. The action uses the repository-scoped `GITHUB_TOKEN` to access necessary data and optionally creates a human-readable link for setting up Review Router.
---


Version updated for **https://github.com/tenpace-app/review-router-audit** to version **v1.1.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/review-router-audit) to find the latest changes.

## Action Summary

Review Router Audit checks GitHub repositories to identify stale open pull requests, unreviewed pull requests, and other review-related issues. It reports these metrics in a Markdown summary and JSON format, providing insights into the health of the review process. The action uses the repository-scoped `GITHUB_TOKEN` to access necessary data and optionally creates a human-readable link for setting up Review Router.

## What's Changed

Moves the audit Action to the Tenpace GitHub organization. New workflows should use `tenpace-app/review-router-audit@v1`; GitHub redirects the previous repository URL.
