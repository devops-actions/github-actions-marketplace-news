---
title: Claude Review Action
date: 2026-04-16 14:13:42 +00:00
tags:
  - layered-ai-public
  - GitHub Actions
draft: false
repo: https://github.com/layered-ai-public/claude-review-action
marketplace: https://github.com/marketplace/actions/claude-review-action
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/layered-ai-public/claude-review-action** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/claude-review-action) to find the latest changes.

## Action Summary

Claude Review Action is a GitHub Action that performs AI-powered code reviews on pull request diffs to identify bugs, security vulnerabilities, and risky changes, focusing only on issues worth addressing. It automates the review process by leveraging the Anthropic API to provide cost-effective, severity-based feedback (CRITICAL, HIGH, MEDIUM) without flagging minor style or design preferences. Additionally, it supports local reviews with auto-fix capabilities and allows customizable prompts for project-specific guidance.

## What's Changed

### Fixed

- Fix `.github/claude-review` changed to `.github/claude-review-action` across README, prompt, and commands
- Fix install script cleaner - now only removes its own files
