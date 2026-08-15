---
title: riskratchet
date: 2026-08-15 14:09:20 +00:00
tags:
  - KayhanB21
  - GitHub Actions
draft: false
repo: https://github.com/KayhanB21/riskratchet-action
marketplace: https://github.com/marketplace/actions/riskratchet
version: v1.0.10
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action is a wrapper for the KayhanB21/riskratchet maintainability ratchet tool, which helps automate code health checks by analyzing changes in codebase. It automates the process of identifying potential areas that need attention based on churn metrics and provides insights into code quality and maintainability. The action can be used to integrate riskratchet functionality into GitHub workflows, allowing for continuous monitoring and improvement of codebase health.
---


Version updated for **https://github.com/KayhanB21/riskratchet-action** to version **v1.0.10**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/riskratchet) to find the latest changes.

## Action Summary

This GitHub Action is a wrapper for the KayhanB21/riskratchet maintainability ratchet tool, which helps automate code health checks by analyzing changes in codebase. It automates the process of identifying potential areas that need attention based on churn metrics and provides insights into code quality and maintainability. The action can be used to integrate riskratchet functionality into GitHub workflows, allowing for continuous monitoring and improvement of codebase health.

## What's Changed

Delegates to [`riskratchet@v0.3.3`](https://github.com/KayhanB21/riskratchet/releases/tag/v0.3.3).

The floating `v1` tag has been moved here, so `uses: KayhanB21/riskratchet-action@v1` now runs 0.3.3.

## What you get from 0.3.3

**An unreadable baseline is no longer a silent pass.** If your `.riskratchet.json` was corrupt,
truncated, or written by a newer riskratchet, it used to load as *zero entries* — and an empty
baseline passes every gate. Your Action reported "No risk regressions detected" and exited 0 while
ratcheting nothing. That is now a hard error (exit 2) with a remediation command, and a baseline from
a newer riskratchet tells you to upgrade rather than to regenerate.

Individually malformed entries still let the run continue, but now warn with a count instead of
vanishing silently.

Also: riskratchet fixed a 7.6-point error in how it measured its own test coverage. That one is
internal — it has no effect on your repository's scores.

Full notes: https://github.com/KayhanB21/riskratchet/blob/master/CHANGELOG.md

