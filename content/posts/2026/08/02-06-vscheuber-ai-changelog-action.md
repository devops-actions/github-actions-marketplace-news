---
title: AI Changelog Updater
date: 2026-08-02 06:04:50 +00:00
tags:
  - vscheuber
  - GitHub Actions
draft: false
repo: https://github.com/vscheuber/ai-changelog-action
marketplace: https://github.com/marketplace/actions/ai-changelog-updater
version: v1.1.8
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  This GitHub Action updates the "## Unreleased" section of your CHANGELOG.md using an LLM to produce user-focused changelog entries. It gathers Git history, PR titles and bodies, and optional activity from related repositories. For full releases, it consolidates pre-release notes into a clean, de-duplicated set for the final stable version. The action is reusable and can be used in any repository with GitHub Actions enabled.
---


Version updated for **https://github.com/vscheuber/ai-changelog-action** to version **v1.1.8**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-changelog-updater) to find the latest changes.

## Action Summary

This GitHub Action updates the "## Unreleased" section of your CHANGELOG.md using an LLM to produce user-focused changelog entries. It gathers Git history, PR titles and bodies, and optional activity from related repositories. For full releases, it consolidates pre-release notes into a clean, de-duplicated set for the final stable version. The action is reusable and can be used in any repository with GitHub Actions enabled.

## What's Changed

### Fixed
- Enhanced fallback logic to prevent duplicate release lines when no pre-release notes are present, improving the clarity of generated changelogs. (commit f093f69)

