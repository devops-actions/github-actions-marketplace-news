---
title: Send notification to Telegram
date: 2024-05-13 11:33:01 +00:00
tags:
  - chapvic
  - GitHub Actions
draft: false
repo: chapvic/telegram-notify
marketplace: https://github.com/marketplace/actions/send-notification-to-telegram
version: v1.0.1
dependentsNumber: "?"
---


Version updated for **chapvic/telegram-notify** to version **v1.0.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/send-notification-to-telegram) to find the latest changes.

## Release notes

# v1.0.1

### Usage:

1. Save your Telegram bot token in secrets (for example, as BOT_TOKEN)
2. Save your personal Chat ID or a Channel name in secrets (for example, as CHAT_ID)
3. Add following step to the end of your workflow:
```yaml
    - name: Send notification to Telegram
      uses: chapvic/telegram-notify@master
      if: always()
      with:
        chat: ${{ secrets.chat }}      # User ID or channel name secret
        token: ${{ secrets.token }}    # Token secret
        status: ${{ job.status }}      # Do not modify this line !!!
```
### Notes:
```
Removed "server" variable (it's autodetected)
```

**Full Changelog**: https://github.com/chapvic/telegram-notify/compare/v1.0.0...v1.0.1
