---
title: Tessl Code Review
date: 2026-08-18 13:26:08 +00:00
tags:
  - tesslio
  - GitHub Actions
draft: false
repo: https://github.com/tesslio/code-review-action
marketplace: https://github.com/marketplace/actions/tessl-code-review
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Tessl Code Review is a GitHub Action that automates the process of running code reviews using the Tessl tool, handling pull request resolution, exact-head checkout, Tessl CLI setup, review publication, stale-head protection, idempotency, failure notices, and result artifacts. It simplifies the integration of code review functionality into GitHub workflows while retaining control over various aspects such as triggers, concurrency, permissions, secrets, runners, timeouts, and branch protections.
---


Version updated for **https://github.com/tesslio/code-review-action** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tessl-code-review) to find the latest changes.

## Action Summary

Tessl Code Review is a GitHub Action that automates the process of running code reviews using the Tessl tool, handling pull request resolution, exact-head checkout, Tessl CLI setup, review publication, stale-head protection, idempotency, failure notices, and result artifacts. It simplifies the integration of code review functionality into GitHub workflows while retaining control over various aspects such as triggers, concurrency, permissions, secrets, runners, timeouts, and branch protections.

## What's Changed

Pin the Action to this release's commit SHA:

```yaml
uses: tesslio/code-review-action@c6c5070082b1a578993552756e22fe0fef58015b # v1.1.0
```

This revision installs Tessl CLI 0.97.0.

