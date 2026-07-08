---
title: SherlockQA-AI
date: 2026-07-08 22:22:33 +00:00
tags:
  - mayurrawte
  - GitHub Actions
draft: false
repo: https://github.com/mayurrawte/SherlockQA
marketplace: https://github.com/marketplace/actions/sherlockqa-ai
version: v1.2.2
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/mayurrawte/SherlockQA** to version **v1.2.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sherlockqa-ai) to find the latest changes.

## What's Changed

Fixes the #1 trust-killer from the reliability epic (#19): reviews stacking up on every push until contributors start ignoring the tool.

### Fixed
- **Reviews no longer pile up on every push** (#21) — SherlockQA now recognizes its own prior reviews regardless of the `use-emoji` setting via a hidden `<!-- sherlockqa:review -->` marker, and the summary no longer creates an undismissable `COMMENTED` review.
- **Inline findings are synced, not stacked** — posted as individually-tagged review comments that are deleted and re-posted on each run.
- **Formal reviews only for dismissable terminal verdicts** (`APPROVE` / `REQUEST_CHANGES`) — the common "needs changes" outcome now surfaces via the sticky summary and Check Run instead of an un-dismissable review. With `update-summary-comment: false`, the legacy single `COMMENT` review is still posted.
- **Sticky-comment lookup is now paginated** (#12) — busy PRs no longer accumulate duplicate sticky comments.

### Internal
- Jest suite grown to 24 tests, adding `planFormalReview` and `isSherlockReview` regressions.

**Note:** pre-existing `COMMENTED` review stacks from older versions can't be removed via the API and will linger once; this release prevents new ones.

**Full changelog:** https://github.com/mayurrawte/SherlockQA/compare/v1.2.1...v1.2.2

