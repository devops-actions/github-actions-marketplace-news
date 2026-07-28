---
title: PublishLoud PR Ship Note
date: 2026-07-28 14:47:18 +00:00
tags:
  - slingbiz
  - GitHub Actions
draft: false
repo: https://github.com/slingbiz/publishloud-pr-ship-note
marketplace: https://github.com/marketplace/actions/publishloud-pr-ship-note
version: v1.0.2
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the creation of professional ship-note drafts for pull requests in your repository, helping you to maintain consistent communication with your users and followers without having to manually draft each email or post. It supports sending both X and LinkedIn ship-notes and provides one-click links to your PublishLoud desk for easy publishing. The action is triggered on merge or open events by default but can be customized to trigger on specific actions.
---


Version updated for **https://github.com/slingbiz/publishloud-pr-ship-note** to version **v1.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/publishloud-pr-ship-note) to find the latest changes.

## Action Summary

This GitHub Action automates the creation of professional ship-note drafts for pull requests in your repository, helping you to maintain consistent communication with your users and followers without having to manually draft each email or post. It supports sending both X and LinkedIn ship-notes and provides one-click links to your PublishLoud desk for easy publishing. The action is triggered on merge or open events by default but can be customized to trigger on specific actions.

## What's Changed

## PublishLoud PR Ship Note v1.0.2

- Branded GitHub App support for PR comments (optional)
- Fixes so comments post on PR pushes (`synchronize`)
- Clearer ship-note copy in PR comments

### Install
https://github.com/marketplace/actions/publishloud-pr-ship-note

```yaml
- uses: slingbiz/publishloud-pr-ship-note@v1
  with:
    api-key: ${{ secrets.PUBLISHLOUD_API_KEY }}
    github-token: ${{ github.token }}
