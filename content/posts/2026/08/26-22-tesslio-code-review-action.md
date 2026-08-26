---
title: Tessl Code Review
date: 2026-08-26 22:41:11 +00:00
tags:
  - tesslio
  - GitHub Actions
draft: false
repo: https://github.com/tesslio/code-review-action
marketplace: https://github.com/marketplace/actions/tessl-code-review
version: v1.4.0
dependentsNumber: "3"
actionType: Composite
actionSummary: |
  The Tessl Code Review GitHub Action automates the process of running Tessl Code Review on pull requests in a repository. It handles review resolution, exact-head checkout, Tessl CLI setup, review publication, stale-head protection, idempotency, failure notices, and result artifacts. The action runs automatically when pull requests are opened or reopened, providing an integrated code review experience within GitHub workflows.
---


Version updated for **https://github.com/tesslio/code-review-action** to version **v1.4.0**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tessl-code-review) to find the latest changes.

## Action Summary

The Tessl Code Review GitHub Action automates the process of running Tessl Code Review on pull requests in a repository. It handles review resolution, exact-head checkout, Tessl CLI setup, review publication, stale-head protection, idempotency, failure notices, and result artifacts. The action runs automatically when pull requests are opened or reopened, providing an integrated code review experience within GitHub workflows.

## What's Changed

Pin the Action to this release's commit SHA:

```yaml
uses: tesslio/code-review-action@f72c50f92d6829931dfb68ef0bf7ac29191856f3 # v1.4.0
```

This revision installs the current Tessl CLI release. Set the
`cli-version` input to pin an exact one.

The major tag now points here, so a caller on that tag is on this
revision.

