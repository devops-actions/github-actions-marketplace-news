---
title: ShipSignal readiness gate
date: 2026-07-04 14:34:05 +00:00
tags:
  - jpaul67
  - GitHub Actions
draft: false
repo: https://github.com/jpaul67/ShipSignal
marketplace: https://github.com/marketplace/actions/shipsignal-readiness-gate
version: v0.9.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/jpaul67/ShipSignal** to version **v0.9.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/shipsignal-readiness-gate) to find the latest changes.

## What's Changed

## Added
- Release cadence & lead time from tags (Package K) — tags-per-month, median inter-tag gap, and median lead time from commit to release tag, derived entirely from git tags. Filters to release-shaped tags (overridable via `.shipsignal.toml`'s `release_tag_pattern`). Context only, never scored — tags aren't deploys.
- Outcomes: revert pairs & time-to-correction (Package J) — median time-to-correction from matched revert pairs, plus the change-failure proxy relabeled and rendered alongside it. Context only, never scored.
- `.shipsignal.toml` config file (Package G) — repo-local defaults for AI aliases, squash detection, release-tag pattern, readiness thresholds, and badge label, picked up automatically by every command.

Full details: [CHANGELOG.md](https://github.com/jpaul67/ShipSignal/blob/v0.9.0/CHANGELOG.md#090--2026-07-03)
