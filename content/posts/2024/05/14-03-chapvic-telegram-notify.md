---
title: Send notification to Telegram
date: 2024-05-14 03:34:11 +00:00
tags:
  - chapvic
  - GitHub Actions
draft: false
repo: chapvic/telegram-notify
marketplace: https://github.com/marketplace/actions/send-notification-to-telegram
version: v1.0.2
dependentsNumber: "?"
---


Version updated for **chapvic/telegram-notify** to version **v1.0.2**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/send-notification-to-telegram) to find the latest changes.

## Release notes

# v1.0.2

### Usage:

1. Save your Telegram bot token in secrets (for example - BOT_TOKEN)
2. Save your personal Chat ID or a Channel name in secrets (for example - CHAT_ID)
3. Add following step to the end of your workflow:
```yaml
    - name: Send notification to Telegram
      uses: chapvic/telegram-notify@v1.0.2
      if: always()
      with:
        token: ${{ secrets.TELEGRAM_BOT_TOKEN }}   # Token secret
        chat: ${{ secrets.TELEGRAM_CHAT_ID }}      # User ID or channel name secret
        status: ${{ job.status }}                  # Do not modify this line !!!
```

