---
title: Forbid Merge Commits
date: 2026-01-26 21:45:13 +00:00
tags:
  - motlin
  - GitHub Actions
draft: false
repo: https://github.com/motlin/forbid-merge-commits-action
marketplace: https://github.com/marketplace/actions/forbid-merge-commits
version: v1.0.7
dependentsNumber: "23"
---


Version updated for **https://github.com/motlin/forbid-merge-commits-action** to version **v1.0.7**.
- This action is used across all versions by **23** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/forbid-merge-commits) to find the latest changes.

## Action Summary

The "Forbid Merge Commits" GitHub Action enforces clean, semi-linear git history by failing pull requests that include merge commits. It prevents developers from using merge commits to update their branches, promoting the use of rebasing instead, which simplifies git log graphs and avoids confusing "foxtrot commits." This action automates the detection and rejection of merge commits in workflows, ensuring consistent and readable repository history.

## Release notes

## What's Changed
* Add justfile for local development commands. by @motlin in https://github.com/motlin/forbid-merge-commits-action/pull/36
* Support Gitea by using github.event.pull_request.head.sha by @tfaller in https://github.com/motlin/forbid-merge-commits-action/pull/37

## New Contributors
* @tfaller made their first contribution in https://github.com/motlin/forbid-merge-commits-action/pull/37

**Full Changelog**: https://github.com/motlin/forbid-merge-commits-action/compare/v1.0.6...v1.0.7
