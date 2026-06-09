---
title: pi GitHub Action
date: 2026-06-09 14:48:02 +00:00
tags:
  - shaftoe
  - GitHub Actions
draft: false
repo: https://github.com/shaftoe/pi-coding-agent-action
marketplace: https://github.com/marketplace/actions/pi-github-action
version: v2.20.0
dependentsNumber: "7"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/shaftoe/pi-coding-agent-action** to version **v2.20.0**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pi-github-action) to find the latest changes.

## What's Changed

## [2.20.0] - 2026-06-09

### Added

- add CLI protoype (#266)
- add content sanitization for user-provided content (#210)
- add pr_number input for workflow_dispatch support (#278)
- set project trust when creating Pi agent session (#284)

### Changed

- fix typo in README.md
- simplify PI_PACKAGE_DIR workaround using SDK's exported getPackageDir() (#285)
- **deps**: update dependencies (#270)
- **deps-dev**: update dependencies (#275)
- **deps**: update dependencies (#280)
- Update README.md

### Fixed

- update release workflow, use correct versions for dev and v2
- use file-backed session when HTML/JSONL export is enabled (#283)

[2.20.0]: https://github.com/shaftoe/pi-coding-agent-action/compare/v2.19.3...v2.20.0

