---
title: check-version-before-release
date: 2026-01-26 21:45:56 +00:00
tags:
  - digicatapult
  - GitHub Actions
draft: false
repo: https://github.com/digicatapult/check-version
marketplace: https://github.com/marketplace/actions/check-version-before-release
version: v1.5.35
dependentsNumber: "35"
---


Version updated for **https://github.com/digicatapult/check-version** to version **v1.5.35**.
- This action is used across all versions by **35** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/check-version-before-release) to find the latest changes.

## Action Summary

This GitHub Action automates the process of verifying and comparing version numbers in project files (e.g., `package.json`, `package-lock.json`, `Cargo.toml`, and `pyproject.toml`) against the latest published Git tag using semantic versioning rules. It ensures version consistency across files and validates that the local version is higher than the latest release, helping prevent versioning errors in software projects. Key capabilities include support for multiple package managers (npm, Cargo, and Poetry) and optional failure handling for identical versions.

## Release notes

## Changes
**[Minimise workflow permissions](https://github.com/digicatapult/check-version/pull/488)**

### Linked Tickets

ENG-259


### High Level Description

This PR is part of a series to set the permissions explicitly with the minimum necessary. It should also have the effect of reducing CodeQL warnings wherever GitHub Code Scanning has been enabled.
