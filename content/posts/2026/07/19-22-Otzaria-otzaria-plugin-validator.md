---
title: Otzaria Plugin Validator
date: 2026-07-19 22:10:57 +00:00
tags:
  - Otzaria
  - GitHub Actions
draft: false
repo: https://github.com/Otzaria/otzaria-plugin-validator
marketplace: https://github.com/marketplace/actions/otzaria-plugin-validator
version: v1.9.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  The GitHub Action validates and automatically publishes an Otzaria plugin to the store upon pushing changes to the main branch, ensuring that only updates are published after approval from store administrators. It supports multiple plugins in a monorepo and requires API reference URLs for dynamic validation. The action can run as a pull_request check without publishing by default, but requires secrets for automated publication.
---


Version updated for **https://github.com/Otzaria/otzaria-plugin-validator** to version **v1.9.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/otzaria-plugin-validator) to find the latest changes.

## Action Summary

The GitHub Action validates and automatically publishes an Otzaria plugin to the store upon pushing changes to the main branch, ensuring that only updates are published after approval from store administrators. It supports multiple plugins in a monorepo and requires API reference URLs for dynamic validation. The action can run as a pull_request check without publishing by default, but requires secrets for automated publication.

## What's Changed

- אירועי lifecycle חדשים ברשימת האירועים המוכרים: plugin.suspended, plugin.resumed, plugin.page_opened
- מתודות שנוספו: app.openUrl (0.9.95), plugin.openSelf (0.9.96) כולל מיפויי גרסה והרשאה
- הרשאות שנוספו: app.open_url, fs.user_files.read, network.localhost
- network.localhost מספק כעת את דרישת ההרשאה של network.fetch/download (תוקנה אזהרת שווא)
- מיפוי הרשאה ל-ui.pickFolder ולמתודות fs.*
- בדיקות רגרסיה חדשות לכל האמור
