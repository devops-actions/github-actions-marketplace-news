---
title: Assert Healthy
date: 2026-05-27 22:47:03 +00:00
tags:
  - uptimemonitoring
  - GitHub Actions
draft: false
repo: https://github.com/uptimemonitoring/assert-healthy
marketplace: https://github.com/marketplace/actions/assert-healthy
version: v1.0.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/uptimemonitoring/assert-healthy** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/assert-healthy) to find the latest changes.

## Action Summary

The `assert-healthy` GitHub Action verifies the health of specified [UptimeMonitoring.com](https://uptimemonitoring.com) monitors and automates gating workflow steps, such as deployments or pipelines, based on real-world system reachability. It checks the status of monitors in real-time and fails the workflow if any monitor is down or unhealthy, providing detailed error evidence. The action also includes fallback mechanisms, retries, and status differentiation to handle API limitations and network errors effectively.

## What's Changed

## 1.0.1 — Force-fresh probe by default

Shipped as a patch bump (not 2.0.0) because the action has no external consumers yet, so the default-behavior change can roll forward via the floating `@v1` tag without breaking anyone. Future contract changes after consumers adopt will follow semver strictly.

### Changed

- **Default behavior is now `POST /api/v1/monitors/{id}/test` first (force-fresh, single-region)** with automatic fallback to cached `GET /monitors/{id}` on upstream rate-limit, 5xx, unsupported monitor type, or transport/protocol error on the `/test` call. Each fallback is logged as a warning.

### Added

- New exit code `4` — kill switch active upstream (operator-initiated dispatch pause). Retry after the upstream window passes (default 60s).
- 429 with backoff retry loop: up to 3 retries with `Retry-After`-honoring sleep (`max(Retry-After × 1000, [1s, 3s, 5s])`).
- Warning log on every fallback to cached state so it is visible in step output.

Closes #3 via [PR #4](https://github.com/uptimemonitoring/assert-healthy/pull/4). Follow-up polish tracked at #5.

Shipped as 1.0.1 (not 2.0.0) — no external consumers yet, so the floating `@v1` moves forward smoothly.

## What's Changed
* feat(v2): force-fresh probe via POST /test with fallback to cached GET by @ezri-helper in https://github.com/uptimemonitoring/assert-healthy/pull/4

## New Contributors
* @ezri-helper made their first contribution in https://github.com/uptimemonitoring/assert-healthy/pull/4

**Full Changelog**: https://github.com/uptimemonitoring/assert-healthy/compare/v1.0.0...v1.0.1
