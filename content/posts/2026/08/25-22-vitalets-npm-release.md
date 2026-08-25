---
title: npm release
date: 2026-08-25 22:34:46 +00:00
tags:
  - vitalets
  - GitHub Actions
draft: false
repo: https://github.com/vitalets/npm-release
marketplace: https://github.com/marketplace/actions/npm-release
version: v2.0.0
dependentsNumber: "3"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of creating and publishing a new version of an npm package. It handles both stable releases and beta releases by updating the `package.json` and `CHANGELOG.md`, committing and tagging changes, and then publishing to npm using OIDC trusted publishing. The action is configured through workflow inputs for specifying release type and whether to skip npm publishing or perform a dry run.
---


Version updated for **https://github.com/vitalets/npm-release** to version **v2.0.0**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/npm-release) to find the latest changes.

## Action Summary

This GitHub Action automates the process of creating and publishing a new version of an npm package. It handles both stable releases and beta releases by updating the `package.json` and `CHANGELOG.md`, committing and tagging changes, and then publishing to npm using OIDC trusted publishing. The action is configured through workflow inputs for specifying release type and whether to skip npm publishing or perform a dry run.

## What's Changed

### Changed

- Use separate stable and beta release dropdowns with npm-compatible version transitions
- Let `beta-patch`, `beta-minor`, and `beta-major` start or continue their matching beta line
- Run dependency-free TypeScript sources directly without a build step
- Add a self-release workflow that always skips npm publishing

### Fixed

- Increment the beta suffix when the selected beta operation matches the current beta line
- Reject lower release operations while on a minor or major beta line

