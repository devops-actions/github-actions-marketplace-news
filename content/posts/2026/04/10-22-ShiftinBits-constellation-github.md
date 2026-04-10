---
title: Constellation Index
date: 2026-04-10 22:00:37 +00:00
tags:
  - ShiftinBits
  - GitHub Actions
draft: false
repo: https://github.com/ShiftinBits/constellation-github
marketplace: https://github.com/marketplace/actions/constellation-index
version: v1.1.0
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/ShiftinBits/constellation-github** to version **v1.1.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/constellation-index) to find the latest changes.

## Action Summary

The Constellation Index GitHub Action automates repository indexing by analyzing code structure using Tree-sitter AST, enabling AI tools to understand code without transmitting source code. It ensures privacy by extracting only metadata, supports cross-platform environments, and optimizes performance with smart diff detection to skip unnecessary indexing tasks. This action is ideal for enhancing code intelligence while maintaining security and efficiency.

## What's Changed

### What's new?

- **Smart diff detection**: automatically skips indexing when no files matching your `constellation.json` configuration have changed, saving CI minutes on non-code commits
- New `skip-diff-check` input to bypass diff detection and always run indexing
- Handles edge cases: first push, scheduled/manual triggers, shallow clones, and missing config
- Proper `$GITHUB_OUTPUT` quoting and robust extension matching

**Full Changelog**: https://github.com/ShiftinBits/constellation-github/compare/v1.0.0...v1.1.0
