---
title: spek - OpenSpec Static Site
date: 2026-07-13 06:17:04 +00:00
tags:
  - spekhq
  - GitHub Actions
draft: false
repo: https://github.com/spekhq/spek
marketplace: https://github.com/marketplace/actions/spek-openspec-static-site
version: v1.6.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/spekhq/spek** to version **v1.6.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/spek-openspec-static-site) to find the latest changes.

## What's Changed

- **TOC navigation lands on the section you clicked** — clicking a table-of-contents entry, or opening a `#hash` deep link, on a Change or Spec detail page no longer scrolls the target heading behind the sticky header, which made it look like the click had jumped one section too far. The offset is now measured from the header that is actually rendered instead of an assumed 80px, and the entry you clicked is the one the TOC highlights.
- **Schema badge under worktree aggregation** — when changes are aggregated across worktrees, each change's schema is now compared against the default schema of the worktree it actually lives in, rather than the main worktree's. A change that uses its own worktree's default no longer shows a badge, and the list and detail views agree on this. Scanning also reads each worktree's `openspec/config.yaml` once instead of once per change.

Thanks to [@nthansen](https://github.com/nthansen) (Norman Hansen) for both.
