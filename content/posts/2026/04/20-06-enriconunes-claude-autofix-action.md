---
title: Claude AutoFix
date: 2026-04-20 06:27:02 +00:00
tags:
  - enriconunes
  - GitHub Actions
draft: false
repo: https://github.com/enriconunes/claude-autofix-action
marketplace: https://github.com/marketplace/actions/claude-autofix
version: v2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/enriconunes/claude-autofix-action** to version **v2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/claude-autofix) to find the latest changes.

## Action Summary

Claude AutoFix Action is a GitHub Action that automates the process of diagnosing and fixing failing tests in pull requests. It identifies test failures, provides a detailed diagnosis via a comment, generates a code fix using Claude AI, and creates a new pull request with the corrected code for review and merging. This action streamlines debugging and issue resolution for Python (pytest), TypeScript, and JavaScript projects, reducing manual effort and improving development efficiency.

## What's Changed

This release adds multi-language support, expanding the action beyond Python/pytest.

  What's new:

  - Vitest and Jest support — the action now works with TypeScript and JavaScript projects using Vitest or Jest, in addition to Python/pytest
  - New test-framework and language inputs — configure which framework and language your project uses (both default to pytest / python, so existing setups require no changes)
  - Automatic test generation — new optional workflow that uses Claude to generate test files for source files that don't have tests yet; can be triggered manually or automatically on PRs (off by default)
  - Per-step model selection — analysis comments now use Claude Haiku (faster, cheaper) while code fixes and test generation use Claude Sonnet 4.5 (more accurate)

  Backward compatible — projects using @v1 with Python/pytest work without any changes. To upgrade, point to @v2 and optionally add the new inputs.
