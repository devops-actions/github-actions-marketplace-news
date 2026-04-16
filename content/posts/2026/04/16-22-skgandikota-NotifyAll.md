---
title: Webhook Notify
date: 2026-04-16 22:12:14 +00:00
tags:
  - skgandikota
  - GitHub Actions
draft: false
repo: https://github.com/skgandikota/NotifyAll
marketplace: https://github.com/marketplace/actions/webhook-notify
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/skgandikota/NotifyAll** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/webhook-notify) to find the latest changes.

## Action Summary

The **NotifyAll GitHub Action** automates the process of sending notifications to Slack, Discord, or Microsoft Teams using webhook URLs. It simplifies cross-platform communication by providing a unified interface that auto-detects the messaging platform from the webhook URL, enabling consistent notifications with customizable titles, messages, statuses, and additional fields. This action is ideal for integrating real-time updates, such as deployment statuses or build alerts, into team communication workflows.

## What's Changed

## What it does
Send rich notifications to Slack, Discord, or Microsoft Teams through a single unified interface. Auto-detects platform from webhook URL.

## Highlights
- Auto-detect Slack, Discord, and Teams from URL
- Status-aware colors and emoji: `success` `failure` `warning` `info`
- Custom key-value fields and footer
- One interface — swap platforms by changing the webhook URL

## Quick Start
```yaml
- uses: skgandikota/NotifyAll@v1
  with:
    webhook_url: ${{ secrets.SLACK_WEBHOOK }}
    title: "Deploy Complete"
    status: "success"
    fields: "{\"Version\": \"v2.0.0\", \"Env\": \"production\"}"
```

**Full docs →** [README](https://github.com/skgandikota/NotifyAll#readme)
