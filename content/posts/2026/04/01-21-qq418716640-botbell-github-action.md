---
title: BotBell Notify & Approve
date: 2026-04-01 21:56:00 +00:00
tags:
  - qq418716640
  - GitHub Actions
draft: false
repo: https://github.com/qq418716640/botbell-github-action
marketplace: https://github.com/marketplace/actions/botbell-notify-approve
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/qq418716640/botbell-github-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/botbell-notify-approve) to find the latest changes.

## Action Summary

The **BotBell GitHub Action** sends pipeline notifications and approval requests directly to your mobile device via the BotBell app. It automates the process of notifying users about build results and enables manual approval gates for actions like deployments, eliminating the need for browser-based approvals. Key features include customizable notifications, approval buttons, timeout handling, and real-time delivery and response tracking.

## What's Changed

Initial release of BotBell GitHub Action.

**Features:**
- Send push notifications to your phone on build success/failure
- Approval gate — pause workflow and wait for your approval via phone
- Supports action buttons for quick approve/reject

**Usage:**
```yaml
- uses: qq418716640/botbell-github-action@v1
  with:
    token: ${{ secrets.BOTBELL_TOKEN }}
    message: "Build completed!"
```

See [README](https://github.com/qq418716640/botbell-github-action#readme) for full documentation.
