---
title: Go Changelog Generator
date: 2026-03-25 13:42:48 +00:00
tags:
  - somaz94
  - GitHub Actions
draft: false
repo: https://github.com/somaz94/go-changelog-action
marketplace: https://github.com/marketplace/actions/go-changelog-generator
version: v1.0.7
dependentsNumber: "10"
actionType: Docker
---


Version updated for **https://github.com/somaz94/go-changelog-action** to version **v1.0.7**.
- This action is used across all versions by **10** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/go-changelog-generator) to find the latest changes.

## Action Summary

The **Go Changelog Action** is a GitHub Action that automates the generation of changelogs from a project's git history by parsing commit messages following the Conventional Commits format. It organizes changes into categorized sections (e.g., Features, Bug Fixes), highlights breaking changes, includes contributor details, and provides links to PRs, issues, and version comparisons. This action simplifies release management by automating changelog creation, ensuring consistency and saving time in documenting project updates.

## Release notes


### Bug Fixes
- add path traversal protection, git timeout, and isExcludedAuthor tests by @somaz94

### CI/CD
- use generate_release_notes instead of body_path in release workflow by @somaz94
- revert to body_path RELEASE.md in release workflow by @somaz94
- skip auto-generated changelog and contributors commits in release notes by @somaz94

### Testing
- improve test coverage and fix short hash panic by @somaz94

**Full Changelog**: https://github.com/somaz94/go-changelog-action/compare/v1.0.6...v1.0.7

