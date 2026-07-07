---
title: MaintainerOps AI
date: 2026-07-07 05:11:57 +00:00
tags:
  - rtonf
  - GitHub Actions
draft: false
repo: https://github.com/rtonf/maintainerops-ai
marketplace: https://github.com/marketplace/actions/maintainerops-ai
version: v0.1.14
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/rtonf/maintainerops-ai** to version **v0.1.14**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/maintainerops-ai) to find the latest changes.

## What's Changed

# v0.1.14 Marketplace Snapshot and Package Metadata Consistency

MaintainerOps AI `v0.1.14` is a small consistency release for public package and Marketplace evidence.

## Changes

- Updated npm package repository metadata to the canonical `git+https://github.com/rtonf/maintainerops-ai.git` URL.
- Corrected the README GitHub Action example from the stale `v0.1.12` tag to the currently verified Marketplace latest tag before release.
- Added an API-free security diff review for the metadata and Marketplace snapshot cleanup.
- Tracked the release workflow in Issue #85.

## Verification

- `npm run verify`
- `git diff --check`
- `npm view maintainerops-ai version dist-tags --json`
- GitHub Marketplace public listing check

## Notes

This release does not change runtime behavior, model prompts, GitHub permissions, authorization boundaries, or package execution logic. It exists to keep Marketplace-facing documentation and package metadata aligned with the public release process.

