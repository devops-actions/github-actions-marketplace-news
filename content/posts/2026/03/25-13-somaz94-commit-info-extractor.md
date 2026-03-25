---
title: Extract Commit Action
date: 2026-03-25 13:42:53 +00:00
tags:
  - somaz94
  - GitHub Actions
draft: false
repo: https://github.com/somaz94/commit-info-extractor
marketplace: https://github.com/marketplace/actions/extract-commit-action
version: v1.4.1
dependentsNumber: "3"
actionType: Docker
---


Version updated for **https://github.com/somaz94/commit-info-extractor** to version **v1.4.1**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/extract-commit-action) to find the latest changes.

## Action Summary

The "Extract Commit Action" is a GitHub Action designed to analyze commit messages and extract specific information using customizable regex patterns or commands. It automates the process of parsing commit history to retrieve structured data, such as environment variables, feature tags, or version numbers, and supports output in text, JSON, or CSV formats. This action simplifies workflow automation by providing flexible configuration options, debugging capabilities, and fail-safe mechanisms for data extraction tasks.

## Release notes


### Bug Fixes
- delete linter.yml by @somaz94
- apache license -> mit license by @somaz94
- use env vars for outputs to avoid shell injection from special characters by @somaz94
- use heredoc to safely print outputs containing special characters by @somaz94
- improve security and error handling by @somaz94

### CI/CD
- add all missing workflow files and release config by @somaz94
- use major-tag-action for version tag updates by @somaz94
- use somaz94/contributors-action@v1 for contributors generation by @somaz94
- migrate gitlab-mirror workflow to multi-git-mirror action by @somaz94
- use generate_release_notes instead of RELEASE.md by @somaz94
- revert to body_path RELEASE.md in release workflow by @somaz94
- skip auto-generated changelog and contributors commits in release notes by @somaz94

### Chore
- remove linter workflow and config files by @somaz94
- change license from MIT to Apache 2.0 by @somaz94

### Documentation
- update CLAUDE.md with commit guidelines and language by @somaz94
- add no-push rule to CLAUDE.md by @somaz94

**Full Changelog**: https://github.com/somaz94/commit-info-extractor/compare/v1.4.0...v1.4.1

