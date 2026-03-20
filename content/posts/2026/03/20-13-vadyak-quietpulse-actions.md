---
title: QuietPulse Heartbeat
date: 2026-03-20 13:36:12 +00:00
tags:
  - vadyak
  - GitHub Actions
draft: false
repo: https://github.com/vadyak/quietpulse-actions
marketplace: https://github.com/marketplace/actions/quietpulse-heartbeat
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/vadyak/quietpulse-actions** to version **v1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/quietpulse-heartbeat) to find the latest changes.

## Action Summary

The QuietPulse Heartbeat GitHub Action automates the process of sending heartbeat pings to QuietPulse, enabling monitoring of scheduled tasks and cron jobs. It helps ensure task reliability by providing instant notifications via Telegram or Email if a task fails or is missed. Key capabilities include configurable grace periods, timeout settings, and detailed status outputs for better visibility and error handling.

## Release notes

Initial release. Sends GET request to QuietPulse `/ping/:token`.

Usage:
```yaml
- uses: vadyak/quietpulse-actions@v1
  with:
    endpoint_token: ${{ secrets.QUIETPULSE_TOKEN }}
```

Docs: https://github.com/vadyak/quietpulse-actions/blob/master/README.md
