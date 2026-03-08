---
title: CycloneDX Crystal Action
date: 2026-03-08 21:22:28 +00:00
tags:
  - hahwul
  - GitHub Actions
draft: false
repo: https://github.com/hahwul/cyclonedx-cr
marketplace: https://github.com/marketplace/actions/cyclonedx-crystal-action
version: v1.1.0
dependentsNumber: "8"
actionType: Docker
---


Version updated for **https://github.com/hahwul/cyclonedx-cr** to version **v1.1.0**.
- This action is used across all versions by **8** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cyclonedx-crystal-action) to find the latest changes.

## Action Summary

The `cyclonedx-cr` GitHub Action automates the generation of CycloneDX Software Bill of Materials (SBOM) for Crystal projects by parsing `shard.yml` and `shard.lock` files. It supports multiple output formats (JSON, XML, CSV) and CycloneDX specification versions, making it easier to document and analyze dependencies for security and compliance purposes. The action is lightweight, fast, and offers features like Package URL (PURL) generation and Docker support for seamless integration into development workflows.

## Release notes

## What's Changed
### New CycloneDX Spec Features

-  Dependency Graph (dependencies): BOM now includes component dependency relationships, mapping the main application to all its dependencies.
-  Component bom-ref: Each component is assigned a unique reference identifier (name@version), enabling dependency graph linkage.
-  Metadata timestamp: SBOM generation timestamp is now included in RFC3339 format.
-  Component scope: Dependencies are classified as required (runtime) or optional (development) by parsing development_dependencies from shard.yml.
-  Hash Model (hashes): Added CycloneDX::Hash model for component integrity verification (algorithm + content).
-  License url: Licenses now support an optional URL field.
-  ExternalReference comment: External references now support an optional comment field.

### Improvements

-  ShardFile parser now reads dependencies and development_dependencies sections from shard.yml.
-  Full JSON and XML serialization support for all new fields.

**Full Changelog**: https://github.com/hahwul/cyclonedx-cr/compare/v1.0.2...v1.1.0
