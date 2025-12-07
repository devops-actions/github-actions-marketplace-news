---
title: CF Workers Actions
date: 2025-12-07 05:54:24 +00:00
tags:
  - harunonsystem
  - GitHub Actions
draft: false
repo: https://github.com/harunonsystem/cf-workers-actions
marketplace: https://github.com/marketplace/actions/cf-workers-actions
version: v1.0.3
dependentsNumber: "1"
---


Version updated for **https://github.com/harunonsystem/cf-workers-actions** to version **v1.0.3**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cf-workers-actions) to find the latest changes.

## Release notes

## What's Changed

### ✨ Features
- **Debug Mode**: Add debug mode to control log verbosity (#10)
  - Respect `ACTIONS_STEP_DEBUG` environment variable
  - Reduce log noise in default output
  - Full diagnostic info available when debug enabled

### 🔒 Security
- **Vite Update**: Fix security vulnerability in vite transitive dependency (#11)
  - Update vite from 7.1.7 to 7.2.6 (fixes CVE 7.1.0-7.1.10)
  - Update vitest packages from 4.0.13 to 4.0.14

### 🔧 Maintenance
- **Renovate**: Add automated dependency management (#11)
  - Configure Renovate for pnpm support
  - Schedule weekly updates (Monday mornings JST)
  - Enable vulnerability alerts
  - Set 3-day minimum release age for stability
- **Cleanup**: Remove unused `tsx` dependency (#11)

### 📝 Documentation
- Update examples and documentation for debug mode usage

## How to Use Debug Mode

Enable debug logging in two ways:
1. **Repository Secret**: Set `ACTIONS_STEP_DEBUG=true` in Settings → Secrets
2. **Re-run with debug logging**: Click "Re-run jobs" → Enable debug logging

**Full Changelog**: https://github.com/harunonsystem/cf-workers-actions/compare/v1.0.2...v1.0.3
