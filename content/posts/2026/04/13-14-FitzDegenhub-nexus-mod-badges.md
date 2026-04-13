---
title: Nexus Mod Badges
date: 2026-04-13 14:20:59 +00:00
tags:
  - FitzDegenhub
  - GitHub Actions
draft: false
repo: https://github.com/FitzDegenhub/nexus-mod-badges
marketplace: https://github.com/marketplace/actions/nexus-mod-badges
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/FitzDegenhub/nexus-mod-badges** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nexus-mod-badges) to find the latest changes.

## Action Summary

This GitHub Action generates live badges using shields.io to display Nexus Mods statistics, such as download counts, unique downloads, and endorsements, on GitHub profiles or repositories. It automates the process of fetching mod stats from the Nexus Mods API, updating them via GitHub Gists, and rendering them as dynamic badges. This solves the lack of shields.io support for Nexus Mods and enables effortless integration of real-time mod metrics into GitHub documentation.

## What's Changed

## Nexus Mod Badges v1.0.0

GitHub Action that creates live shields.io badges from Nexus Mods stats.

### Features
- **Downloads**, **unique downloads**, and **endorsements** badges
- Nexus Mods vortex logo embedded directly (works despite simple-icons removing it in v16)
- **Logo options**: icon + text, icon only, text only, or none
- Auto-formatted numbers (1.2k, 5.3M)
- Custom colors and labels
- Multiple mods in a single workflow
- Beginner-friendly setup guide

### Quick Start

```yaml
- uses: FitzDegenhub/nexus-mod-badges@v1
  with:
    nexus_api_key: ${{ secrets.NEXUS_API_KEY }}
    game: crimsondesert
    mod_id: 438
    gist_id: YOUR_GIST_ID
    gist_token: ${{ secrets.GIST_TOKEN }}
```

See the [README](https://github.com/FitzDegenhub/nexus-mod-badges#setup-guide) for the full setup guide.
