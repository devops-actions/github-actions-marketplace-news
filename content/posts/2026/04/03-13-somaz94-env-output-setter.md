---
title: Environment/Output Setter
date: 2026-04-03 13:45:29 +00:00
tags:
  - somaz94
  - GitHub Actions
draft: false
repo: https://github.com/somaz94/env-output-setter
marketplace: https://github.com/marketplace/actions/environment-output-setter
version: v1.7.0
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/somaz94/env-output-setter** to version **v1.7.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/environment-output-setter) to find the latest changes.

## Action Summary

The **GitHub Environment/Output Setter** is a GitHub Action designed to dynamically set multiple key-value pairs as environment variables (`$GITHUB_ENV`) and workflow outputs (`$GITHUB_OUTPUT`). It automates the process of defining and managing variables and outputs across steps in a CI/CD pipeline, solving the challenge of dynamic variable handling. Key capabilities include value transformation, JSON support, masking sensitive data, and grouping variables with prefixes for streamlined workflows.

## What's Changed


### Bug Fixes
- skip major version tag deletion on first release by @somaz94
- apache license -> mit license by @somaz94

### CI/CD
- use conventional commit message in changelog-generator workflow by @somaz94
- unify changelog-generator with flexible tag pattern by @somaz94
- update Go version from 1.23 to 1.26 by @somaz94
- add contributors and dependabot auto-merge workflows by @somaz94
- migrate changelog generator to go-changelog-action by @somaz94
- use major-tag-action for version tag updates by @somaz94
- use somaz94/contributors-action@v1 for contributors generation by @somaz94
- migrate gitlab-mirror workflow to multi-git-mirror action by @somaz94
- use generate_release_notes instead of RELEASE.md by @somaz94
- revert to body_path RELEASE.md in release workflow by @somaz94
- skip auto-generated changelog and contributors commits in release notes by @somaz94

### Chore
- update cliff.toml for version-based changelog format by @somaz94
- regenerate changelog and revert cliff.toml to simple format by @somaz94
- regenerate CHANGELOG.md with version-based format by @somaz94
- switch changelog generator from git-cliff to github_changelog_generator by @somaz94
- migrate devcontainer feature from devcontainers-contrib to devcontainers-extra by @somaz94
- remove linter workflow and config files by @somaz94
- change license from MIT to Apache 2.0 by @somaz94
- upgrade Go version to 1.26 by @somaz94
- add git config protection to CLAUDE.md by @somaz94
- remove duplicate rules from CLAUDE.md (moved to global) by @somaz94

### Documentation
- CLAUDE.md by @somaz94
- update CLAUDE.md with commit guidelines and language by @somaz94
- add no-push rule to CLAUDE.md by @somaz94
- remove duplicate rules covered by global CLAUDE.md by @somaz94

### Refactoring
- extract shared transform logic, remove unused groupPrefix param, and use random EOF delimiter by @somaz94

**Full Changelog**: https://github.com/somaz94/env-output-setter/compare/v1.6.1...v1.7.0

