---
title: GSC Indexer
date: 2026-07-20 23:10:42 +00:00
tags:
  - toolsura
  - GitHub Actions
draft: false
repo: https://github.com/toolsura/gsc-indexer
marketplace: https://github.com/marketplace/actions/gsc-indexer
version: v1
dependentsNumber: "0"
actionType: Docker
actionSummary: |
  The GitHub Action `toolsura/gsc-indexer` re-indexes URLs via the Google Search Console URL Inspection API. It automates the process of pushing blog pages into or refreshing them in the index when at least "site full user" rights are held on the property. The action can handle single URLs, batch files, and sitemaps, providing a way to track indexed vs not over time with `-report`/`-diff`. It is also published as a GitHub Action, enabling CI re-indexing of blog content directly from pushes to the repository.
---


Version updated for **https://github.com/toolsura/gsc-indexer** to version **v1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gsc-indexer) to find the latest changes.

## Action Summary

The GitHub Action `toolsura/gsc-indexer` re-indexes URLs via the Google Search Console URL Inspection API. It automates the process of pushing blog pages into or refreshing them in the index when at least "site full user" rights are held on the property. The action can handle single URLs, batch files, and sitemaps, providing a way to track indexed vs not over time with `-report`/`-diff`. It is also published as a GitHub Action, enabling CI re-indexing of blog content directly from pushes to the repository.

## What's Changed

## gsc-indexer v1 — now a GitHub Action

`gsc-indexer` is a CLI that submits URLs to Google Search Console's URL Inspection API to request (re)indexing — built by [ToolSura](https://www.toolsura.com), a privacy-first collection of free online tools.

### Features
- Submit individual URLs, a `--urls` list, or a whole `--sitemap`
- `--delay` between requests, `--quiet` mode, `--limit` to cap submissions
- `--dry-run` to preview, `--report` / `--diff` for change tracking
- Docker-based GitHub Action — drop it into any CI workflow

### Why
Stop manually pinging the GSC console after every deploy. Add the action to your workflow and your new URLs get inspected automatically.

Learn more and read the full guides on the [ToolSura blog](https://www.toolsura.com/blog/).
