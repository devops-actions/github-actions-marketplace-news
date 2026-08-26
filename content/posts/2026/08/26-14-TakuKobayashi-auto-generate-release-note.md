---
title: auto-generate-release-note
date: 2026-08-26 14:58:34 +00:00
tags:
  - TakuKobayashi
  - GitHub Actions
draft: false
repo: https://github.com/TakuKobayashi/auto-generate-release-note
marketplace: https://github.com/marketplace/actions/auto-generate-release-note
version: v2.0.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The GitHub Action uses a local Ollama model to summarize Git history and diffs for creating or updating GitHub Releases, automatically generating Markdown. It supports multiple languages, including bilingual output with English. The action excludes images, videos, archives, binaries, and other non-source contents from the prompt and falls back to deterministic notes based on commits if Ollama inference fails.
---


Version updated for **https://github.com/TakuKobayashi/auto-generate-release-note** to version **v2.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/auto-generate-release-note) to find the latest changes.

## Action Summary

The GitHub Action uses a local Ollama model to summarize Git history and diffs for creating or updating GitHub Releases, automatically generating Markdown. It supports multiple languages, including bilingual output with English. The action excludes images, videos, archives, binaries, and other non-source contents from the prompt and falls back to deterministic notes based on commits if Ollama inference fails.

## What's Changed

# Release Notes for auto-generate-release-note v2.0.1

## User-visible Changes

- **Added Git Blame Information**: The release notes now include Git blame information for each commit, providing details about who made changes and when.
- **Updated README Files**: Both the English (`README.md`) and Japanese (`README-ja.md`) README files have been updated to reflect these changes.

## Fixes

- **Reverted Changes**: Reverted changes that were previously included in the release notes to ensure accuracy.

## Internal Changes

- **Refactored Code**: Refactored the code to include a new module (`commit-hints.ts`) that handles the extraction of commit candidates and the building of surviving commit hints.
- **Improved Test Coverage**: Enhanced the test suite to include tests for the new commit hints functionality.

## Migration Needs

- **No Migration Needed**: Users should not need to make any changes to their existing workflows or configurations.

## Breaking Changes

- **No Breaking Changes**: This release does not introduce any breaking changes that would require users to update their code or configurations.

## Important Notes

- **Enhanced Release Notes**: The release notes are now more detailed and include specific information about each commit, making it easier for users to understand the changes in each version.

These release notes provide a comprehensive overview of the changes in v2.0.1, ensuring that users and maintainers are well-informed about the updates and any necessary actions.
