---
title: PHP-Scoper Action
date: 2026-06-30 15:02:20 +00:00
tags:
  - WPTechnix
  - GitHub Actions
draft: false
repo: https://github.com/WPTechnix/php-scoper-action
marketplace: https://github.com/marketplace/actions/php-scoper-action
version: v1
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/WPTechnix/php-scoper-action** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/php-scoper-action) to find the latest changes.

## What's Changed

## 🚀 First Stable Release

This is the first public version of **PHP‑Scoper Action**, a GitHub Action that automatically scopes your PHP project with `humbug/php-scoper`.

### ✨ Features
- Run `php-scoper add-prefix` with a single step in your workflow
- Choose any PHP version (8.0, 8.1, 8.2, 8.3, …) via the `php-version` input
- Use any php‑scoper version (`dev-main`, `0.18.7`, etc.)
- Fast failure if your `scoper.inc.php` is missing
- Outputs the absolute path to the scoped build and the number of PHP files

### 📦 How to use
```yaml
- uses: WPTechnix/php-scoper-action@v1
  id: scoper
  with:
    php-version: '8.2'
    scoper-config: './scoper.inc.php'
    output-dir: 'scoped-build'
