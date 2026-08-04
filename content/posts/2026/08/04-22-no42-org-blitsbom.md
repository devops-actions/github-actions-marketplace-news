---
title: blitsbom SBOM report
date: 2026-08-04 22:35:51 +00:00
tags:
  - no42-org
  - GitHub Actions
draft: false
repo: https://github.com/no42-org/blitsbom
marketplace: https://github.com/marketplace/actions/blitsbom-sbom-report
version: v0.7.1
dependentsNumber: "3"
actionType: Composite
actionSummary: |
  blitsbom is a browser-based tool that converts CycloneDX and SPDX SBOM files into clean, searchable HTML reports, which can be used for dependency management and license verification. It offers a zero-install experience by running directly from a file:// URL without any external dependencies. The action can also generate standalone HTML reports from an SBOM and upload them to GitHub Actions workflows for automated release reporting.
---


Version updated for **https://github.com/no42-org/blitsbom** to version **v0.7.1**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/blitsbom-sbom-report) to find the latest changes.

## Action Summary

blitsbom is a browser-based tool that converts CycloneDX and SPDX SBOM files into clean, searchable HTML reports, which can be used for dependency management and license verification. It offers a zero-install experience by running directly from a file:// URL without any external dependencies. The action can also generate standalone HTML reports from an SBOM and upload them to GitHub Actions workflows for automated release reporting.

## What's Changed

## Highlights
- Maintenance release with no functional changes to the viewer or the report action: it refreshes every dependency updated since v0.7.0 (12 update PRs across npm, GitHub Actions and Docker).
- The release SBOM is now generated with syft v1.49.0, up from v1.42.3 (#190), picking up several catalogers' accuracy fixes.

**Full Changelog**: https://github.com/no42-org/blitsbom/compare/v0.7.0...v0.7.1

