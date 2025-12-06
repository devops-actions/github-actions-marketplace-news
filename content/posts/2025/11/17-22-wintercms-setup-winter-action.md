---
title: Setup Winter
date: 2025-11-17 22:06:29 +00:00
tags:
  - wintercms
  - GitHub Actions
draft: false
repo: https://github.com/wintercms/setup-winter-action
marketplace: https://github.com/marketplace/actions/setup-winter
version: v1.1.0
dependentsNumber: "?"
---


Version updated for **https://github.com/wintercms/setup-winter-action** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-winter) to find the latest changes.

## Release notes

### New features

- You may now configure a fully-working temporary install of Winter using this Action, by using the `configure-winter` and `admin-password` properties. This will run the Artisan commands `winter:env` and `key:generate`, and will set up a temporary SQLite database and admin account with the provided password (or `admin` by default) 
