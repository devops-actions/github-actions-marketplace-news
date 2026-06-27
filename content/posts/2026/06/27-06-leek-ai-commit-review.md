---
title: AI Commit Review
date: 2026-06-27 06:35:15 +00:00
tags:
  - leek
  - GitHub Actions
draft: false
repo: https://github.com/leek/ai-commit-review
marketplace: https://github.com/marketplace/actions/ai-commit-review
version: v1.1.5
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/leek/ai-commit-review** to version **v1.1.5**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-commit-review) to find the latest changes.

## What's Changed

- Fail the action when a selected provider cannot produce a valid normalized review instead of treating it as a clean commit.\n- Detect CLI outputs that report they were unable to inspect the commit, including Codex sandbox failures.\n- Default issue creation to warning severity so actionable review feedback is published.\n- Default Codex CLI mode to danger-full-access for GitHub-hosted runners and verify the checkout remains unchanged afterward.\n- Add provider success/failure/skip outputs and a step summary.
