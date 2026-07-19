---
title: ReleaseKit – Automated Versioning & Release
date: 2026-07-19 06:42:32 +00:00
tags:
  - goosewobbler
  - GitHub Actions
draft: false
repo: https://github.com/goosewobbler/releasekit
marketplace: https://github.com/marketplace/actions/releasekit-automated-versioning-release
version: v0.40.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  ReleaseKit is an automated tool that automates the process of releasing npm packages, crates.io libraries, and Dart/Flutter packages. It uses Conventional Commits to generate changelogs and version numbers, and supports CI-native workflows with JSON output and OIDC publishing. The action provides three independent CLIs for versioning, generating notes, and publishing packages, making it flexible for different ecosystems and projects.
---


Version updated for **https://github.com/goosewobbler/releasekit** to version **v0.40.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/releasekit-automated-versioning-release) to find the latest changes.

## Action Summary

ReleaseKit is an automated tool that automates the process of releasing npm packages, crates.io libraries, and Dart/Flutter packages. It uses Conventional Commits to generate changelogs and version numbers, and supports CI-native workflows with JSON output and OIDC publishing. The action provides three independent CLIs for versioning, generating notes, and publishing packages, making it flexible for different ecosystems and projects.

## What's Changed


### New:
- Added a release summary line and version-summary table to the standing PR body, showing channel splits, major-bump warnings, and held packages. (#524) (#524, #520)
- Added per-package channel toggles (`rk-pre` / `rk-grad`) to the standing PR selection list, allowing selective prerelease or graduation without narrowing the release. (#525) (#525, #521)
- Added configurable `changelog.demoteScopes` option to move dependency and version-bump entries to a separate section at the end of changelogs, keeping main content clean. (#523) (#523, #522)

### Fixed:
- Fixed the `releasekit` dispatcher to register `gate`, `refresh-after-release`, and `backfill` commands so they work from the public binary instead of only from `releasekit-release`. (#538) (#538, #519)
- Fixed the standing PR's open-age display to show days (e.g., `26d 36m`) instead of just hours (e.g., `624h 36m`). (#536) (#536, #535)
- **Security**: Fixed unauthorized actors being able to edit channel toggles on the standing PR by reconciling them against the manifest, matching the behavior of ad-hoc deselection. (#534) (#534)

### Changed:
- **Dependencies**: Updated the Claude Code GitHub Action to the latest version. (#531) (#531)
- **Dependencies**: Updated production dependencies including Anthropic SDK, OpenAI, LiquidJS, Figlet, Biome, and Vitest. (#533) (#533)
- **Dependencies**: Updated development dependencies including ESLint, TypeScript ESLint parser, and Turbo. (#532) (#532)

### Removed:
- **CI**: Removed the unused Claude code-review workflow since Greptile already auto-reviews every PR. (#537) (#537)

**Full Changelog**: https://github.com/goosewobbler/releasekit/compare/0.39.0...0.40.0


