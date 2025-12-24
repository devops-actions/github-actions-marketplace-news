---
title: Sync Azure SWA Environment Settings
date: 2025-12-24 21:11:01 +00:00
tags:
  - jamesconsultingllc
  - GitHub Actions
draft: false
repo: https://github.com/jamesconsultingllc/sync-swa-settings-action
marketplace: https://github.com/marketplace/actions/sync-azure-swa-environment-settings
version: v1.1.0
dependentsNumber: "?"
---


Version updated for **https://github.com/jamesconsultingllc/sync-swa-settings-action** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sync-azure-swa-environment-settings) to find the latest changes.

## Action Summary

The "Sync Azure SWA Settings Action" is a GitHub Action designed to automate the synchronization of app settings between different Azure Static Web App environments. It supports one-way and two-way sync modes, with options to add, update, or preserve settings selectively. This action simplifies the management of environment-specific configurations, ensuring consistency across development, staging, and production environments while offering advanced features like environment pattern matching and detailed logging.

## Release notes

## What's New

### 🚫 Development-Only Settings

Settings prefixed with \DEVELOPMENT_\ are now automatically excluded when syncing to production environments.

This allows you to maintain development-specific configurations (debug flags, test endpoints, feature toggles) that:
- ✅ Sync freely between development and preview slots
- ❌ Never get copied to production

### Behavior

| Source | Target | Setting | Action |
|--------|--------|---------|--------|
| development | preview | \DEVELOPMENT_DEBUG=true\ | ✅ Synced |
| preview | development | \DEVELOPMENT_DEBUG=true\ | ✅ Synced |
| development | **production** | \DEVELOPMENT_DEBUG=true\ | ⏭️ SKIP |
| preview | **production** | \DEVELOPMENT_DEBUG=true\ | ⏭️ SKIP |

### Usage

Simply prefix any setting with \DEVELOPMENT_\ and it will be automatically excluded from production sync:

\\\
DEVELOPMENT_DEBUG=true
DEVELOPMENT_API_ENDPOINT=https://dev.api.example.com
DEVELOPMENT_FEATURE_FLAG=enabled
\\\

**Full Changelog**: https://github.com/jamesconsultingllc/sync-swa-settings-action/compare/v1...v1.1.0
