---
title: ReviewGate
date: 2026-07-30 07:05:49 +00:00
tags:
  - LVTD-LLC
  - GitHub Actions
draft: false
repo: https://github.com/LVTD-LLC/reviewgate
marketplace: https://github.com/marketplace/actions/reviewgate
version: v0.6.3
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  ReviewGate is a GitHub Action that automates PR reviews by integrating with OpenRouter. It runs inside CI environments, scores pull requests based on confidence levels, and generates comments and checks. Key features include:
  
  1. **Score Management**: Provides a `0-5` score for each reviewed PR.
  2. **Summary Comments**: Generates a canonical comment for every review.
  3. **Maintainer Rereviews**: Allows users to request further reviews by mentioning `@reviewgate review`.
  4. **Artifact Generation**: Outputs structured JSON artifacts for scripts and external agents.
  
  ReviewGate is designed to be review-only, not repair or store code, focusing on visibility and scoring rather than automation of changes.
---


Version updated for **https://github.com/LVTD-LLC/reviewgate** to version **v0.6.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/reviewgate) to find the latest changes.

## Action Summary

ReviewGate is a GitHub Action that automates PR reviews by integrating with OpenRouter. It runs inside CI environments, scores pull requests based on confidence levels, and generates comments and checks. Key features include:

1. **Score Management**: Provides a `0-5` score for each reviewed PR.
2. **Summary Comments**: Generates a canonical comment for every review.
3. **Maintainer Rereviews**: Allows users to request further reviews by mentioning `@reviewgate review`.
4. **Artifact Generation**: Outputs structured JSON artifacts for scripts and external agents.

ReviewGate is designed to be review-only, not repair or store code, focusing on visibility and scoring rather than automation of changes.

## What's Changed

## What's Changed
* [Agent UX] Revalidate Hidden Disposition Receipts - RGA-007 by @rasulkireev in https://github.com/LVTD-LLC/reviewgate/pull/78
* [Release] Prepare v0.6.3 Runtime - RGA-007 by @rasulkireev in https://github.com/LVTD-LLC/reviewgate/pull/79


**Full Changelog**: https://github.com/LVTD-LLC/reviewgate/compare/v0...v0.6.3
