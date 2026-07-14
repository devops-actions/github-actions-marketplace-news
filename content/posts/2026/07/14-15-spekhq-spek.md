---
title: spek - OpenSpec Static Site
date: 2026-07-14 15:00:51 +00:00
tags:
  - spekhq
  - GitHub Actions
draft: false
repo: https://github.com/spekhq/spek
marketplace: https://github.com/marketplace/actions/spek-openspec-static-site
version: v1.8.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Spek is a lightweight, read-only viewer for OpenSpec content. It provides structured browsing with BDD syntax highlighting, task progress tracking, and full-text search capabilities. The action automates the process of viewing specs, changes, and tasks in an organized manner using OpenSpec data.
---


Version updated for **https://github.com/spekhq/spek** to version **v1.8.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/spek-openspec-static-site) to find the latest changes.

## Action Summary

Spek is a lightweight, read-only viewer for OpenSpec content. It provides structured browsing with BDD syntax highlighting, task progress tracking, and full-text search capabilities. The action automates the process of viewing specs, changes, and tasks in an organized manner using OpenSpec data.

## What's Changed


- **The Refresh button now actually refreshes.** The circular-arrow button at the bottom of the sidebar — previously labelled "Resync" — only rebuilt an internal cache. It never re-fetched what was on screen, so if you edited a file and pressed it, nothing happened; you had to navigate away and back before your change showed up. It now re-fetches, and it keeps spinning until the new data has actually arrived instead of stopping before it lands (which made a working refresh look like a broken one). Thanks to [@deniskrizanovic](https://github.com/deniskrizanovic) for reporting.
- **A dead live-update connection is no longer silent (Web).** spek normally refreshes on its own when files change, over a background connection that can drop without any outward sign. When it drops, the sidebar now says so and points you at Refresh, rather than leaving you staring at stale content with no indication that anything is wrong. **Note:** this makes the failure *visible*; it does not yet make the connection recover on its own. If auto-refresh stops, press Refresh.
- **IntelliJ: the Refresh button was completely dead.** The plugin's built-in server had no endpoint for it, so every click returned HTTP 404 and the frontend gave up silently. The endpoint now exists, and Refresh no longer depends on it succeeding.
- **IntelliJ: stopped a pointless background retry loop.** The webview mistook itself for the web app and kept reconnecting, forever, to a path the plugin's server never serves.
