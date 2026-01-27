---
title: check-version-before-release
date: 2026-01-27 05:39:21 +00:00
tags:
  - digicatapult
  - GitHub Actions
draft: false
repo: https://github.com/digicatapult/check-version
marketplace: https://github.com/marketplace/actions/check-version-before-release
version: v1.5.36
dependentsNumber: "35"
---


Version updated for **https://github.com/digicatapult/check-version** to version **v1.5.36**.
- This action is used across all versions by **35** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/check-version-before-release) to find the latest changes.

## Action Summary

This GitHub Action verifies and compares the versions defined in `package.json`, `package-lock.json`, `Cargo.toml`, and `pyproject.toml` to ensure they are consistent and higher than the latest published tag based on semantic versioning. It automates version validation across different package managers (npm, Cargo, and Poetry), helping maintain versioning accuracy and preventing accidental downgrades or mismatches. Key capabilities include detecting new versions, identifying pre-releases, and supporting customizable tag filtering.

## Release notes

## Changes
**[Minimise workflow permissions](https://github.com/digicatapult/check-version/pull/488)**

### Linked Tickets

ENG-259


### High Level Description

This PR is part of a series to set the permissions explicitly with the minimum necessary. It should also have the effect of reducing CodeQL warnings wherever GitHub Code Scanning has been enabled.
