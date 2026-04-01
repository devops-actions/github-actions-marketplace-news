---
title: gha-release-versioning
date: 2026-04-01 13:58:21 +00:00
tags:
  - f2calv
  - GitHub Actions
draft: false
repo: https://github.com/f2calv/gha-release-versioning
marketplace: https://github.com/marketplace/actions/gha-release-versioning
version: v1.3.4
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/f2calv/gha-release-versioning** to version **v1.3.4**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gha-release-versioning) to find the latest changes.

## Action Summary

This GitHub Action automates semantic versioning using the GitVersion tool, calculates the version based on the repository's commit history, and optionally creates Git tags and GitHub releases. It simplifies version management by ensuring consistent semantic versioning and supports custom configurations or externally provided versions. Key capabilities include generating version components (e.g., major, minor, patch), moving rolling tags, and detecting GitVersion configurations automatically.

## What's Changed

- Merge pull request #29 from f2calv/f2calv/2026-04-bug-squish (6043f87)
- fixes (9286273)
- Merge pull request #28 from f2calv/f2calv/2026-03-updates (97b40e3)
- misc updates (8b8f7fc)
- updated instructions (fcbc300)
- Merge pull request #27 from f2calv/copilot/fix-release-tag-issue (3c65133)
- refactor: simplify test matrix — use gv-config directly, remove unused gv-version (fcb03ba)
- refactor: remove gv-spec input (auto-detected from config) and fix README discrepancies (523cfe2)
- fix: change gv-spec default from 5.x to 6.x to match GitVersion.yml config (84fbc64)
- fix: change GitVersion mode from ManualDeployment to ContinuousDeployment for clean release versions (7ec6c7d)
