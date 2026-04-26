---
title: Export all variables from secrets and vars contexts to env variables
date: 2026-04-26 21:22:45 +00:00
tags:
  - easyware-io
  - GitHub Actions
draft: false
repo: https://github.com/easyware-io/export-to-env
marketplace: https://github.com/marketplace/actions/export-all-variables-from-secrets-and-vars-contexts-to-env-variables
version: v2
dependentsNumber: "5"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/easyware-io/export-to-env** to version **v2**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/export-all-variables-from-secrets-and-vars-contexts-to-env-variables) to find the latest changes.

## Action Summary

The `easyware-io/export-to-env` GitHub Action simplifies the process of exporting GitHub secrets and variables into the workflow `env` context, making them easily accessible during workflow execution. It eliminates the need to manually map individual variables, streamlining the management of large sets of secrets or environment variables. Key features include filtering variables (e.g., by name or pattern), adding prefixes or suffixes, transforming variable names, and converting secrets to different formats like Base64.

## What's Changed

## 🚀 Export to Env v2.0.0

### ⚠️ Breaking Changes

- **Node.js runtime upgraded from 20 to 24** — The action now runs on `node24` instead of `node20`. This requires GitHub Actions runners that support Node.js 24.

### ✨ Improvements

- **Updated GitHub Actions dependencies** — `actions/checkout` upgraded from v4 to v6, `actions/setup-node` upgraded from v4 to v6
- **CI: reproducible installs** — Build workflow now uses `npm ci` instead of `npm install` for deterministic dependency resolution
- **CI: dist push on push events only** — Compiled dist files are only pushed back to the repository on `push` events, preventing failures on pull request builds (detached HEAD state)
- **CI: skip integration tests on pull requests** — Integration test jobs that require repository secrets are now skipped on PR builds, since GitHub does not expose secrets to pull request workflows
- **README: updated all usage examples to reference `@v2`**
- **README: added Development section** — New section with Node.js 24 requirement and build/test instructions

### 📦 Internal

- Bumped `package.json` version to `2.0.0`
- Added `"engines": { "node": ">=24" }` to `package.json`
- Updated `@types/node` from `^20.11.16` to `^24.0.0`
- Rebuilt dist files with Node.js 24 runtime

### 📋 Migration Guide

Update your workflow to use the new major version:

```yaml
- uses: easyware-io/export-to-env@v2
```

**Full Changelog**: https://github.com/easyware-io/export-to-env/compare/v1...v2
