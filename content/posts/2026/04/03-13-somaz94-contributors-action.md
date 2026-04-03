---
title: Contributors Generator Action
date: 2026-04-03 13:45:33 +00:00
tags:
  - somaz94
  - GitHub Actions
draft: false
repo: https://github.com/somaz94/contributors-action
marketplace: https://github.com/marketplace/actions/contributors-generator-action
version: v1.1.0
dependentsNumber: "14"
actionType: Docker
---


Version updated for **https://github.com/somaz94/contributors-action** to version **v1.1.0**.

- This action is used across all versions by **14** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/contributors-generator-action) to find the latest changes.

## Action Summary

The Contributors Action is a GitHub Action that automates the generation and updating of contributor lists for a repository. It uses GitHub repository data to create customizable contributor lists in various formats, such as tables, markdown lists, or image grids, and can update specific sections in existing files (e.g., README.md). This action streamlines the process of recognizing contributors, offering capabilities like filtering, sorting, and previewing results before applying changes.

## What's Changed


### Bug Fixes
- rename action to Contributors Generator Action by @somaz94

### CI/CD
- migrate gitlab-mirror workflow to multi-git-mirror action by @somaz94
- use generate_release_notes instead of body_path in release workflow by @somaz94
- revert to body_path RELEASE.md in release workflow by @somaz94
- skip auto-generated changelog and contributors commits in release notes by @somaz94

### Chore
- add git config protection to CLAUDE.md by @somaz94
- remove duplicate rules from CLAUDE.md (moved to global) by @somaz94

### Documentation
- add CLAUDE.md project guide by @somaz94
- add no-push rule to CLAUDE.md by @somaz94
- remove duplicate rules covered by global CLAUDE.md by @somaz94

### Refactoring
- improve code quality with validation, helpers, and test modernization by @somaz94

**Full Changelog**: https://github.com/somaz94/contributors-action/compare/v1.0.0...v1.1.0

