---
title: Claude BugBot
date: 2026-03-06 05:56:40 +00:00
tags:
  - rekpero
  - GitHub Actions
draft: false
repo: https://github.com/rekpero/claude-bugbot-github-action
marketplace: https://github.com/marketplace/actions/claude-bugbot
version: v1.0.6
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/rekpero/claude-bugbot-github-action** to version **v1.0.6**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/claude-bugbot) to find the latest changes.

## Action Summary

The Claude BugBot GitHub Action is a tool that automates the process of analyzing pull request (PR) changes to identify bugs, logic errors, security vulnerabilities, and other issues, and posts detailed inline review comments directly on the affected lines. It leverages the Claude Code model for fast and accurate analysis without the need for additional subscriptions or middleware, making it a cost-effective alternative to Cursor BugBot for users already subscribed to Claude Pro or Max. This action streamlines code review workflows, handles large diffs efficiently, and focuses solely on critical issues, enhancing development efficiency and code quality.

## Release notes

### Fixed

- **PRs with more than 300 changed files no longer crash BugBot** — `gh pr diff` calls the GitHub diff endpoint which returns HTTP 406 (`too_large`) when a PR touches more than 300 files. Previously this caused an unhandled error and BugBot would exit without analysis. Now `fetchDiff` catches the 406/`too_large` error and automatically falls back to `fetchDiffViaFilesAPI`, which uses the paginated `GET /repos/{owner}/{repo}/pulls/{number}/files` API (supporting up to 3 000 files). Each file's `patch` field is reassembled into standard unified diff format so all downstream parsing (`parseDiff`, inline comment placement, etc.) continues to work without modification. Binary files and individual files whose patch GitHub cannot produce are silently skipped, consistent with the existing diff-truncation behaviour.
