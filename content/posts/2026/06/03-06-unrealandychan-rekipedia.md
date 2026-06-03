---
title: rekipedia — AI Codebase Wiki
date: 2026-06-03 06:47:16 +00:00
tags:
  - unrealandychan
  - GitHub Actions
draft: false
repo: https://github.com/unrealandychan/rekipedia
marketplace: https://github.com/marketplace/actions/rekipedia-ai-codebase-wiki
version: py/v0.21.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/unrealandychan/rekipedia** to version **py/v0.21.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rekipedia-ai-codebase-wiki) to find the latest changes.

## What's Changed

## 🐛 Bug Fixes

- **`reki search` always returned "No rekipedia DB"** — `search.py` was hardcoded to look for `.rekipedia/rekipedia.db` but `reki scan` writes `.rekipedia/store.db`. Fixed with `store.db`-first + `rekipedia.db` fallback for backward compat.
- **`reki export --format obsidian/graphml/cypher`** — same hardcoded old DB path bug in `export.py` (2 blocks). Fixed.
- **`reki search --all-repos`** — `cross_repo_search.py` never found any repos for the same reason. Fixed.
- **Wiki CI rebase conflicts** — wiki workflow was committing before pulling, causing merge conflicts in `docs/wiki/`. Fixed to stash → pull → stash pop → commit → push.

All three DB path fixes follow the same pattern as `hotspots`, `tour`, `affected`, and `impact` commands.
