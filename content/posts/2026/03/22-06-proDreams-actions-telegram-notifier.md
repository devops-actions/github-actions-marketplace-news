---
title: Rust Telegram Notify Action
date: 2026-03-22 06:04:11 +00:00
tags:
  - proDreams
  - GitHub Actions
draft: false
repo: https://github.com/proDreams/actions-telegram-notifier
marketplace: https://github.com/marketplace/actions/rust-telegram-notify-action
version: v2.3
dependentsNumber: "23"
actionType: Docker
---


Version updated for **https://github.com/proDreams/actions-telegram-notifier** to version **v2.3**.
- This action is used across all versions by **23** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rust-telegram-notify-action) to find the latest changes.

## Action Summary

This GitHub Action, *Actions Telegram Notify*, automates the process of sending customizable notifications to Telegram about the status of CI/CD workflow executions in GitHub, Gitea, or compatible systems. It supports events like push, pull request, and workflow dispatch, and can include details such as commit author, repository, and workflow name, along with links to commits or pull requests. This action simplifies workflow monitoring by providing real-time updates directly to a specified Telegram chat or group.

## Release notes

**What's Changed:**
* Added ability to route requests through a proxy server via the new optional `proxy_url` input.
* Supports HTTP, HTTPS, and SOCKS5 proxy protocols.
* Updated `action.yml` and `README.md` with the new input parameter.

---

**Изменения:**
* Добавлена возможность маршрутизации запросов через прокси-сервер с помощью нового опционального параметра `proxy_url`.
* Добавлена поддержка протоколов HTTP, HTTPS и SOCKS5 прокси.
* Обновлены `action.yml` и `README.md` с описанием нового параметра.

**Full Changelog**: https://github.com/proDreams/actions-telegram-notifier/compare/v2.2...v2.3
