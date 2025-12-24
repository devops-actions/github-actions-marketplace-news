---
title: Notify Me Through Telegram
date: 2025-12-24 21:10:16 +00:00
tags:
  - Snr1s3
  - GitHub Actions
draft: false
repo: https://github.com/Snr1s3/notify-telegram-action
marketplace: https://github.com/marketplace/actions/notify-me-through-telegram
version: v1.0.3
dependentsNumber: "?"
---


Version updated for **https://github.com/Snr1s3/notify-telegram-action** to version **v1.0.3**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/notify-me-through-telegram) to find the latest changes.

## Action Summary

This GitHub Action, *Notify Me Through Telegram*, automates the process of sending real-time Telegram notifications when a workflow completes. It provides clear, Markdown-formatted messages containing details such as repository name, workflow status, and other contextual information, helping developers monitor CI/CD results efficiently. By integrating with Telegram, it simplifies communication and ensures users stay informed about workflow outcomes without manual checks.

## Release notes

🐛 Bug fix

Fixed an issue where the action failed to load due to invalid use of the github context in action.yml

The action now works correctly when referenced via uses: in any workflow

✨ Improvements

Converted to a composite GitHub Action

Accepts a pre-built message input, allowing full customization from the calling workflow

Fully compatible with workflow_run triggered workflows

✅ Usage example
```
- uses: Snr1s3/notify-telegram-action@v1.0.2
  with:
    telegram_token: ${{ secrets.TELEGRAM_BOT_TOKEN }}
    telegram_chat_id: ${{ secrets.TELEGRAM_CHAT_ID }}
    message: |
      🔔 *${{ github.repository }}*
      Workflow: ${{ github.event.workflow_run.name }}
      Status: ${{ github.event.workflow_run.conclusion }}
```

🔒 Security & reliability

No GitHub context evaluated at action load time

Secrets are handled only at runtime
