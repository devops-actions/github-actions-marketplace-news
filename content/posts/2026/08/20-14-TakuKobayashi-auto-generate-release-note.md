---
title: auto-generate-release-note
date: 2026-08-20 14:07:50 +00:00
tags:
  - TakuKobayashi
  - GitHub Actions
draft: false
repo: https://github.com/TakuKobayashi/auto-generate-release-note
marketplace: https://github.com/marketplace/actions/auto-generate-release-note
version: v1.0.2
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The GitHub Action uses a local Ollama model to generate release notes by summarizing Git history and diffs, supporting multiple languages including bilingual output with English. It compares the current tag with the previous semantic-version tag, generates Markdown from commits, changed files, and text diffs, and updates or creates a GitHub Release for tags that do not exist.
---


Version updated for **https://github.com/TakuKobayashi/auto-generate-release-note** to version **v1.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/auto-generate-release-note) to find the latest changes.

## Action Summary

The GitHub Action uses a local Ollama model to generate release notes by summarizing Git history and diffs, supporting multiple languages including bilingual output with English. It compares the current tag with the previous semantic-version tag, generates Markdown from commits, changed files, and text diffs, and updates or creates a GitHub Release for tags that do not exist.

## What's Changed

## Release Notes for v1.0.2

### Changes

- **Action Renamed**: The action has been renamed from `Ollama AI Release Notes` to `auto-generate-release-note`. This change affects the action's name in the GitHub marketplace and any references to it in workflows.

### Migration Notes

- If you are using this action in your GitHub workflows, you will need to update the action name from `Ollama AI Release Notes` to `auto-generate-release-note`.

### Fixes

- No specific fixes were included in this release.

### Important Internal Changes

- The package name and version in `package.json` have been updated to reflect the new action name and version.
