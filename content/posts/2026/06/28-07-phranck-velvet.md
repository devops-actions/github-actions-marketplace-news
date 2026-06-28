---
title: Velvet status page
date: 2026-06-28 07:12:50 +00:00
tags:
  - phranck
  - GitHub Actions
draft: false
repo: https://github.com/phranck/velvet
marketplace: https://github.com/marketplace/actions/velvet-status-page
version: v1.6.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/phranck/velvet** to version **v1.6.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/velvet-status-page) to find the latest changes.

## What's Changed

## What's changed

The auto-generated social card (`og:image`) is now rendered from the **same layout
tokens and data logic as the live page**, instead of a separate hand-tuned copy.
Change the page's bar geometry, type scale or status logic and the card updates
with it — no more drift.

- The uptime bar uses the real `barsForRange` series: correct bar count, ghost
  bars for days before monitoring began, and the live gloss gradient. It matches
  the 90-day view exactly.
- New shared `src/lib/tokens.ts` drives both the live CSS (via `applyTheme`) and
  the card geometry; `STATUS_HERO` + `RANGE_LABEL` are shared too.
- The card generator is now `generate-og.ts`, run via `tsx`.
- Default logo height raised to 72px.

