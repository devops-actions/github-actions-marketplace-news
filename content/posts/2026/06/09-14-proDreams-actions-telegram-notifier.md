---
title: Rust Telegram Notify Action
date: 2026-06-09 14:49:41 +00:00
tags:
  - proDreams
  - GitHub Actions
draft: false
repo: https://github.com/proDreams/actions-telegram-notifier
marketplace: https://github.com/marketplace/actions/rust-telegram-notify-action
version: v3.0.0
dependentsNumber: "24"
actionType: Docker
---


Version updated for **https://github.com/proDreams/actions-telegram-notifier** to version **v3.0.0**.

- This action is used across all versions by **24** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rust-telegram-notify-action) to find the latest changes.

## What's Changed

## What's Changed:

* **GitLab CI/CD support** — the action now auto-detects your CI provider (GitHub Actions / GitLab CI/CD) and adapts event parsing. No configuration changes needed.
* Supported GitLab events: `push`, `tag push`, `merge_request`, manual/web/schedule/trigger pipeline.
* Architecture rewrite — introduced `EventDetails`, a provider-agnostic intermediate representation that decouples event parsing from message formatting. Both providers share the same notification templates and keyboard generation.
* Completely backward compatible — all existing GitHub Actions workflows continue to work without changes.
* Added `gitlab-ci.example.yml` with ready-to-use configuration examples.

**Full Changelog**: https://github.com/proDreams/actions-telegram-notifier/compare/v2.4...v3.0.0

-----

## Изменения:

* **Поддержка GitLab CI/CD** — action автоматически определяет CI-провайдера (GitHub Actions / GitLab CI/CD) и переключает режим парсинга событий. Никаких изменений в конфигурации не требуется.
* Поддерживаемые события GitLab: `push`, `tag push`, `merge_request`, ручной/web/schedule/trigger pipeline.
* Архитектурный рефакторинг — введён `EventDetails`, провайдер-независимое промежуточное представление событий. GitHub и GitLab теперь используют общие шаблоны уведомлений и генерацию кнопок.
* Полная обратная совместимость — все существующие GitHub Actions Workflow продолжают работать без изменений.
* Добавлен `gitlab-ci.example.yml` с готовыми примерами конфигурации.



