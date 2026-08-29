---
title: GitHub backport
date: 2026-08-29 02:02:01 +00:00
tags:
  - nicklegan
  - GitHub Actions
draft: false
repo: https://github.com/nicklegan/backport
marketplace: https://github.com/marketplace/actions/github-backport
version: v1.0.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The GitHub Action cherry-picks pull requests onto long-running backport branches and gates the original pull request and its backports with bidirectional checks. It allows users to specify allowed backport branches and gate check names, and provides options for cherry-picking behavior and label management. The action is useful for maintaining multiple stable release branches while ensuring that changes are backported correctly.
---


Version updated for **https://github.com/nicklegan/backport** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-backport) to find the latest changes.

## Action Summary

The GitHub Action cherry-picks pull requests onto long-running backport branches and gates the original pull request and its backports with bidirectional checks. It allows users to specify allowed backport branches and gate check names, and provides options for cherry-picking behavior and label management. The action is useful for maintaining multiple stable release branches while ensuring that changes are backported correctly.

## What's Changed

Host-aware support for github.com, ghe.com (data residency), and GitHub Enterprise Server. Host URLs are sourced from the runner env vars (`GITHUB_API_URL`, `GITHUB_GRAPHQL_URL`, `GITHUB_SERVER_URL`) instead of hardcoding github.com.
