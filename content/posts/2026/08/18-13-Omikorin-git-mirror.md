---
title: Git Mirror Repo
date: 2026-08-18 13:35:35 +00:00
tags:
  - Omikorin
  - GitHub Actions
draft: false
repo: https://github.com/Omikorin/git-mirror
marketplace: https://github.com/marketplace/actions/git-mirror-repo
version: v1.1.0
dependentsNumber: "2"
actionType: Docker
actionSummary: |
  The Git Mirror action automatically mirrors the state of a repository to another specified target repository, supporting HTTPS, SSH, and LFS. It detects LFS protocol automatically if the repository has already been downloaded. The action supports mirroring via SSH or HTTPS with optional username, token authentication, strict host key verification, and dry run options. It is recommended to use unique concurrency groups in workflows to mitigate race condition risks when running `--mirror` actions.
---


Version updated for **https://github.com/Omikorin/git-mirror** to version **v1.1.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/git-mirror-repo) to find the latest changes.

## Action Summary

The Git Mirror action automatically mirrors the state of a repository to another specified target repository, supporting HTTPS, SSH, and LFS. It detects LFS protocol automatically if the repository has already been downloaded. The action supports mirroring via SSH or HTTPS with optional username, token authentication, strict host key verification, and dry run options. It is recommended to use unique concurrency groups in workflows to mitigate race condition risks when running `--mirror` actions.

## What's Changed

### Added
- defensive programming for intercompatibility between different runners and git hosts
- security fixes that mitigate risk of running the script directly on own desktop

**Full Changelog**: https://github.com/Omikorin/git-mirror/compare/v1.0.0...v1.1.0
