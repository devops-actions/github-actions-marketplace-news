---
title: Star History Action
date: 2026-07-18 14:25:35 +00:00
tags:
  - narayann7
  - GitHub Actions
draft: false
repo: https://github.com/narayann7/star-history-action
marketplace: https://github.com/marketplace/actions/star-history-action
version: v1.0.4
dependentsNumber: "8"
actionType: Composite
actionSummary: |
  The Star History Action automates the process of displaying a self-updating star history chart in your own repository's README. It solves the problem of rendering star-history.com badges on restricted endpoints and provides an alternative method using GitHub Actions and Node.js to render charts based on your own access token. The action runs in your CI, commits the rendered chart into your repo, and updates the README with a static image, ensuring that it only refreshes when there are actual changes to the stargazers data.
---


Version updated for **https://github.com/narayann7/star-history-action** to version **v1.0.4**.

- This action is used across all versions by **8** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/star-history-action) to find the latest changes.

## Action Summary

The Star History Action automates the process of displaying a self-updating star history chart in your own repository's README. It solves the problem of rendering star-history.com badges on restricted endpoints and provides an alternative method using GitHub Actions and Node.js to render charts based on your own access token. The action runs in your CI, commits the rendered chart into your repo, and updates the README with a static image, ensuring that it only refreshes when there are actual changes to the stargazers data.

## What's Changed

### Fixed
- A GitHub API rate-limit or access **403 while refreshing an already-committed chart no longer fails the workflow.** When a chart already exists, the run keeps it, logs a warning, and exits cleanly, then refreshes on the next run once the limit resets. Retrying alone could not cover this: the automatic Actions token's primary limit (1000 requests/hour per repo) resets up to an hour out, far beyond the retry wait cap. The first run with no chart yet still fails loudly, since a 403 there usually means the token cannot read the target repo.
- The dogfood `watch` workflow now sets `concurrency: cancel-in-progress: true`, so a **burst of stars collapses into a single refresh** instead of queuing one run per star. Each render spends ~40 API requests; without collapsing, a star burst drained the per-repo hourly quota and made later runs 403.

### Documentation
- Condensed the README and added a **Rate limits** section covering the per-repo 1000/hour Actions-token cap, the 5000/hour PAT cap, and the burst failure mode.

The vendored star-history renderer is unchanged.

**Full changelog:** https://github.com/narayann7/star-history-action/compare/v1.0.3...v1.0.4

