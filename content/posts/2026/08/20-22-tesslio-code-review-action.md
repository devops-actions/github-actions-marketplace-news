---
title: Tessl Code Review
date: 2026-08-20 22:35:23 +00:00
tags:
  - tesslio
  - GitHub Actions
draft: false
repo: https://github.com/tesslio/code-review-action
marketplace: https://github.com/marketplace/actions/tessl-code-review
version: v1.2.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of running Tessl Code Review on pull requests. It handles pull-request resolution, exact-head checkout, Tessl CLI setup, review publication, stale-head protection, idempotency, failure notices, and result artifacts. The action supports configuration through a profile or explicit lens selection.
---


Version updated for **https://github.com/tesslio/code-review-action** to version **v1.2.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tessl-code-review) to find the latest changes.

## Action Summary

This GitHub Action automates the process of running Tessl Code Review on pull requests. It handles pull-request resolution, exact-head checkout, Tessl CLI setup, review publication, stale-head protection, idempotency, failure notices, and result artifacts. The action supports configuration through a profile or explicit lens selection.

## What's Changed

Pin the Action to this release's commit SHA:

```yaml
uses: tesslio/code-review-action@36962c011cd38aa40abebf8ae3068a27a0af2013 # v1.2.0
```

This revision installs the current Tessl CLI release. Set the
`cli-version` input to pin an exact one.

The major tag now points here, so a caller on that tag is on this
revision.

