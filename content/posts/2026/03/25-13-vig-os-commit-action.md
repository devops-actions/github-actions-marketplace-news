---
title: Commit via GitHub API
date: 2026-03-25 13:42:17 +00:00
tags:
  - vig-os
  - GitHub Actions
draft: false
repo: https://github.com/vig-os/commit-action
marketplace: https://github.com/marketplace/actions/commit-via-github-api
version: v0.2.0
dependentsNumber: "4"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/vig-os/commit-action** to version **v0.2.0**.
- This action is used across all versions by **4** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/commit-via-github-api) to find the latest changes.

## Action Summary

The Commit Action is a GitHub Action designed to automate committing changes to a repository using the GitHub API. It creates automatically signed commits that can bypass branch protection rules, streamlining workflows that require updates to protected branches. With features like modularity, type safety, and optimized API usage for handling large sets of changes, it provides a reliable and efficient solution for managing automated commits in CI/CD pipelines.

## Release notes


### Added

- Bounded retry with exponential backoff for transient GitHub API failures (`404`, `5xx`, `429`, and `403` when the error message indicates rate limit or abuse), configurable via **`MAX_ATTEMPTS`** and **`CommitOptions`** (`maxAttempts`, `logger`, optional `baseDelayMs` / `maxDelayMs`); new retry module helpers `isTransientError`, `classifyError`, `calculateDelay`, and `withRetry` (issue #20).
- Efficient multi-file commits via GitHub `createTree` **inline `content`** for text files (blobs created server-side), **`createBlob`** only for binary files (NUL detected in the first 8 KiB), and **chained `createTree`** requests in chunks of **`TREE_ENTRY_CHUNK_SIZE` (100)** entries for very large change sets and payload limits (issue #19).

### Changed

- README Action example uses a tagged release (`@v0.1.5`) instead of `@main` for reproducibility; unreleased behavior remains documented in the same section.
- Exported helpers for library use: `isBinaryFile`, `getFileMode`, and `TREE_ENTRY_CHUNK_SIZE` from `commit.ts`.
- Binary blob creation is now sequential instead of concurrent to avoid secondary rate-limit bursts.

### Fixed

- `withRetry` could surface `undefined` when `maxAttempts` was non-positive or non-finite; values are now normalized to at least one attempt.
- HTTP-like error detection for retries now requires `status` to be a number (avoids misclassifying odd error shapes).
- Non-UTF-8 text fallback in `createTree` delegates to `createBlob()` so blob behavior stays consistent.
- `isBinaryFile` false positives when `readSync` returns fewer bytes than requested (zero-filled buffer tail).
- Silent data corruption for non-UTF-8 text files by validating with `TextDecoder({ fatal: true })` and falling back to `createBlob`.


