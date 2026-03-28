---
title: Changelog Publish to Google Docs
date: 2026-03-28 13:54:33 +00:00
tags:
  - marco-jardim
  - GitHub Actions
draft: false
repo: https://github.com/marco-jardim/changelog-publish-google-docs-action
marketplace: https://github.com/marketplace/actions/changelog-publish-to-google-docs
version: v1.0.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/marco-jardim/changelog-publish-google-docs-action** to version **v1.0.1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/changelog-publish-to-google-docs) to find the latest changes.

## Action Summary

The `changelog-publish-google-docs-action` automates the process of publishing a rendered markdown changelog to a Google Doc as the final step in a four-action changelog pipeline. It supports appending, prepending, or replacing sections in the document, handles markdown-to-Google Docs formatting, and ensures idempotency by embedding markers to avoid duplicate entries during re-runs. This action simplifies changelog management by integrating with the Google Docs API and enabling seamless collaboration and documentation updates.

## Release notes

## What's Changed

### Security
- **Added `core.setSecret()` masking** for the service account key — defensive in-process log masking in addition to GitHub's workflow-level secret handling

### Bug Fixes
- Added missing LICENSE file (full GPL-3.0 text)
- Added missing CI workflow (typecheck → test → build → verify)
- Fixed `.gitignore` that was incorrectly excluding `dist/` — `dist/index.js` is now properly committed
- Fixed `npm test` script to include coverage by default
- Cleaned 13 stray TypeScript declaration artifacts from `dist/`
- Removed unused `@actions/github` runtime dependency

### Build & Tooling
- **Migrated test runner from Jest to Vitest 4.x** with v8 coverage provider
- **Migrated bundler from @vercel/ncc to esbuild**
- Bumped all dependencies to latest
- Added `deps.inline: ['googleapis']` for ESM/CJS compatibility

### Documentation
- Updated stale Jest references to Vitest in ACCEPTANCE_CRITERIA and DEFINITION_OF_DONE
- Removed reference to non-existent `npm run test:coverage` script in README

### Quality
- Added coverage thresholds enforcement (80/70/80/80)
- **69/69 tests passing** across 5 test suites

**Full Changelog**: https://github.com/marco-jardim/changelog-publish-google-docs-action/compare/v1.0.0...v1.0.1
