---
title: Gong to GitHub Sync
date: 2026-01-05 05:49:59 +00:00
tags:
  - sderosiaux
  - GitHub Actions
draft: false
repo: https://github.com/sderosiaux/gong-to-github
marketplace: https://github.com/marketplace/actions/gong-to-github-sync
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/sderosiaux/gong-to-github** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gong-to-github-sync) to find the latest changes.

## Action Summary

The "Gong to GitHub Sync" GitHub Action automates the process of syncing Gong call transcripts to a GitHub repository as organized, searchable Markdown files. It enables users to incrementally sync transcripts, structure them by client, and include metadata like timestamps, participants, and call details. This action solves the problem of making Gong transcripts accessible, version-controlled, and AI-ready, facilitating team collaboration, searchability, and integration with analysis workflows.

## Release notes

## Gong to GitHub Sync v1.0.0

Sync Gong call transcripts to GitHub as searchable Markdown files.

### Features

- **GitHub Action** for automated sync via workflow
- **CLI tool** for local/manual use
- Incremental sync (only new calls since last sync)
- Per-client folder organization with README index
- Full transcript with speaker names and timestamps
- Participant metadata (role, affiliation)
- Gong links for quick access

### Usage

```yaml
- uses: sderosiaux/gong-to-github@v1
  with:
    gong_access_key: ${{ secrets.GONG_ACCESS_KEY }}
    gong_secret_key: ${{ secrets.GONG_SECRET_KEY }}
```

See [README](https://github.com/sderosiaux/gong-to-github#readme) for full documentation.
