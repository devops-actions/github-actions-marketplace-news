---
title: Cache Doctor
date: 2026-04-28 22:05:31 +00:00
tags:
  - LeRedTeam
  - GitHub Actions
draft: false
repo: https://github.com/LeRedTeam/cache-doctor
marketplace: https://github.com/marketplace/actions/cache-doctor
version: v1.0.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/LeRedTeam/cache-doctor** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cache-doctor) to find the latest changes.

## Action Summary

Cache Doctor is a GitHub Action designed to analyze, diagnose, and optimize GitHub Actions cache usage. It identifies inefficiencies such as orphaned caches, ineffective cache key patterns, and quota overuse, providing actionable recommendations and automated cleanup options to reclaim wasted storage and improve build performance. By streamlining cache management, it eliminates the need for manual troubleshooting and ensures workflows remain efficient and cost-effective.

## What's Changed

**Cache Doctor** is a continuous linter and diagnostic tool for GitHub Actions cache. It finds problems you didn't know you had — orphan caches from deleted branches, bad key patterns that never hit, quota silently filling up — and tells you exactly how to fix them.

## Highlights

- **`analyze` mode** — Quota usage, stale/orphan detection, hit/miss insight from workflow logs
- **`lint` mode** — 20 static rules (CD001–CD020) for bad cache patterns in workflow YAML
- **`cleanup` mode** — Delete stale and orphan caches on a schedule
- Outputs: job summary, JSON, SARIF, PR comment (Pro)
- Zero infrastructure, no backend, no database — runs entirely inside your workflow
- Stateless: cross-run trends use Action artifacts, not external storage

## Quick Start

```yaml
- uses: LeRedTeam/cache-doctor@v1
  with:
    mode: analyze
```

See the [README](https://github.com/LeRedTeam/cache-doctor#readme) for the full input/output reference and lint rules.
