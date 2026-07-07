---
title: Upkeep Audit
date: 2026-07-07 15:15:21 +00:00
tags:
  - wei18
  - GitHub Actions
draft: false
repo: https://github.com/wei18/Upkeep
marketplace: https://github.com/marketplace/actions/upkeep-audit
version: v2
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/wei18/Upkeep** to version **v2**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/upkeep-audit) to find the latest changes.

## What's Changed

Upkeep is now installable as a Claude Code plugin (`/plugin marketplace add wei18/upkeep` + `/plugin install upkeep@upkeep`) or via `npx skills add wei18/upkeep --skill upkeep-audit`. The GHA reusable workflow is unchanged — `@v1` callers keep working but `v1` is now frozen; switch to `@v2` (identical interface). From now on fixes move the `v2` tag only.
