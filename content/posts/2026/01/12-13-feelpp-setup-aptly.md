---
title: Setup aptly
date: 2026-01-12 13:37:26 +00:00
tags:
  - feelpp
  - GitHub Actions
draft: false
repo: https://github.com/feelpp/setup-aptly
marketplace: https://github.com/marketplace/actions/setup-aptly
version: v2.2.5
dependentsNumber: "?"
---


Version updated for **https://github.com/feelpp/setup-aptly** to version **v2.2.5**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-aptly) to find the latest changes.

## Action Summary

The `setup-aptly` GitHub Action simplifies the installation and usage of the `aptly` tool for managing Debian/Ubuntu package repositories. It automates tasks such as installing `aptly`, publishing packages to the Feel++ APT repository using the modern `feelpp-aptly-publisher` tool, and managing multi-component repository structures. Additionally, it provides features like built-in caching, automatic PATH configuration, and recovery of the aptly database, streamlining the workflow for developers managing APT repositories.

## Release notes

## Fixed

- Rebuild command array properly to ensure all arguments are passed
- Add each argument separately with proper quoting
- Add debug output showing the full command being executed
- Use full path to venv command for reliability

## Details

The bash array expansion wasn't working correctly in the composite action context, causing arguments to be lost. Now builds the command array incrementally, adding each argument separately.

**Full Changelog**: https://github.com/feelpp/setup-aptly/compare/v2.2.4...v2.2.5
