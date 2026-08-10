---
title: Custom Version Bumper
date: 2026-08-10 21:31:00 +00:00
tags:
  - so1omon563
  - GitHub Actions
draft: false
repo: https://github.com/so1omon563/custom-semver-bumper
marketplace: https://github.com/marketplace/actions/custom-version-bumper
version: v1.0.5
dependentsNumber: "14"
actionType: Composite
actionSummary: |
  The GitHub Action `Custom Version Bumper` automatically tags every merge commit with a semver-compliant Git tag. It supports bumping based on commit message markers, pre-release tags, and can default to a patch bump if no marker is present. The action handles version numbers, supports Conventional Commits, and allows for customization of tag prefixes and defaults.
---


Version updated for **https://github.com/so1omon563/custom-semver-bumper** to version **v1.0.5**.

- This action is used across all versions by **14** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/custom-version-bumper) to find the latest changes.

## Action Summary

The GitHub Action `Custom Version Bumper` automatically tags every merge commit with a semver-compliant Git tag. It supports bumping based on commit message markers, pre-release tags, and can default to a patch bump if no marker is present. The action handles version numbers, supports Conventional Commits, and allows for customization of tag prefixes and defaults.

## What's Changed

### 🐛 Bug Fixes
- preserve post-merge release trigger (#9) (`949dc37`)
- harden marker detection and issue reporting #patch #release (#8) (`9b08b31`)
