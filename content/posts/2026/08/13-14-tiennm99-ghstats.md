---
title: ghstats-cards
date: 2026-08-13 14:04:05 +00:00
tags:
  - tiennm99
  - GitHub Actions
draft: false
repo: https://github.com/tiennm99/ghstats
marketplace: https://github.com/marketplace/actions/ghstats-cards
version: v1.6.2
dependentsNumber: "2"
actionType: Docker
actionSummary: |
  `ghstats` is a GitHub Action that generates SVG cards summarizing a GitHub user's profile, providing insights into various metrics like repository language breakdowns, commit activity, and contribution trends. It automates the process of visualizing user data in a visually appealing format, making it easier to share and present on a user's GitHub profile README.
---


Version updated for **https://github.com/tiennm99/ghstats** to version **v1.6.2**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ghstats-cards) to find the latest changes.

## Action Summary

`ghstats` is a GitHub Action that generates SVG cards summarizing a GitHub user's profile, providing insights into various metrics like repository language breakdowns, commit activity, and contribution trends. It automates the process of visualizing user data in a visually appealing format, making it easier to share and present on a user's GitHub profile README.

## What's Changed

## Fixes

- **`commits_per_repo: "0"` now means every commit instead of none.** The pagination guard broke on `seen >= maxPerRepo`, so a cap of zero stopped before the first page and silently rendered empty productive-time, productive-weekday and most-commit-language cards — the opposite of what `0` already meant for `top_repos`. A cap of zero or less is now treated as no cap.

  Verified against a real repository: a cap of `100` still stops at 100 commits, while `500` and `0` both walk the full 382-commit history.

The default stays at `500`, which is plenty for most accounts. Raising it matters when a repo holds more reachable commits than the cap *and* you want the all-time cards to reflect your full history — commit history is returned newest-first, so a cap keeps the most recent commits and drops the older tail.

**Full Changelog**: https://github.com/tiennm99/ghstats/compare/v1.6.1...v1.6.2

