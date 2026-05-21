---
title: Telegram Release Notify via Curl
date: 2026-05-21 06:42:43 +00:00
tags:
  - nekrasovp
  - GitHub Actions
draft: false
repo: https://github.com/nekrasovp/telegram-release-notify
marketplace: https://github.com/marketplace/actions/telegram-release-notify-via-curl
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/nekrasovp/telegram-release-notify** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/telegram-release-notify-via-curl) to find the latest changes.

## Action Summary

This GitHub Action automates the process of sending Telegram notifications whenever a GitHub Release is published. It uses the Telegram Bot API and `curl` to deliver messages containing key release details, such as title, repository name, author, tag, and URL, along with optional release notes. By eliminating the need for servers, Docker, or complex dependencies, it simplifies release communication, making it ideal for projects seeking lightweight, instant notification solutions.

## What's Changed

Initial public release.

### Added

- Bash/curl composite GitHub Action.
- Telegram Bot API `sendMessage` integration.
- Release notification generated from `release.published` context.
- Custom message support.
- Telegram forum topic support through `message-thread-id`.
- Silent notifications through `disable-notification`.
- Link preview disabling through `link_preview_options`.
- Protected content option.
- Message/body truncation safeguards.
- Local smoke tests using fake `curl`.
- Telegram setup, troubleshooting, and usage examples.
