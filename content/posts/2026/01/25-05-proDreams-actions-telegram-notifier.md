---
title: Rust Telegram Notify Action
date: 2026-01-25 05:43:20 +00:00
tags:
  - proDreams
  - GitHub Actions
draft: false
repo: https://github.com/proDreams/actions-telegram-notifier
marketplace: https://github.com/marketplace/actions/rust-telegram-notify-action
version: v2.2
dependentsNumber: "21"
---


Version updated for **https://github.com/proDreams/actions-telegram-notifier** to version **v2.2**.
- This action is used across all versions by **21** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rust-telegram-notify-action) to find the latest changes.

## Action Summary

The "Actions Telegram Notify" GitHub Action automates the process of sending customizable notifications to Telegram about the status of CI/CD Workflow executions in GitHub, Gitea, or other compatible systems. It helps teams track workflow events (e.g., success, failure, or cancellation) by delivering detailed updates, including commit or pull request links, directly to a specified Telegram chat. Key capabilities include support for various event types, enriched notification content, and integration with Telegram bots.

## Release notes

## What's Changed:

* Added multi-platform build support (including **ARM64**) using Docker matrix strategy.
* Added ability to specify a custom Bot API server via the optional `api_url` input. This is useful for using a [Local Bot API Server](https://core.telegram.org/bots/api#using-a-local-bot-api-server) to extend functionality (e.g., uploading large releases/artifacts).
* Updated `README.md` with new input parameters.
* **Special thanks** to @ardocrat for implementing these features (PR #11, #12).

---

## Изменения:

* Добавлена мультиплатформенная поддержка сборки (включая **ARM64**) с использованием matrix-стратегии.
* Добавлена возможность указать кастомный сервер Telegram Bot API через опциональный параметр `api_url`. Это полезно при использовании [Local Bot API Server](https://core.telegram.org/bots/api#using-a-local-bot-api-server) для расширения функционала (например, загрузки больших релизов/артефактов).
* Обновлён `README.md` с описанием новых параметров.
* **Особая благодарность** @ardocrat за реализацию этих функций (PR #11, #12).

**Full Changelog**: https://github.com/proDreams/actions-telegram-notifier/compare/v2.1...v2.2

## New Contributors
* @ardocrat made their first contribution in https://github.com/proDreams/actions-telegram-notifier/pull/13
