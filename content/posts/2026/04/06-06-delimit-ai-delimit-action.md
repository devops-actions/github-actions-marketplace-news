---
title: Delimit API Governance
date: 2026-04-06 06:22:11 +00:00
tags:
  - delimit-ai
  - GitHub Actions
draft: false
repo: https://github.com/delimit-ai/delimit-action
marketplace: https://github.com/marketplace/actions/delimit-api-governance
version: v1.8.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/delimit-ai/delimit-action** to version **v1.8.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/delimit-api-governance) to find the latest changes.

## Action Summary

The Delimit GitHub Action automates API governance by analyzing changes to OpenAPI specifications in pull requests, detecting breaking changes, and providing semver classification, policy violation reports, and detailed migration guides. It helps teams catch potential issues before merging, ensuring API stability and compliance with custom-defined governance rules. Key features include advisory and enforcement modes, rich PR comments with actionable insights, and the ability to define custom policies for tailored API management.

## What's Changed

## What's Changed

### Bug Fix
- **Diff engine null-safety fix** — synced from gateway to prevent crashes on malformed OpenAPI specs. Critical fix for production users.

### Improvements  
- Updated README with Think and Build tagline
- Added community templates: bug report, feature request, PR template

### Quality
- 128/128 tests passing
- 0 security findings (40 files scanned)
- Full deploy gate sequence passed

**Full Changelog**: https://github.com/delimit-ai/delimit-action/compare/v1.8.0...v1.8.1
