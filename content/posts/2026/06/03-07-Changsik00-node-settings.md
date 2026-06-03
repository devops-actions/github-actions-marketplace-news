---
title: env-kit/node-settings
date: 2026-06-03 07:00:38 +00:00
tags:
  - Changsik00
  - GitHub Actions
draft: false
repo: https://github.com/Changsik00/node-settings
marketplace: https://github.com/marketplace/actions/env-kit-node-settings
version: v1.1.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Changsik00/node-settings** to version **v1.1.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/env-kit-node-settings) to find the latest changes.

## What's Changed

### Bug Fixes

- **Deep freeze settings output.** `Object.freeze()` was shallow — nested objects and arrays inside the returned settings were still mutable. The loader now applies a recursive deep freeze so the full settings tree is immutable. (closes #8)
- **Throw on whitespace-only `overrideEnvKey` env var.** When the override env var was set to a whitespace-only string (e.g. `"   "`), the override was silently skipped with no indication anything was wrong. Now raises `NodeSettingsError` with code `OVERRIDE_ENV_EMPTY` at boot time. Empty string (`""`) continues to be silently skipped. (closes #12)

