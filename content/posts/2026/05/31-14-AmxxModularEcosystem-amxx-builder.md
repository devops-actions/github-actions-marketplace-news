---
title: amxx-builder
date: 2026-05-31 14:41:59 +00:00
tags:
  - AmxxModularEcosystem
  - GitHub Actions
draft: false
repo: https://github.com/AmxxModularEcosystem/amxx-builder
marketplace: https://github.com/marketplace/actions/amxx-builder
version: v1.3.0
dependentsNumber: "2"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/AmxxModularEcosystem/amxx-builder** to version **v1.3.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/amxx-builder) to find the latest changes.

## Action Summary

The `amxx-builder` GitHub Action is a CLI tool designed to automate the build, packaging, and deployment of AMX Mod X servers. It simplifies plugin management by reading a configuration file (`amxbuild.yml`), cloning repositories, compiling `.sma` files into `.amxx`, and packaging the output into a deployable `.zip` file. Key features include automated dependency management, customizable build and deployment workflows, support for local and remote assets, and robust caching for efficient builds.

## What's Changed

- Исправлена отправка команд через rcon при деплое
- Добавлен источник ассетов `local` (вместо хардкода, теперь можно более гибко управлять локальными ассетами)
- Добавлено поле `plugins` для управлением компиляцией отдельных плагинов по маске
- Обновлены стабы для `init` и дефолтные значения

**Full Changelog**: https://github.com/AmxxModularEcosystem/amxx-builder/compare/v1.2...v1.3.0
