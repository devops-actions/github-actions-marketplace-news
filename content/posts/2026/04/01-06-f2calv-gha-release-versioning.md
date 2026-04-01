---
title: gha-release-versioning
date: 2026-04-01 06:16:43 +00:00
tags:
  - f2calv
  - GitHub Actions
draft: false
repo: https://github.com/f2calv/gha-release-versioning
marketplace: https://github.com/marketplace/actions/gha-release-versioning
version: v1.3.3
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/f2calv/gha-release-versioning** to version **v1.3.3**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gha-release-versioning) to find the latest changes.

## Action Summary

This GitHub Action automates semantic versioning and release management for a repository using the GitVersion tool. It calculates the repository's semantic version, optionally accepts a pre-defined version, and creates Git tags and GitHub releases, streamlining version control and release processes. Key capabilities include outputting version components (e.g., major, minor, patch) and integrating with custom GitVersion configurations.

## What's Changed

- Merge pull request #28 from f2calv/f2calv/2026-03-updates (97b40e3)
- misc updates (8b8f7fc)
- updated instructions (fcbc300)
- Merge pull request #27 from f2calv/copilot/fix-release-tag-issue (3c65133)
- refactor: simplify test matrix — use gv-config directly, remove unused gv-version (fcb03ba)
- refactor: remove gv-spec input (auto-detected from config) and fix README discrepancies (523cfe2)
- fix: change gv-spec default from 5.x to 6.x to match GitVersion.yml config (84fbc64)
- fix: change GitVersion mode from ManualDeployment to ContinuousDeployment for clean release versions (7ec6c7d)
- Merge pull request #26 from f2calv/copilot/fix-ci-workflow-tags (4efe4b4)
- fix: use SEMVER (not FULLSEMVER) for release tag_name; add test assertions for version format (ffb7c0a)
