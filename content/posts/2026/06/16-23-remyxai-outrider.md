---
title: Remyx Outrider
date: 2026-06-16 23:24:46 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.6.3
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.6.3**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## What's Changed

## Highlights

- **Issues-disabled-on-forks** is now handled gracefully. Outrider's pre-flight check inspects `has_issues` after the cadence guard; if Issues are disabled (the GitHub default on freshly-created forks), the run exits cleanly with status `skipped_issues_disabled` instead of wasting selection + scaffold cost only to fail at the Issue-emit step. Action message hints at `gh repo edit <repo> --enable-issues` as the customer-side fix.
- **Defense-in-depth catch** for the rare race where Issues get disabled mid-run: `open_issue` now raises `IssuesDisabledError` (the class was defined for this case but never wired) and `process_target` routes it to the same `skipped_issues_disabled` status. Previously this path produced a generic `error` with an opaque traceback.

## Behavior

Additive only. No public API changes; no behavior change on runs against repos where Issues are enabled (the common case). The new status code is documented in the README status-codes table and surfaced in the action's `outputs.status` enum.

## README polish bundled in

- Status codes table adds `issue_opened_high_risk` (the row was missing despite the Diff Risk Score section referencing the status by name) and the new `skipped_issues_disabled`.
- *What you get* list mentions the v1.6.2 step_summary failure-mode surfacing.
- Weekly Discussion setup section's "forks have Discussions off by default" parenthetical extended to call out the same default for Issues + the new graceful skip behavior.

## Included PRs

- #43 — Handle Issues-disabled-on-forks gracefully + README polish

The `v1` floating tag has been moved to v1.6.3.
