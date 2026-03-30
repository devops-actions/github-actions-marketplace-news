---
title: Rust Telegram Notify Action
date: 2026-03-30 06:15:16 +00:00
tags:
  - proDreams
  - GitHub Actions
draft: false
repo: https://github.com/proDreams/actions-telegram-notifier
marketplace: https://github.com/marketplace/actions/rust-telegram-notify-action
version: v2.4
dependentsNumber: "23"
actionType: Docker
---


Version updated for **https://github.com/proDreams/actions-telegram-notifier** to version **v2.4**.

- This action is used across all versions by **23** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rust-telegram-notify-action) to find the latest changes.

## Action Summary

This GitHub Action, **Actions Telegram Notify**, automates the process of sending customizable notifications to Telegram about the status of CI/CD workflow executions in GitHub Actions or compatible systems. It helps developers monitor workflow events, such as push, pull request, and workflow dispatch, by providing real-time updates on success, failure, or cancellation, along with additional context like commit details and links to relevant resources. This action simplifies workflow tracking and improves team communication by integrating CI/CD updates directly into Telegram.

## What's Changed

## What's Changed:

  * Added support for the `pull_request_review` event trigger.
  * Distinct notifications for PR reviews based on their state: Approved (✅), Changes Requested (❌), and Commented (💬).
  * Included truncated review comments directly in the Telegram notification for quick context.
  * Added a new inline keyboard button "↗️ Link to Review" that routes the user directly to the specific comment/review anchor.
  * Updated `README.md` and `README-RU.MD` with examples of the new event trigger.

## New Contributors
* @ZAlexanderV made their first contribution in https://github.com/proDreams/actions-telegram-notifier/pull/15

**Full Changelog**: https://github.com/proDreams/actions-telegram-notifier/compare/v2.3...v2.4

-----

## Изменения:

  * Добавлена поддержка события `pull_request_review`.
  * Уведомления теперь различаются в зависимости от статуса ревью: Approved (✅), Changes Requested (❌) и Commented (💬).
  * Текст комментария (с ограничением по длине) теперь отображается прямо в уведомлении Telegram для быстрого понимания контекста.
  * Добавлена новая inline-кнопка "↗️ Link to Review", которая ведет прямо на конкретный комментарий или статус аппрува в PR.
  * Обновлены файлы `README.md` и `README-RU.MD` с примерами использования нового триггера.

