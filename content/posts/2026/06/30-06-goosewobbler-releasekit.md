---
title: ReleaseKit – Automated Versioning & Release
date: 2026-06-30 06:50:17 +00:00
tags:
  - goosewobbler
  - GitHub Actions
draft: false
repo: https://github.com/goosewobbler/releasekit
marketplace: https://github.com/marketplace/actions/releasekit-automated-versioning-release
version: v0.36.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/goosewobbler/releasekit** to version **v0.36.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/releasekit-automated-versioning-release) to find the latest changes.

## What's Changed


### New:
- Added the ability to skip private npm packages from the release flow by default.

### Fixed:
- Fixed hybrid package update deduplication to prefer npm packages when conflicts occur within the same directory.
- Fixed changelog headers to display the previous version without additional formatting. (#475)
- Fixed standing PR selection rows to no longer include the bump-kind suffix.
- Fixed prerelease predecessors to be shown as previousVersion when graduating.

### Changed:
- Reformatted the pre-1.0.0 warning into readable paragraphs for better clarity.
- **Dependencies**: Bumped the claude-code-action dependency to the latest version.

**Full Changelog**: https://github.com/goosewobbler/releasekit/compare/0.35.0...0.36.0


