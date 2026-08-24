---
title: Tessl Code Review
date: 2026-08-24 22:48:45 +00:00
tags:
  - tesslio
  - GitHub Actions
draft: false
repo: https://github.com/tesslio/code-review-action
marketplace: https://github.com/marketplace/actions/tessl-code-review
version: v1.3.0
dependentsNumber: "3"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of running Tessl Code Review in pull requests by handling checkout, setup, review publication, and lifecycle management. It supports various features such as lens selection, advisory mode, and comment-driven reviews, ensuring that each pull request is reviewed with up-to-date code. The action provides a robust solution for continuous code quality checks within the GitHub workflow environment.
---


Version updated for **https://github.com/tesslio/code-review-action** to version **v1.3.0**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tessl-code-review) to find the latest changes.

## Action Summary

This GitHub Action automates the process of running Tessl Code Review in pull requests by handling checkout, setup, review publication, and lifecycle management. It supports various features such as lens selection, advisory mode, and comment-driven reviews, ensuring that each pull request is reviewed with up-to-date code. The action provides a robust solution for continuous code quality checks within the GitHub workflow environment.

## What's Changed

Pin the Action to this release's commit SHA:

```yaml
uses: tesslio/code-review-action@e78605f36fcb282992e06713322b0dfaef36454f # v1.3.0
```

This revision installs the current Tessl CLI release. Set the
`cli-version` input to pin an exact one.

The major tag now points here, so a caller on that tag is on this
revision.

