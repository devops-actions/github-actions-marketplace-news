---
title: ReleaseKit – Automated Versioning & Release
date: 2026-06-16 15:58:01 +00:00
tags:
  - goosewobbler
  - GitHub Actions
draft: false
repo: https://github.com/goosewobbler/releasekit
marketplace: https://github.com/marketplace/actions/releasekit-automated-versioning-release
version: v0.28.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/goosewobbler/releasekit** to version **v0.28.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/releasekit-automated-versioning-release) to find the latest changes.

## What's Changed


### New:
- Added an optional on-disk cache for LLM responses to speed up repeated operations.
- Added support for discovering packages that use only pubspec files (Dart/Flutter).
- Added a backfill mode to the GitHub Action for generating release notes for existing releases.
- Added the ability to backfill release notes for past versions that were created before this tool was in use.

### Fixed:
- Fixed an issue where frontmatter templates were incorrectly included in GitHub release bodies. (#297)
- Fixed parsing of structured LLM output by stripping code fences before processing. (#289)
- Fixed npm publishing to skip non-package.json manifests without logging confusing errors. (#290)

### Developer:
- **CI**: Updated the pnpm setup action to version 6 in GitHub Actions workflows.
- **CI**: Updated the Claude Code GitHub Action to the latest version for improved AI-assisted features.
- **Dependencies**: Updated multiple development dependencies to their latest versions.

**Full Changelog**: https://github.com/goosewobbler/releasekit/compare/0.27.0...0.28.0


