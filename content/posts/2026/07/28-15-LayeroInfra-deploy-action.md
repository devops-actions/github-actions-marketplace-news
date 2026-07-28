---
title: Deploy to Layero
date: 2026-07-28 15:03:26 +00:00
tags:
  - LayeroInfra
  - GitHub Actions
draft: false
repo: https://github.com/LayeroInfra/deploy-action
marketplace: https://github.com/marketplace/actions/deploy-to-layero
version: v1.1.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the deployment process of a frontend application to Layero using CI/CD. It allows developers to deploy their applications directly from GitHub Actions, handling various build and configuration tasks such as environment settings, dependency management, and framework detection. The action supports different frameworks like Next.js, Vite, Astro, SvelteKit, and Nuxt, and can handle pre-built or custom builds. It also provides a way to specify the project and environment for deployment, ensuring clear communication between CI/CD pipelines and Layero's infrastructure management capabilities.
---


Version updated for **https://github.com/LayeroInfra/deploy-action** to version **v1.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deploy-to-layero) to find the latest changes.

## Action Summary

This GitHub Action automates the deployment process of a frontend application to Layero using CI/CD. It allows developers to deploy their applications directly from GitHub Actions, handling various build and configuration tasks such as environment settings, dependency management, and framework detection. The action supports different frameworks like Next.js, Vite, Astro, SvelteKit, and Nuxt, and can handle pre-built or custom builds. It also provides a way to specify the project and environment for deployment, ensuring clear communication between CI/CD pipelines and Layero's infrastructure management capabilities.

## What's Changed

Только документация, поведение не менялось.

**Что исправлено.** README предлагал делать превью пулл-реквестов через `on: [pull_request]` с `branch: pr-<n>` и утверждал, что продакшн при этом не затрагивается. Неверно и то и другое.

Action загружает архив, а бэкенд для архивных деплоев ставит `branch_name = "cli"` безусловно, ещё до проверки входа `branch` — то есть флаг принимается и молча игнорируется. У проекта, к которому на стороне Layero не подключён репозиторий, окружение `cli` и есть апекс, поэтому описанный workflow переопубликовывал **живой сайт на каждый пулл-реквест**. Именно такие проекты этот Action и обслуживает: его берут, когда сборке нужны CI-секреты и репозиторий к Layero не подключён.

Теперь в README таблица, что делает обычный запуск при подключённом и неподключённом репозитории, и прямое предупреждение не строить на этом PR-превью. Описания входов `prod` и `branch` в `action.yml` приведены в соответствие с кодом.

Тег `v1` передвинут сюда.
