---
title: spek - OpenSpec Static Site
date: 2026-04-25 21:28:55 +00:00
tags:
  - kewang
  - GitHub Actions
draft: false
repo: https://github.com/kewang/spek
marketplace: https://github.com/marketplace/actions/spek-openspec-static-site
version: v1.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/kewang/spek** to version **v1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/spek-openspec-static-site) to find the latest changes.

## Action Summary

The **spek** GitHub Action is a lightweight, read-only viewer for OpenSpec content that transforms local OpenSpec directories into structured, searchable interfaces. It automates the organization and visualization of specifications, change tracking, and task progress, offering features like full-text search, BDD syntax highlighting, lifecycle analytics, and Gantt-style timelines. Available as a web app, VS Code extension, and IntelliJ plugin, spek simplifies navigating and understanding OpenSpec repositories without requiring server deployment or data sharing.

## What's Changed

- Add `/timeline` page: horizontal Gantt-style chart of every change's lifecycle — active bars extend to today with an arrow, archived bars render as fixed segments
- Timeline supports an optional "Group by topic" toggle and "Hide active / Hide archived" filter chips, plus an auto-scaling time axis (daily / weekly / monthly / quarterly ticks based on span)
- Read `created:` from `.openspec.yaml` and derive `archivedDate` from archive folder name; surface lifecycle info in `ChangeInfo` / `ChangeDetail` (server payload adds two backwards-compatible fields)
- ChangeList row shows `Created Apr 20 · 5d ago` for active changes and `Created Feb 14 → Archived Feb 22 · 8d` for archived ones
- ChangeDetail header gains a lifecycle banner (e.g., `Created 2026-02-14 · Archived 2026-02-22 (8 days)` or `Active for 5 days`)
- Dashboard adds two stats cards: **Avg lifecycle (archived)** and **Stale active (>30d)**
- VS Code sidebar shows lifecycle days in change descriptions and includes the created date in tooltips
- New `@spek/web` test runner (`npm test -w @spek/web`) covers the timeline scale and grouping helpers
