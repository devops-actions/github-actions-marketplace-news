---
title: vibestats
date: 2026-07-19 06:29:56 +00:00
tags:
  - stephenleo
  - GitHub Actions
draft: false
repo: https://github.com/stephenleo/vibestats
marketplace: https://github.com/marketplace/actions/vibestats
version: v2.4.4
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  VibeStats is an open-source GitHub Action that tracks Claude Code and Codex sessions to provide users with a heatmap on their GitHub profile and a full analytics dashboard at `vibestats.dev/<username>`. It synchronizes aggregated daily stats to a private GitHub repo, ensuring history past 30 days without changing Claude Code's default settings. The action helps users keep track of usage trends, privacy, and survival across machine wipes and reinstalls, offering detailed metrics such as tokens, sessions, minutes, model breakdowns, harness mixes, and more.
---


Version updated for **https://github.com/stephenleo/vibestats** to version **v2.4.4**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibestats) to find the latest changes.

## Action Summary

VibeStats is an open-source GitHub Action that tracks Claude Code and Codex sessions to provide users with a heatmap on their GitHub profile and a full analytics dashboard at `vibestats.dev/<username>`. It synchronizes aggregated daily stats to a private GitHub repo, ensuring history past 30 days without changing Claude Code's default settings. The action helps users keep track of usage trends, privacy, and survival across machine wipes and reinstalls, offering detailed metrics such as tokens, sessions, minutes, model breakdowns, harness mixes, and more.

## What's Changed

## Fixes

- `vibestats sync` now reports failed uploads and exits non-zero; failed uploads do not update checkpoint hashes, so later syncs retry them.
- `vibestats auth` now pipes its token to `gh secret set` without the unsupported `--body-file` flag.
