---
title: Claude BugBot
date: 2026-03-15 05:56:48 +00:00
tags:
  - rekpero
  - GitHub Actions
draft: false
repo: https://github.com/rekpero/claude-bugbot-github-action
marketplace: https://github.com/marketplace/actions/claude-bugbot
version: v1.0.8
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/rekpero/claude-bugbot-github-action** to version **v1.0.8**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/claude-bugbot) to find the latest changes.

## Action Summary

The Claude BugBot GitHub Action is an automated tool that uses the Claude Code CLI to analyze pull request diffs for bugs, logic errors, and vulnerabilities, posting inline review comments directly on the affected lines. It eliminates the need for a Cursor subscription, offering a free alternative for users with a Claude Pro or Max plan, and operates without middleware, ensuring fast and efficient bug analysis. This action automates the code review process by identifying real issues while ignoring non-critical concerns like formatting or style.

## Release notes

## Fixed

- **Large diffs are no longer truncated to 200KB** — The 200KB truncation limit was added when the diff was passed inline in the prompt. Since the diff is now written to a temp file and Claude reads it via file I/O, the context-window concern no longer applies. Removed `MAX_DIFF_SIZE` and the truncation block so Claude always analyzes the full diff.

