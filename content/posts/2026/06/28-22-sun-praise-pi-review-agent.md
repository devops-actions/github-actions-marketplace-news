---
title: Pi Review Agent
date: 2026-06-28 22:10:53 +00:00
tags:
  - sun-praise
  - GitHub Actions
draft: false
repo: https://github.com/sun-praise/pi-review-agent
marketplace: https://github.com/marketplace/actions/pi-review-agent
version: v1.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sun-praise/pi-review-agent** to version **v1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pi-review-agent) to find the latest changes.

## What's Changed

## What's new

- **Real upstream-error capture**: reviewer failures now surface the actual provider cause (HTTP status / connection error) instead of the generic `stream likely errored` string. The `collected.errorMessage` from `pi-agent-core`'s failure message is threaded through the `review completed with no usage — <cause>` error.
- **Transient-error retry**: a reviewer that dies mid-stream with a transient cause (429 rate-limit, 5xx, `ECONNRESET`, socket hang-up, …) now retries with a fresh session + exponential backoff + jitter, up to `max-attempts` (default 3). Our own deadline (`timed out after Nms`) and non-transient 4xx (e.g. 413 payload-too-large) are excluded from retry.
- **Fail-closed verdict**: when one or more reviewers produce no content (error or empty), the final verdict is forced to `CANNOT MERGE` and severity is overridden, so a silent all-reviewers-failed run can no longer report `CAN MERGE`. The coordinator, coordinator verdict, and exit gate now stay consistent.

## Inputs

- `max-attempts` (default `3`) — max attempts per reviewer.
- `retry-backoff-ms` (default `1000`) — base backoff for retry.

## Upgrade

No action required for `@v1` users — the moving `v1` tag now points here. Pin to `@v1.2.0` for an exact lock.

