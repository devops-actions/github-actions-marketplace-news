---
title: Agentic SemVer
date: 2026-08-20 06:30:02 +00:00
tags:
  - PramodKumarYadav
  - GitHub Actions
draft: false
repo: https://github.com/PramodKumarYadav/agentic-semver
marketplace: https://github.com/marketplace/actions/agentic-semver
version: v1.2.2
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
actionSummary: |
  `agentic-semver` is a GitHub Action that automates semantic versioning for pull requests by using Claude to analyze the PR diff and classify changes as patch, minor, or major. It updates the version file and generates a changelog entry, applies labels, and commits these changes back to the PR branch. It also includes a companion action `create-release` to create GitHub Releases from the version file and changelog.
---


Version updated for **https://github.com/PramodKumarYadav/agentic-semver** to version **v1.2.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentic-semver) to find the latest changes.

## Action Summary

`agentic-semver` is a GitHub Action that automates semantic versioning for pull requests by using Claude to analyze the PR diff and classify changes as patch, minor, or major. It updates the version file and generates a changelog entry, applies labels, and commits these changes back to the PR branch. It also includes a companion action `create-release` to create GitHub Releases from the version file and changelog.

## What's Changed

## 1.2.2 - 2026-08-19

- Summary: Added test execution step to the agentic-semver workflow to prevent version bumps when tests are failing. This is a maintenance improvement that fixes a race condition between CI and versioning workflows without changing any external behavior or API.
- Fixed race condition where version could be bumped while tests were failing by running tests before the version bump step
- Added `npm test` execution to agentic-semver workflow as a gate before semantic versioning step
- Maintained separate CI and versioning workflows with deliberate test duplication for security and coverage reasons
