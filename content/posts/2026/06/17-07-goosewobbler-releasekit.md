---
title: ReleaseKit – Automated Versioning & Release
date: 2026-06-17 07:36:13 +00:00
tags:
  - goosewobbler
  - GitHub Actions
draft: false
repo: https://github.com/goosewobbler/releasekit
marketplace: https://github.com/marketplace/actions/releasekit-automated-versioning-release
version: v0.30.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/goosewobbler/releasekit** to version **v0.30.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/releasekit-automated-versioning-release) to find the latest changes.

## What's Changed


### New:
- Added a warning when baseline tags are missing and truncates oversized standing-PR bodies to prevent GitHub API failures.
- Standing-PR override labels are now applied immediately and manifests are guarded against becoming stale.

### Fixed:
- Fixed version bumping to properly fall back to full changelog history when no baseline tag exists.
- Fixed compare-link generation for sanitized `@v` package tags to correctly derive the 'to' reference.
- Fixed prerelease packages to be properly escalated on bump operations when prerelease mode is enabled.

**Full Changelog**: https://github.com/goosewobbler/releasekit/compare/0.29.1...0.30.0


