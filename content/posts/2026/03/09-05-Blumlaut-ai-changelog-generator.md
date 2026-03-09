---
title: AI Changelog Generator
date: 2026-03-09 05:58:03 +00:00
tags:
  - Blumlaut
  - GitHub Actions
draft: false
repo: https://github.com/Blumlaut/ai-changelog-generator
marketplace: https://github.com/marketplace/actions/ai-changelog-generator
version: 1.3.0
dependentsNumber: "1"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/Blumlaut/ai-changelog-generator** to version **1.3.0**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-changelog-generator) to find the latest changes.

## Action Summary

The AI Changelog Generator is a GitHub Action that automates the creation and updating of a `CHANGELOG.md` file using AI. It collects recent commit messages, processes them with an AI provider, and generates a well-structured changelog, eliminating the manual work of summarizing changes and ensuring consistency. This action streamlines changelog management by handling tasks like file creation, commit tracking, and pull request generation.

## Release notes

- Automatically create CHANGELOG.md with proper header when it doesn't exist and update README to note this feature
- Document the new `use_categories` input option for grouping entries by conventional commit categories
- Reorder setup steps in README for clarity
- Fix invalid declaration in index.js and make minor prompting changes to specify bullet point format
