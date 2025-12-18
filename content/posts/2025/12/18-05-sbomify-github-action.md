---
title: sbomify
date: 2025-12-18 05:19:32 +00:00
tags:
  - sbomify
  - GitHub Actions
draft: false
repo: https://github.com/sbomify/github-action
marketplace: https://github.com/marketplace/actions/sbomify
version: v0.8.0
dependentsNumber: "23"
---


Version updated for **https://github.com/sbomify/github-action** to version **v0.8.0**.
- This action is used across all versions by **23** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sbomify) to find the latest changes.

## Release notes

# Changelog for v0.8.0

## Major Features

### Plugin-based Enrichment Architecture
- Complete rewrite of the SBOM enrichment system with a plugin-based architecture
- Queries multiple data sources in priority order to improve NTIA compliance
- 8 data sources implemented: PyPI, Debian, deps.dev, ecosyste.ms, PURL, ClearlyDefined, Repology, and RPM Repo
- Lockfile components are now enriched with metadata instead of removed, preserving dependency graph integrity

### RPM Repository Enrichment (PR #69)
- Native Tier 1 enrichment for RHEL-compatible distros
- Supports: Rocky Linux 8/9, Alma Linux 8/9, CentOS Stream 8/9, Fedora 39-42, Amazon Linux 2/2023
- Extracts license, vendor/supplier, description, homepage, and download URL from official repos
- Intelligent caching at repo level for efficient batch processing

### Dart/Flutter Support (PR #67)
- Added support for Dart packages via pub.dev data source
- Enrichment for `pubspec.lock` files

### CycloneDX 1.7 Support (PR #64)
- Added full support for CycloneDX 1.7 schema
- Schema compliance tests for CycloneDX 1.4, 1.5, 1.6, 1.7

## Bug Fixes

### CycloneDX Tools Format (PR #64)
- Fixed spec compliance: now uses modern tools format (`tools.components`/`tools.services`) for CycloneDX 1.5+
- CycloneDX 1.4 correctly uses legacy Tool format (tools array)
- Sbomify now correctly identified as a service-based tool in 1.5+

### Debian Source Rewrite (PR #67)
- Use correct API endpoint with version-specific lookups
- Added fallback to latest version when specific version not found
- Added VCS URL parsing from `pkg_infos` field

### Augmentation Fix (PR #66)
- Fixed dependency cleanup when filtering lockfile components

## Dependency Upgrades

- **cyclonedx-python-lib**: 8.4.0 to 11.5.0
- **cyclonedx-bom**: 6.1.1 to 7.2.1

## Other Improvements

- PURL-based enrichment for OS packages (deb, rpm, apk) as fallback when ecosyste.ms has no data
- Improved documentation - README overhaul with enrichment architecture details, data sources table, and Mermaid flowchart
- NTIA compliance tests - New comprehensive test suite for NTIA minimum elements
- Container SBOM test data - Added 16 test files covering Alpine, Debian, Ubuntu, and RHEL with both Syft and Trivy scanners
- Standalone mode improvements (PR #60)
- Input sanitization for tagging (PR #68)
- Added .dockerignore for smaller container images
- Sentry filtering - Don't send events to Sentry in tests (PR #62)
