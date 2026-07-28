---
title: AI Changelog Updater
date: 2026-07-28 14:45:06 +00:00
tags:
  - vscheuber
  - GitHub Actions
draft: false
repo: https://github.com/vscheuber/ai-changelog-action
marketplace: https://github.com/marketplace/actions/ai-changelog-updater
version: v1.0.5
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The AI Changelog Updater GitHub Action gathers Git history and pull request details, then uses an LLM to update the `## Unreleased` section of a `CHANGELOG.md`. It handles both full releases and pre-releases, consolidating changelog entries into a polished final version. The action can be configured with various inputs such as audience type, user focus, and prompt customizations.
---


Version updated for **https://github.com/vscheuber/ai-changelog-action** to version **v1.0.5**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-changelog-updater) to find the latest changes.

## Action Summary

The AI Changelog Updater GitHub Action gathers Git history and pull request details, then uses an LLM to update the `## Unreleased` section of a `CHANGELOG.md`. It handles both full releases and pre-releases, consolidating changelog entries into a polished final version. The action can be configured with various inputs such as audience type, user focus, and prompt customizations.

## What's Changed

### Added
- Default prerelease tags now use a numeric format, simplifying version management and enhancing the consistency and predictability of version identifiers. (#e47bff3)

### Changed
- Updated GitHub Actions workflows to eliminate runtime warnings for Node 20, improving compatibility and reducing noise in CI/CD logs.

### Fixed
- The prerelease identifier in the release dispatch workflow is now optional, providing more flexibility in release processes and resolving issues where a mandatory identifier was previously required. (#757eebc)

