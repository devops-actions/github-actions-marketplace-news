---
title: CycloneDX Crystal Action
date: 2026-04-04 06:10:36 +00:00
tags:
  - hahwul
  - GitHub Actions
draft: false
repo: https://github.com/hahwul/cyclonedx-cr
marketplace: https://github.com/marketplace/actions/cyclonedx-crystal-action
version: v1.3.0
dependentsNumber: "8"
actionType: Docker
---


Version updated for **https://github.com/hahwul/cyclonedx-cr** to version **v1.3.0**.

- This action is used across all versions by **8** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cyclonedx-crystal-action) to find the latest changes.

## Action Summary

The `cyclonedx-cr` GitHub Action automates the generation of CycloneDX Software Bill of Materials (SBOM) for Crystal projects by analyzing `shard.yml` and `shard.lock` files. It supports multiple output formats (JSON, XML, CSV), adheres to various CycloneDX specification versions, and simplifies dependency tracking by automatically generating Package URLs (PURLs). This tool streamlines SBOM creation, making it easier to audit dependencies and enhance software supply chain security.

## What's Changed

## What's Changed

### Added
- Structural BOM validator with field path error reporting
- Annotations, formulation, and declarations support
- BOM JSON deserialization with comprehensive tests
- Pedigree and evidence support for supply chain transparency
- Provides field to Dependency for capability expression
- Compositions support for completeness assertions
- Services support for SaaSBOM
- Vulnerabilities support for VDR/VEX
- Properties support across BOM, Component, and Metadata

### Changed
- Expand Component model with missing spec fields
- Expand License model with text, bom-ref, and acknowledgement
- Expand Metadata model with lifecycles, manufacture, and supplier
- Improve code quality, validation, and test coverage
- Standardize CI workflow and remove ameba lint

### Fixed
- XML ordering, element names, and deserialization issues

**Full Changelog**: https://github.com/hahwul/cyclonedx-cr/compare/v1.2.0...v1.3.0
