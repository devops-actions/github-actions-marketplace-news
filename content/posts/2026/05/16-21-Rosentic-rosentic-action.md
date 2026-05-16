---
title: Rosentic - Cross-Branch Compatibility Check
date: 2026-05-16 21:26:34 +00:00
tags:
  - Rosentic
  - GitHub Actions
draft: false
repo: https://github.com/Rosentic/rosentic-action
marketplace: https://github.com/marketplace/actions/rosentic-cross-branch-compatibility-check
version: v1.1.0
dependentsNumber: "4"
actionType: Docker
---


Version updated for **https://github.com/Rosentic/rosentic-action** to version **v1.1.0**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rosentic-cross-branch-compatibility-check) to find the latest changes.

## Action Summary

Rosentic is a GitHub Action designed to detect semantic cross-branch conflicts before merging, which are often missed by traditional CI and Git conflict checks. It automates the identification of breaking changes such as mismatched function signatures, renamed or removed API endpoints, and schema alterations across 12 programming languages. By analyzing branches together using tree-sitter AST, it provides actionable insights with inline PR comments, helping teams prevent integration issues and maintain code integrity.

## What's Changed

Catches when changes across branches break each other before merge. 12 languages. AST-level detection. Runs in your CI pipeline.

## What's new since v1.0.0

- **12 languages** - added PHP support
- **Fewer false positives** - smarter matching reduces noise across OOP languages
- **Faster scans** - parsing optimizations across all languages
- **Agent attribution** - see which AI agent authored each branch. Set `ROSENTIC_AGENT` env var or let Rosentic auto-detect
- **Dashboard** - free tier tracks findings across PRs, shows trends, Merge Index
- **Better PR comments** - deduped, with finding counts and dashboard links

**1,250+ scans** across **10 organizations** and **21 repos**.

No workflow changes required. Users on `@v1` get everything automatically.

