---
title: Claude AutoFix
date: 2026-04-20 22:09:07 +00:00
tags:
  - enriconunes
  - GitHub Actions
draft: false
repo: https://github.com/enriconunes/claude-autofix-action
marketplace: https://github.com/marketplace/actions/claude-autofix
version: v2.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/enriconunes/claude-autofix-action** to version **v2.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/claude-autofix) to find the latest changes.

## Action Summary

The **Claude AutoFix Action** is a GitHub Action that automates the identification and resolution of test failures in pull requests. It uses Claude AI to analyze failing tests, provide diagnostic comments, generate fixes, and create a new pull request with corrected code for review. This streamlines the debugging process and reduces manual effort for developers in projects using Python (pytest), TypeScript, or JavaScript (Vitest/Jest).

## What's Changed

This release introduces error logging and AI-powered developer insights.

  What's new:

  - Error log (enable-error-log) — every failing test is recorded as a structured entry in logs/error_history.jsonl on the main branch, capturing timestamp,
   author, branch, file, test name, error type, error message, and whether the fix was applied. No Claude tokens used.
  - Developer insights (enable-insights) — after 3 or more recorded failures, Claude analyses the author's error history and posts a comment on the PR
  pointing out recurring patterns and giving concrete, actionable tips. Uses Claude Haiku to keep costs low.

  Both features are opt-in and off by default. Existing setups require no changes to upgrade.

