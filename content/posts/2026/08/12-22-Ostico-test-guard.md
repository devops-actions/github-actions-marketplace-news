---
title: Test Adequacy Guard
date: 2026-08-12 22:51:36 +00:00
tags:
  - Ostico
  - GitHub Actions
draft: false
repo: https://github.com/Ostico/test-guard
marketplace: https://github.com/marketplace/actions/test-adequacy-guard
version: v2.0.1
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  Test-Guard automates the task of checking if a pull request has adequate tests. It evaluates every source file in the PR independently, using diff coverage and heuristic test-file matching to determine if changes are tested. The action provides detailed per-file analysis and uses AI-powered evaluation to ensure comprehensive testing coverage.
---


Version updated for **https://github.com/Ostico/test-guard** to version **v2.0.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/test-adequacy-guard) to find the latest changes.

## Action Summary

Test-Guard automates the task of checking if a pull request has adequate tests. It evaluates every source file in the PR independently, using diff coverage and heuristic test-file matching to determine if changes are tested. The action provides detailed per-file analysis and uses AI-powered evaluation to ensure comprehensive testing coverage.

## What's Changed

## A red gate that measured nothing

On a `pull_request` run whose `GITHUB_REF` is not `refs/pull/<number>/merge`, the action aborted before Layer 1 ran:

```
::error::Could not determine PR number from GITHUB_REF.
```

Exit 1, no coverage read, no diff examined — but the check goes red, which from the author's side is indistinguishable from a test-adequacy verdict.

It reproduces on the `edited` activity type. Editing a PR body produces a fresh run, and that run can arrive with the ref pointing somewhere other than the merge ref. Since GitHub surfaces the latest run per check name, the result was a red required gate on a commit whose earlier run had passed.

## The fix

`.pull_request.number` is present in every `pull_request` payload, for every activity type. `GITHUB_REF` carries the number only while GitHub has a merge ref to point the run at.

The action now reads the payload at `GITHUB_EVENT_PATH` first and keeps `GITHUB_REF` as the fallback, so every case that worked before still works. An unusable payload — absent, unreadable, malformed, for another event, or with a number that is not an `int` — yields no number rather than an exception, leaving the fallback its chance. That last case is not hypothetical: `true` is valid JSON where the number goes, and `bool` subclasses `int`, so a naive check would pass `True` downstream as PR number 1.

The error message, when neither source yields a number, now names both sources and states outright that nothing was measured.

## Upgrading

Nothing to change. `v2` now points here.

12 tests added (455 in the suite), `ruff` clean, and each of the four ways to break the change was verified to turn the suite red.

Full detail in #6.

