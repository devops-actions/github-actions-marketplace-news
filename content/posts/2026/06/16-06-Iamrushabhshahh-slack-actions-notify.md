---
title: Slack Actions Notify
date: 2026-06-16 06:58:06 +00:00
tags:
  - Iamrushabhshahh
  - GitHub Actions
draft: false
repo: https://github.com/Iamrushabhshahh/slack-actions-notify
marketplace: https://github.com/marketplace/actions/slack-actions-notify
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Iamrushabhshahh/slack-actions-notify** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/slack-actions-notify) to find the latest changes.

## What's Changed

A GitHub Action for rich Slack notifications with start→update threading, duration tracking, and timezone support.

  ## What's included

  **Threading** — Post one message when the workflow starts, then edit it in-place with the final status and duration. No duplicate messages in Slack.

  **Auth options** — Bot token (`xoxb-…`) for threading, or an incoming webhook URL for simple one-shot notifications.

  **Custom content**
  - `title` — override the notification header
  - `message` — add a body below the fields
  - `message_on_success` / `message_on_failure` / `message_on_cancel` — per-status copy
  - `mention` — prepend `@here`, `@channel`, or a user mention

  **Appearance**
  - `username`, `icon_emoji`, `icon_url` — custom bot name and icon
  - `minimal` — strip metadata, show only branch/commit/status

  **Timezone support** — Display timestamps in any valid tz (e.g. `Asia/Kolkata`). Falls back to UTC if invalid.

  ## Quick start

  ```yaml
  - uses: Iamrushabhshahh/slack-actions-notify@v1
    with:
      slack_channel: ${{ secrets.SLACK_CHANNEL_ID }}
      slack_token: ${{ secrets.SLACK_BOT_TOKEN }}
   ```
   
  Full docs and examples in the [README](https://github.com/Iamrushabhshahh/slack-actions-notify#readme).
