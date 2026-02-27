---
title: Claude BugBot
date: 2026-02-27 21:26:09 +00:00
tags:
  - rekpero
  - GitHub Actions
draft: false
repo: https://github.com/rekpero/claude-bugbot-github-action
marketplace: https://github.com/marketplace/actions/claude-bugbot
version: v1.0.3
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/rekpero/claude-bugbot-github-action** to version **v1.0.3**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/claude-bugbot) to find the latest changes.

## Action Summary

The Claude BugBot GitHub Action is a free tool that utilizes the Claude Code language model to automatically analyze pull request diffs for bugs, logic errors, and vulnerabilities, posting inline review comments directly on affected lines. It provides a cost-effective alternative to Cursor BugBot, offering fast, middleware-free analysis without the need for IDE dependency, making it ideal for users with existing Claude Pro or Max subscriptions. Key capabilities include precise bug detection, support for large diffs, and fallback summary comments when inline mapping isn't possible.

## Release notes

## Changed

- **Bugs with unmappable lines are now always posted as inline comments** — Previously, any bug whose exact line was not present in the diff was appended as plain text to the review body under "Additional findings". This made them invisible in the Files Changed tab and impossible for BugBot to auto-resolve later (no review thread was created). Now all bugs are always posted as inline comments:
  - If the bug's exact line is in the diff → normal inline comment at that line (unchanged).
  - If the bug's file is in the diff but the exact line is not → comment anchored to the **first valid line of that file**, with a note: *"Could not locate exact line in the diff. The bug is at `file:line`."*
  - If the bug's file is not in the diff at all → comment anchored to the **first valid line of the first file in the diff**, with a note: *"This file is not part of this PR's diff. The bug is at `file:line`."*
  - In all cases the hidden `<!-- bugbot-id:file:line -->` tag uses the **real** bug location, so deduplication and auto-resolution work correctly on subsequent commits.
  - The "Additional findings" section in the review body has been removed entirely.

- **Resolution prompt hardened for anchored threads** — The Claude prompt now explicitly states that `bugId` always reflects the real bug location regardless of where the review thread is anchored. This prevents Claude from evaluating resolution based on the anchor file instead of the actual file where the bug lives.

## Fixed

- **`Infinity` line number crash when first diff file is deletion-only** — The last-resort anchor (used when a bug's file is absent from the diff) was computed with `Math.min(...validLines.get(firstFile))`. If the first file in the diff had only deleted lines, its valid-lines Set was empty, causing `Math.min()` to return `Infinity`. The GitHub API rejected this with an error. Fixed by iterating `validLines` to find the first file that has at least one valid commentable line before computing the anchor.
