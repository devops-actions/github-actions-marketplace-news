---
title: Setup Goose CLI
date: 2026-01-08 13:21:25 +00:00
tags:
  - clouatre-labs
  - GitHub Actions
draft: false
repo: https://github.com/clouatre-labs/setup-goose-action
marketplace: https://github.com/marketplace/actions/setup-goose-cli
version: v1.0.6
dependentsNumber: "?"
---


Version updated for **https://github.com/clouatre-labs/setup-goose-action** to version **v1.0.6**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-goose-cli) to find the latest changes.

## Action Summary

The "Setup Goose Action" GitHub Action simplifies the installation and caching of the Goose AI CLI tool in GitHub workflows. It automates the setup process, enabling streamlined integration of Goose AI capabilities, such as AI-based analysis of structured tool outputs (e.g., linting results), into CI/CD pipelines. This action addresses the need for efficient and secure utilization of AI tools while offering caching and version management to optimize performance.

## Release notes

## Summary

Updates default Goose version to v1.19.1 and adds major new features for version management, caching, and error handling.

## What's Changed

### Features
- Default Goose version updated to v1.19.1 (#47)
- Add `check-latest` input for automatic version resolution (#66)
- Add `cache-hit` output for conditional workflow logic (#63)
- Add cache restore-keys with version and OS fallback (#62)
- Improve error handling for version validation and downloads (#65)

### Documentation
- Add permissions section and improve input descriptions (#67)
- Document checksum verification limitation (#64)

### Infrastructure
- Enable renovate automerge for GitHub Actions (#46)
- Remove macOS support to reduce CI costs (#45)
- Update actions/cache action to v5 (#43)
- Align renovate config with aptu repo format (#60)

### Bug Fixes
- Ensure goose-version output is set on cache hits (#61)

## Goose v1.19.1 Highlights

The updated default Goose version (v1.19.1) is the latest stable release from the upstream project.

## Breaking Changes

None - this release is fully backward compatible with v1.0.5.

**Full Changelog**: https://github.com/clouatre-labs/setup-goose-action/compare/v1.0.5...v1.0.6

