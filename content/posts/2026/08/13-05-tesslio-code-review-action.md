---
title: Tessl Code Review
date: 2026-08-13 05:42:43 +00:00
tags:
  - tesslio
  - GitHub Actions
draft: false
repo: https://github.com/tesslio/code-review-action
marketplace: https://github.com/marketplace/actions/tessl-code-review
version: v1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates Tessl Code Review in GitHub Actions, handling pull-request resolution, exact-head checkout, Tessl CLI setup, review publication, stale-head protection, idempotency, failure notices, and result artifacts. It provides a quick start guide, configuration options, and review cadence support.
---


Version updated for **https://github.com/tesslio/code-review-action** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tessl-code-review) to find the latest changes.

## Action Summary

This GitHub Action automates Tessl Code Review in GitHub Actions, handling pull-request resolution, exact-head checkout, Tessl CLI setup, review publication, stale-head protection, idempotency, failure notices, and result artifacts. It provides a quick start guide, configuration options, and review cadence support.

## What's Changed

The first supported release of the Tessl Code Review Action.

Pin the Action to this release's commit SHA:

```yaml
uses: tesslio/code-review-action@1907f303ffe89a7d65e298ee1183e4ccaeeb93b3 # v1
```

This revision installs Tessl CLI 0.96.0. A review runs the `standard` profile in advisory mode by default; see the [README](https://github.com/tesslio/code-review-action#readme) for gate mode, review cadence, and the `lenses` input, and the [Action contract](https://github.com/tesslio/code-review-action/blob/1907f303ffe89a7d65e298ee1183e4ccaeeb93b3/docs/action-contract.md) for supported configuration and outputs.

