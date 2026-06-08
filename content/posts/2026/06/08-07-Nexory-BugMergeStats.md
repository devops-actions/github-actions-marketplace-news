---
title: bugmerge-stats
date: 2026-06-08 07:07:10 +00:00
tags:
  - Nexory
  - GitHub Actions
draft: false
repo: https://github.com/Nexory/BugMergeStats
marketplace: https://github.com/marketplace/actions/bugmerge-stats
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Nexory/BugMergeStats** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bugmerge-stats) to find the latest changes.

## What's Changed

Static SVG GitHub contribution card with the filed-and-fixed lineage metric.

## What it does

Generates a 1200x600 dark-theme SVG card you embed in your profile README. Surfaces six metrics: issues filed, PRs merged, repos contributed, comment threads, **filed-and-fixed** (issues you filed that a maintainer closed with their own merged PR - no other tool tracks this), and a rank letter (S/A/B/C/D).

## Setup in two steps

1. Drop `.github/workflows/update-card.yml` into your profile repo with the action call.
2. Add one `![](url)` line to your README pointing at the committed card.svg.

Full README: https://github.com/Nexory/BugMergeStats#readme

## v0.1.0 notable bits

- Composite Action, self-contained (no npm publish required to consume)
- Pure string templating for SVG (no rendering deps)
- Embedded base64 avatar that renders in README embeds via GitHub's camo proxy
- SVG initials fallback for stricter-CSP contexts
- Public-only stats by default (secrets.GITHUB_TOKEN scope); PAT documented for private-repo activity
- 23 h cache TTL by default so the daily cron uses ~1% of an authenticated rate-limit budget
