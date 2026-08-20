---
title: AI Changelog Updater
date: 2026-08-20 14:01:22 +00:00
tags:
  - vscheuber
  - GitHub Actions
draft: false
repo: https://github.com/vscheuber/ai-changelog-action
marketplace: https://github.com/marketplace/actions/ai-changelog-updater
version: v1.1.11
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  The AI Changelog Updater is a GitHub Action that automates updating the `## Unreleased` section of a CHANGELOG.md file by using an LLM. It gathers changes from Git history, merged pull requests, and optional related repositories to generate a user-focused changelog entry while preserving existing content. The action also supports handling full releases by consolidating pre-release notes into the final stable version's changelog.
---


Version updated for **https://github.com/vscheuber/ai-changelog-action** to version **v1.1.11**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-changelog-updater) to find the latest changes.

## Action Summary

The AI Changelog Updater is a GitHub Action that automates updating the `## Unreleased` section of a CHANGELOG.md file by using an LLM. It gathers changes from Git history, merged pull requests, and optional related repositories to generate a user-focused changelog entry while preserving existing content. The action also supports handling full releases by consolidating pre-release notes into the final stable version's changelog.

## What's Changed

### Added
- Improved handling of changelog entries to prevent duplication of developer-written "Unreleased" entries with reworded LLM output. This enhancement ensures that manually written entries are preserved without unnecessary repetition. (commit 29a5ed3)

