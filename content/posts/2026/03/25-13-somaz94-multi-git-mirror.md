---
title: Multi Git Mirror
date: 2026-03-25 13:42:37 +00:00
tags:
  - somaz94
  - GitHub Actions
draft: false
repo: https://github.com/somaz94/multi-git-mirror
marketplace: https://github.com/marketplace/actions/multi-git-mirror
version: v1.1.1
dependentsNumber: "35"
actionType: Docker
---


Version updated for **https://github.com/somaz94/multi-git-mirror** to version **v1.1.1**.
- This action is used across all versions by **35** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/multi-git-mirror) to find the latest changes.

## Action Summary

The **Multi Git Mirror** GitHub Action automates the process of mirroring repositories to multiple Git hosting providers, including GitLab, GitHub, Bitbucket, AWS CodeCommit, and others, in a single workflow step. It simplifies repository synchronization by supporting selective branch/tag mirroring, concurrent operations, and flexible authentication methods while offering robust features like retry logic, dry-run mode, and credential masking. This action is ideal for maintaining backups, multi-platform repository presence, and seamless collaboration across different Git platforms.

## Release notes


### Bug Fixes
- correct license badge to MIT, optimize Docker build by @somaz94

### CI/CD
- add auto-generated PR body script for make pr by @somaz94
- use generate_release_notes instead of body_path in release workflow by @somaz94
- revert to body_path RELEASE.md in release workflow by @somaz94
- skip auto-generated changelog and contributors commits in release notes by @somaz94

### Chore
- upgrade Go version to 1.26 by @somaz94
- add workflow Makefile targets (check-gh, branch, pr) by @somaz94

### Documentation
- add no-push rule to CLAUDE.md by @somaz94

**Full Changelog**: https://github.com/somaz94/multi-git-mirror/compare/v1.1.0...v1.1.1

