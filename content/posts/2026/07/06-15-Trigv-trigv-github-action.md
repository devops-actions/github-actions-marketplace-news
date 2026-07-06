---
title: Trigv
date: 2026-07-06 15:22:25 +00:00
tags:
  - Trigv
  - GitHub Actions
draft: false
repo: https://github.com/Trigv/trigv-github-action
marketplace: https://github.com/marketplace/actions/trigv
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/Trigv/trigv-github-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/trigv) to find the latest changes.

## What's Changed

First public release of the official Trigv GitHub Action.

Send a native push notification when a workflow succeeds or fails — one step, no curl.

Requirements: Trigv account, API key, Trigv for iOS on your phone.

```yaml
- uses: Trigv/trigv-github-action@v1.0.0
  with:
    api-key: ${{ secrets.TRIGV_API_KEY }}
    channel: ci
    title: Workflow failed
    level: error
```

Docs: https://trigv.com/docs/learn/github-actions/
