---
title: sbomify
date: 2026-03-02 21:30:18 +00:00
tags:
  - sbomify
  - GitHub Actions
draft: false
repo: https://github.com/sbomify/sbomify-action
marketplace: https://github.com/marketplace/actions/sbomify
version: v0.14
dependentsNumber: "24"
actionType: Docker
---


Version updated for **https://github.com/sbomify/sbomify-action** to version **v0.14**.
- This action is used across all versions by **24** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sbomify) to find the latest changes.

## Action Summary

The `sbomify-action` GitHub Action is designed to generate, enrich, and manage Software Bill of Materials (SBOMs) within CI/CD pipelines. It automates the creation of SBOMs from various sources such as lockfiles or Docker images, enriches them with metadata from package registries, and supports cryptographic signing and attestation to ensure a secure chain of trust. Additionally, it offers features like business metadata augmentation, version control system auto-detection, and integration with the sbomify platform for collaboration and vulnerability management.

## Release notes

# New Features

## SPDX 3.0.1 Support

Full SPDX 3.0.1 support across the entire pipeline — generation, augmentation, enrichment, and upload. (#166, #172)

## Yocto/OpenEmbedded CLI Command

New yocto CLI command for batch processing of Yocto/OpenEmbedded SPDX files, with support for both SPDX 2.2 and SPDX 3 formats. Includes:
- --visibility flag for setting component visibility (#169)
- --max-packages hidden option for debug/testing
- PURL injection for Yocto SBOMs (#171)
- Single-file SPDX 3 support in the Yocto pipeline

## Pipdeptree Integration

New integration with pipdeptree for transitive dependency discovery, improving the completeness of Python SBOMs. (#163)

## Caching Support

Added caching for license databases, Trivy, and Syft to speed up repeated runs. (#153)

## Standalone Additional-Packages-Only Mode

New --lock-file none mode to inject additional packages without requiring a lockfile. (#164)

## Gzip Compression for Uploads

Large SBOM uploads are now gzip-compressed to avoid upstream timeouts. (#169)

# Improvements

- Configurable upload timeout and plan limit early-stop (#169)
- Renamed project references from github-action to sbomify-action (#168)
- Updated Trivy from 0.68.2 to 0.69.2
- Bumped all dependencies (#173)
- Refactored README with collapsible sections and added Yocto documentation
- Added FOSDEM 2026 talk video to README (#167)

# Bug Fixes

- Fix SPDX 3 roundtrip: preserve elements, restore type prefixes, fix property names (#172)
- Fix SPDX 3 version override not updating PURL to match (#166)
- Fix unsupported format/version combo producing unhandled ValueError
- Fix SPDX namespace uniqueness and test assertion guards
- Fix data corruption, sanitization, error handling, and test gaps (#173)
- Fix Integration Tests CI cache: include Python version in key

# What's Changed

- Add caching support for license DBs, Trivy, and Syft by @vpetersson in https://github.com/sbomify/sbomify-action/pull/153
- Add standalone additional-packages-only mode (--lock-file none) by @vpetersson in https://github.com/sbomify/sbomify-action/pull/164
- Add pipdeptree integration for transitive dependency discovery by @vpetersson in https://github.com/sbomify/sbomify-action/pull/163
- Add yocto CLI command for Yocto/OpenEmbedded SPDX batch processing by @vpetersson in https://github.com/sbomify/sbomify-action/pull/165
- Add FOSDEM 2026 talk video to README by @vpetersson in https://github.com/sbomify/sbomify-action/pull/167
- Add SPDX 3.0.1 support across the full pipeline by @vpetersson in https://github.com/sbomify/sbomify-action/pull/166
- Rename project references from github-action to sbomify-action by @vpetersson in https://github.com/sbomify/sbomify-action/pull/168
- Yocto pipeline: error handling, gzip uploads, visibility flag by @vpetersson in https://github.com/sbomify/sbomify-action/pull/169
- Add yocto PURL injection for SPDX 2.2 and SPDX 3 by @vpetersson in https://github.com/sbomify/sbomify-action/pull/171
- Fix SPDX 3 roundtrip: preserve elements, type prefixes, property names by @vpetersson in https://github.com/sbomify/sbomify-action/pull/172
- Fix code review issues from v0.13 release audit by @vpetersson in https://github.com/sbomify/sbomify-action/pull/173

Full Changelog: https://github.com/sbomify/sbomify-action/compare/v0.13...v0.14
