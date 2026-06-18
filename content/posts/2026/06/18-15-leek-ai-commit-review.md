---
title: AI Commit Review
date: 2026-06-18 15:37:32 +00:00
tags:
  - leek
  - GitHub Actions
draft: false
repo: https://github.com/leek/ai-commit-review
marketplace: https://github.com/marketplace/actions/ai-commit-review
version: v1.0.5
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/leek/ai-commit-review** to version **v1.0.5**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-commit-review) to find the latest changes.

## What's Changed

**Gemini provider now defaults to the GA `gemini-3.5-flash`** (was `gemini-3.1-pro-preview`). Preview model ids can be retired without notice; `gemini-3.5-flash` is generally available and cheaper/faster for per-commit review. The action calls the Gemini REST API directly, so it's unaffected by the Gemini CLI retirement.

Also rolls up fixes tagged since v1.0.2 but not previously released:
- Drop self-retracted findings before filing (v1.0.4)
- Set git identity before fix-PR commit (v1.0.3)

The `v1` major tag now points at this release.
