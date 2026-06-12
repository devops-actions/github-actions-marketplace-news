---
title: Cullit — AI Release Notes
date: 2026-06-12 06:51:33 +00:00
tags:
  - mttaylor
  - GitHub Actions
draft: false
repo: https://github.com/mttaylor/cullit
marketplace: https://github.com/marketplace/actions/cullit-ai-release-notes
version: v3.2.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/mttaylor/cullit** to version **v3.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cullit-ai-release-notes) to find the latest changes.

## What's Changed

## Highlights

### Features
- Added configurable source controls in the dashboard (source type + GitHub owner/repo) for generation.
- Added Bring Your Own Key (BYOK) provider token input in dashboard AI settings, including optional local remember/clear controls.
- Added project-level defaults for GitHub owner/repo in project settings.

### Fixes
- Enforced explicit GitHub repo configuration for hosted source generation (no implicit hardcoded/env fallback in user flow).
- Improved hosted generation behavior for non-git runtime contexts and surfaced clearer validation for ref/source configuration.

### Docs/Site
- Updated landing hero badge to New in v3.2.0: configurable dashboard source and BYOK provider tokens.

### Validation
- pnpm build passed across workspace packages.
- pnpm test passed: 53 test files, 671 tests.

### Contributors
- @mttaylor

## Commits in this release
- fda32f1 fix(dashboard): require explicit github repo config for hosted source
- ed531ea feat(dashboard): configurable source repo and BYOK provider tokens
- 07799cc fix(api): add hosted github fallback for dashboard generation
- 0b6b0dc chore: bump version to v3.2.0
