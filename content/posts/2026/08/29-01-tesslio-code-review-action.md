---
title: Tessl Code Review
date: 2026-08-29 01:39:40 +00:00
tags:
  - tesslio
  - GitHub Actions
draft: false
repo: https://github.com/tesslio/code-review-action
marketplace: https://github.com/marketplace/actions/tessl-code-review
version: v1.5.0
dependentsNumber: "3"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of running Tessl Code Review on pull requests in a repository and publishing the results as native comments in the Pull Request. It handles various tasks such as checking out the head of the pull request, setting up the Tessl CLI, running reviews, managing stale branches, ensuring idempotency, sending failure notices, and archiving result artifacts. The action provides flexibility to configure profiles and lenses for specific checks, and it supports posting reviews under a different identity if needed.
---


Version updated for **https://github.com/tesslio/code-review-action** to version **v1.5.0**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tessl-code-review) to find the latest changes.

## Action Summary

This GitHub Action automates the process of running Tessl Code Review on pull requests in a repository and publishing the results as native comments in the Pull Request. It handles various tasks such as checking out the head of the pull request, setting up the Tessl CLI, running reviews, managing stale branches, ensuring idempotency, sending failure notices, and archiving result artifacts. The action provides flexibility to configure profiles and lenses for specific checks, and it supports posting reviews under a different identity if needed.

## What's Changed

Pin the Action to this release's commit SHA:

```yaml
uses: tesslio/code-review-action@68497531d3454174dfca5cd25627757b881f2b66 # v1.5.0
```

This revision installs the current Tessl CLI release. Set the
`cli-version` input to pin an exact one.

The major tag now points here, so a caller on that tag is on this
revision.

