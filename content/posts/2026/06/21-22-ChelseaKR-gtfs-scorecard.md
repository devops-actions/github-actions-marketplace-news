---
title: GTFS Scorecard gate
date: 2026-06-21 22:29:15 +00:00
tags:
  - ChelseaKR
  - GitHub Actions
draft: false
repo: https://github.com/ChelseaKR/gtfs-scorecard
marketplace: https://github.com/marketplace/actions/gtfs-scorecard-gate
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/ChelseaKR/gtfs-scorecard** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gtfs-scorecard-gate) to find the latest changes.

## What's Changed

First public release, including the **GTFS Scorecard gate** GitHub Action.

The action scores a GTFS Schedule feed and fails your build if it drops below a grade or is about to expire:

```yaml
- uses: ChelseaKR/gtfs-scorecard@v1
  with:
    feed-url: https://your-agency.example/google_transit.zip
    min-grade: C
    min-days-to-expiry: 14
```

Both thresholds are optional. Pin `@v1` for patches, or `@v1.0.0` to lock this exact version. Full input reference: [docs/ci-action.md](https://github.com/ChelseaKR/gtfs-scorecard/blob/main/docs/ci-action.md).
