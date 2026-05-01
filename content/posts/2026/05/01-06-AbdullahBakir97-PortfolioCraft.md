---
title: PortfolioCraft Action
date: 2026-05-01 06:17:35 +00:00
tags:
  - AbdullahBakir97
  - GitHub Actions
draft: false
repo: https://github.com/AbdullahBakir97/PortfolioCraft
marketplace: https://github.com/marketplace/actions/portfoliocraft-action
version: v0.3.2
dependentsNumber: "1"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/AbdullahBakir97/PortfolioCraft** to version **v0.3.2**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/portfoliocraft-action) to find the latest changes.

## Action Summary

PortfolioCraft is a GitHub Action that automates the creation of a professional portfolio using data from your GitHub profile. It generates multiple artifacts in a single workflow run, including a README section, JSON resume, PDF CV, and SVG stat cards, while ensuring privacy by only using public repository and user data. This action streamlines the process of showcasing your GitHub activity and skills in various formats for professional and personal use.

## What's Changed

## [0.3.2] — 2026-04-30

### Fixed
- **GraphQL ingest now retries transient GitHub API failures** (5xx, 408, 429, network errors). Two real-world 502 Bad Gateway events on 2026-04-30 killed daily dogfood runs that should have succeeded — this closes that gap. The `@octokit/plugin-retry` plugin only attaches to the REST client; GraphQL had no equivalent until now.
  - `ingestSnapshot` (the user + repos query): retries on 5xx/408/429/network errors with exponential backoff (500ms × 2ⁿ + jitter, max 4 attempts ≈ 8.5s worst case).
  - `ingestAuditExtras` (per-page repo extras + user-PR search): same retry shape.
  - Per-PR timeline (`ingestAuditExtras`'s inner loop): retries with `maxAttempts: 2` only — the existing per-PR try/catch already degrades gracefully to `timeline: null`, so we cap retries to keep the runtime predictable on a brief outage.

### Added
- New `withRetry` and `isRetryableError` exports from `@portfoliocraft/core`. Tiny (60-line) helper, dependency-free; reusable for any future GraphQL-shaped call.
- 14 new tests in `packages/core/test/retry.test.ts` covering the retry classifier (each retryable-error class has positive/negative cases) and the backoff/cap logic.

### Notes
- 4xx errors other than 408/429 (auth/not-found/validation) propagate immediately — those are caller bugs, not transient outages.
- Plain `Error` with no `status`/`code` also doesn't retry — probably a code bug rather than a network blip.


