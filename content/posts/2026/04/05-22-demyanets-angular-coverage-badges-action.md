---
title: Angular coverage badges
date: 2026-04-05 22:01:07 +00:00
tags:
  - demyanets
  - GitHub Actions
draft: false
repo: https://github.com/demyanets/angular-coverage-badges-action
marketplace: https://github.com/marketplace/actions/angular-coverage-badges
version: v2
dependentsNumber: "73"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/demyanets/angular-coverage-badges-action** to version **v2**.

- This action is used across all versions by **73** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/angular-coverage-badges) to find the latest changes.

## Action Summary

The Angular Coverage Badges GitHub Action automates the generation of test coverage badges from LCOV data produced by an Angular project's test suite. It eliminates the need for third-party services by creating badges locally and automatically committing them to the repository. The action supports multi-project Angular repositories by generating badges for each project while preserving the directory structure.

## What's Changed

- Merge pull request #18 from demyanets/feature/upgrade_node24 (36eb563)
- Updated actions/checkout and actions/setup-node to v5 (7f9031a)
- Fix issue with the "net" dependency (6277ebe)
- Change to ESM bundle (9c1341f)
- CommonJS fix (bfc5c0f)
- Remove jest tests (35043d1)
- All dependencies were updated (3ac74be)
- Add test run to the workflow (5469741)
- Migration to Node 24 (bca0d1c)
- Revert "Better param naming" (2c67638)
