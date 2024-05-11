---
title: Simple Telegram send
date: 2024-05-11 11:28:35 +00:00
tags:
  - opa-oz
  - GitHub Actions
draft: false
repo: opa-oz/simple-telegram-send
marketplace: https://github.com/marketplace/actions/simple-telegram-send
version: v1
dependentsNumber: "?"
---


Version updated for **opa-oz/simple-telegram-send** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/simple-telegram-send) to find the latest changes.

## Release notes

# Simple Telegram send

**Full Changelog**: https://github.com/opa-oz/simple-telegram-send/commits/v1

Send it straightforwardly to Telegram
- [x] No Dockerfile / Docker-image
- [x] No external dependencies (works with vanilla actions runner)
- [x] ~No functionality~ Simple to use! 🥳

## Usage
```yaml
- name: Simple Telegram send
  uses: yakubique/simple-telegram-send@v1
  with:
    token: ${{ secrets.TELEGRAM_TOKEN }}
    to: ${{ secrets.TELEGRAM_CHAT_ID }}
    message: "Hello, world!"

```

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|  INPUT  |  TYPE  | REQUIRED |                DEFAULT                 |                           DESCRIPTION                           |
|---------|--------|----------|----------------------------------------|-----------------------------------------------------------------|
|  token  | string |   true   |                                        |               Telegram bot's authorization token.               |
|   to    | string |   true   |                                        | Unique identifier or username of the <br>target Telegram chat.  |
| message | string |  false   | `"Ping from ${{ github.repository }}"` |                      Text message to send.                      |

<!-- AUTO-DOC-INPUT:END -->


----

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/S6S1UZ9P7)

