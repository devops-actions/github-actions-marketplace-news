---
title: Zoom to Markdown
date: 2025-12-08 05:19:57 +00:00
tags:
  - sionsmith
  - GitHub Actions
draft: false
repo: https://github.com/sionsmith/zoom-to-markdown
marketplace: https://github.com/marketplace/actions/zoom-to-markdown
version: v1.1.0
dependentsNumber: "?"
---


Version updated for **https://github.com/sionsmith/zoom-to-markdown** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zoom-to-markdown) to find the latest changes.

## Release notes

# Zoom to Markdown v1.1.0

Archive Zoom AI Companion meeting summaries as Markdown files for Claude Desktop.

## What's New

- **Renamed to Zoom to Markdown** - Cleaner, more descriptive name
- **Claude Desktop Integration** - Documentation for using with Claude Desktop
- **Improved Documentation** - Comprehensive README with setup instructions

## Quick Start

```yaml
- uses: sionsmith/zoom-to-markdown@v1
  with:
    zoom-account-id: ${{ secrets.ZOOM_ACCOUNT_ID }}
    zoom-client-id: ${{ secrets.ZOOM_CLIENT_ID }}
    zoom-client-secret: ${{ secrets.ZOOM_CLIENT_SECRET }}
    zoom-user-id: ${{ secrets.ZOOM_USER_ID }}
```

## Required Secrets

- `ZOOM_ACCOUNT_ID` - From Zoom OAuth app
- `ZOOM_CLIENT_ID` - From Zoom OAuth app
- `ZOOM_CLIENT_SECRET` - From Zoom OAuth app
- `ZOOM_USER_ID` - Your Zoom email address

## Requirements

- Zoom account with **AI Companion** enabled
- Zoom **Server-to-Server OAuth** app with scopes:
  - `meeting_summary:read:admin`
  - `report:read:meeting:admin`

**Full Changelog**: https://github.com/sionsmith/zoom-to-markdown/compare/v1.0.0...v1.1.0
