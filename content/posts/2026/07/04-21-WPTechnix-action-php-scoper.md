---
title: PHP Scoper GitHub Action
date: 2026-07-04 21:49:37 +00:00
tags:
  - WPTechnix
  - GitHub Actions
draft: false
repo: https://github.com/WPTechnix/action-php-scoper
marketplace: https://github.com/marketplace/actions/php-scoper-github-action
version: v1.0.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/WPTechnix/action-php-scoper** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/php-scoper-github-action) to find the latest changes.

## What's Changed

## v1.0.0 — Initial Release

A GitHub Action that runs [PHP-Scoper](https://github.com/humbug/php-scoper) to prefix PHP namespaces, preventing dependency conflicts when distributing PHP code as PHARs, WordPress plugins, or Composer libraries.

### Features

- **Docker-based action** built on `humbugphp/php-scoper:0.18.19` with Composer 2 baked in
- **Automatic dependency installation** — runs `composer install` before scoping (configurable)
- **5 configurable inputs**: `working-directory`, `scoper-config`, `run-composer-install`, `composer-args`, `output-directory`
- **Graceful fallbacks** when `scoper.inc.php` or `composer.json` are missing
- **2 outputs**: `output-path` (absolute path to scoped files) and `count-scoped` (file count)
- **Proper CI/CD annotations** — uses `::error::` and `::warning::` for clear workflow logs
- **Dependabot integration** for automated Docker/Actions dependency updates

### What It Solves

PHP distributable code (plugins, libraries, PHARs) often bundles third-party dependencies that can clash with the same dependencies loaded by the host application. This action automates PHP-Scoper's namespace prefixing so every build produces isolated, conflict-free code.

See the [README](https://github.com/wptechnix/php-scoper-action) for usage examples and full reference.
