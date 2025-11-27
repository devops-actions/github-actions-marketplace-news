---
title: sbomify
date: 2025-11-27 21:05:30 +00:00
tags:
  - sbomify
  - GitHub Actions
draft: false
repo: https://github.com/sbomify/github-action
marketplace: https://github.com/marketplace/actions/sbomify
version: v0.7.0
dependentsNumber: "21"
---


Version updated for **https://github.com/sbomify/github-action** to version **v0.7.0**.
- This action is used across all versions by **21** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sbomify) to find the latest changes.

## Release notes

**Changelog: v0.6 → v0.7.0**

**Major Changes:**
- **Switched enrichment from Parley to ecosyste.ms API** - Now uses ecosyste.ms for package metadata enrichment (thank you @andrew)
- **Added SPDX support** - Full support for SPDX 2.2 and 2.3 formats alongside CycloneDX (via new `spdx-tools` dependency)
- **Enhanced telemetry with privacy controls** - Sentry error tracking now respects repository visibility (private repos don't send CI context)

**Improvements:**
- Product releases API now uses `sbom_id` instead of `artifact_id`/`artifact_type`
- Improved release tagging workflow with better ID resolution
- Fixed tool vendor normalization to prevent serialization comparison errors
- Better cache management for enrichment API calls
- User errors (validation/config) are now filtered from telemetry

**Testing:**
- Added comprehensive Sentry filtering tests for GitHub Actions, GitLab CI, and Bitbucket Pipelines
- New tool vendor normalization tests
- Migrated timestamp tests to library-based augmentation
- Added test coverage for SPDX version-specific behavior

**Dependencies:**
- Added: `spdx-tools`, `beartype`, `click`, `isodate`, `ply`, `rdflib`, `semantic-version`, `uritools`, `xmltodict`
