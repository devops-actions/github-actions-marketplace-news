---
title: Mark Ready When Ready
date: 2026-04-07 21:56:00 +00:00
tags:
  - kenyonj
  - GitHub Actions
draft: false
repo: https://github.com/kenyonj/mark-ready-when-ready
marketplace: https://github.com/marketplace/actions/mark-ready-when-ready
version: v1.2.0
dependentsNumber: "14"
actionType: Composite
---


Version updated for **https://github.com/kenyonj/mark-ready-when-ready** to version **v1.2.0**.

- This action is used across all versions by **14** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mark-ready-when-ready) to find the latest changes.

## Action Summary

The "Mark Ready When Ready" GitHub Action automates the process of marking draft pull requests as ready for review once all required checks have successfully passed. It continuously monitors CI checks, ensures there are no merge conflicts, and validates permissions and prerequisites before updating the PR status. This action is particularly useful for repositories with lengthy CI pipelines, reducing manual intervention and streamlining the review process.

## What's Changed

## What's new

### Private repo support (GitHub Free)

The action now works on private repos across **all** GitHub plans. On GitHub Free, `gh pr checks` fails because its internal GraphQL query accesses a restricted field (`checkSuite.workflowRun`). When this happens, the action automatically falls back to REST API polling — no configuration required.

### New inputs

| Input | Default | Description |
|-------|---------|-------------|
| `polling-interval-seconds` | `10` | Seconds between REST API polls when the fallback is active |
| `polling-timeout-seconds` | `1800` | Maximum seconds to wait for checks during fallback polling |

### How the fallback works

1. `gh pr checks --watch --required` is tried first (better UX with streamed check names)
2. If it fails with `Resource not accessible by integration`, the action switches to polling `/commits/{sha}/check-runs` and `/commits/{sha}/status` REST endpoints
3. The trust-but-verify GraphQL step is unchanged — its query doesn't use the restricted fields
