---
title: Snipe PR — AI PR Descriptions
date: 2026-03-17 13:36:22 +00:00
tags:
  - klawgulp-ship-it
  - GitHub Actions
draft: false
repo: https://github.com/klawgulp-ship-it/snipe-pr
marketplace: https://github.com/marketplace/actions/snipe-pr-ai-pr-descriptions
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/klawgulp-ship-it/snipe-pr** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/snipe-pr-ai-pr-descriptions) to find the latest changes.

## Action Summary

Snipe PR is a GitHub Action that automates the generation of structured and readable pull request descriptions by analyzing diffs and categorizing changes (e.g., API, UI, Tests). It helps teams save time by reducing the manual effort of writing PR summaries, while providing key insights like change types, file highlights, and visual statistics. The action supports both local processing and optional AI-powered enhanced descriptions for improved context and detail.

## Release notes

## Snipe PR v1.0.0 ⚡

Auto-generated PR descriptions that actually make sense.

### Features
- Smart change type detection (feature, bugfix, refactor, docs, tests, config)
- File categorization (API, UI, Tests, Config, Dependencies, etc.)
- Visual stats bar (additions vs deletions)
- Key highlights (new files, large changes, renames)
- Idempotent updates (re-runs update existing comment)
- Two modes: PR comment or PR body update

### Quick Start
```yaml
- uses: klawgulp-ship-it/snipe-pr@v1
  with:
    github-token: ${{ secrets.GITHUB_TOKEN }}
```

### Pro (AI-Powered)
Add a SnipeLink API key for smarter, context-aware descriptions:
```yaml
- uses: klawgulp-ship-it/snipe-pr@v1
  with:
    github-token: ${{ secrets.GITHUB_TOKEN }}
    snipelink-key: ${{ secrets.SNIPELINK_KEY }}
```

Get your key at [snipelink.com/tools](https://snipelink.com/tools)

---
Built by [SnipeLink LLC](https://snipelink.com)
