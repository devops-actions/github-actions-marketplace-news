---
title: Claude AutoFix
date: 2026-03-08 21:22:36 +00:00
tags:
  - enriconunes
  - GitHub Actions
draft: false
repo: https://github.com/enriconunes/claude-autofix-action
marketplace: https://github.com/marketplace/actions/claude-autofix
version: v1.4
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/enriconunes/claude-autofix-action** to version **v1.4**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/claude-autofix) to find the latest changes.

## Action Summary

The Claude AutoFix GitHub Action automates the process of identifying and resolving failing Python tests in pull requests. It diagnoses test failures, posts a detailed comment explaining the issue, and uses Claude AI to generate a code fix, which is then submitted as a new pull request for review. This action simplifies troubleshooting and accelerates the bug-fixing workflow by reducing manual intervention in identifying and correcting errors.

## Release notes

Reduced the analysis comment posted on PRs from a verbose multi-section
report to a compact 4-line summary per failing test.

Before: long output with Root Cause Analysis, Recommended Fix, unified diff,
Post-Fix Expectations, and PR guidance — often redundant and repetitive.

After:
  **File:** `functions/dividir.py` | **Line:** 2
  **Error:** expected `5`, got `8`
  **Cause:** The function uses subtraction (-) instead of division (/).
  **Fix:** change `return a - b` to `return a / b`

This also reduces token usage per analysis call.

