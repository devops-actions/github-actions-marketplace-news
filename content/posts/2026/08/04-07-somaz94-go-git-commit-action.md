---
title: Go Git Commit Action
date: 2026-08-04 07:12:25 +00:00
tags:
  - somaz94
  - GitHub Actions
draft: false
repo: https://github.com/somaz94/go-git-commit-action
marketplace: https://github.com/marketplace/actions/go-git-commit-action
version: v1.8.1
dependentsNumber: "18"
actionType: Docker
actionSummary: |
  The Go Git Commit Action automates git commit, push, tag, and pull request operations, written in Go for better performance and reliability. It solves common automation needs by providing a simple interface to manage commits, tags, and PRs from GitHub Actions workflows.
---


Version updated for **https://github.com/somaz94/go-git-commit-action** to version **v1.8.1**.

- This action is used across all versions by **18** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/go-git-commit-action) to find the latest changes.

## Action Summary

The Go Git Commit Action automates git commit, push, tag, and pull request operations, written in Go for better performance and reliability. It solves common automation needs by providing a simple interface to manage commits, tags, and PRs from GitHub Actions workflows.

## What's Changed


### Bug Fixes
- detect a missing remote branch from the ls-remote listing, not its exit code by @somaz94
- fail the action when a label, reviewer, assignee or close call is rejected by @somaz94

### Refactoring
- route git execution through a Runner seam to make the git package testable by @somaz94

### Testing
- add an injectable API base URL so the PR paths run against httptest by @somaz94

**Full Changelog**: https://github.com/somaz94/go-git-commit-action/compare/v1.8.0...v1.8.1

