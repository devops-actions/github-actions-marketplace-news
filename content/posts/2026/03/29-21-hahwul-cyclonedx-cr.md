---
title: CycloneDX Crystal Action
date: 2026-03-29 21:51:34 +00:00
tags:
  - hahwul
  - GitHub Actions
draft: false
repo: https://github.com/hahwul/cyclonedx-cr
marketplace: https://github.com/marketplace/actions/cyclonedx-crystal-action
version: v1.2.0
dependentsNumber: "8"
actionType: Docker
---


Version updated for **https://github.com/hahwul/cyclonedx-cr** to version **v1.2.0**.

- This action is used across all versions by **8** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cyclonedx-crystal-action) to find the latest changes.

## Action Summary

The `cyclonedx-cr` GitHub Action is a tool designed to automate the generation of CycloneDX Software Bill of Materials (SBOMs) for Crystal shard projects. It processes `shard.yml` and `shard.lock` files to create SBOMs in various formats (JSON, XML, CSV) that comply with multiple CycloneDX specification versions. This action simplifies dependency analysis, enhances software supply chain transparency, and includes features like Package URL (PURL) generation and Docker support for flexible usage.

## What's Changed

## What's Changed

### Added
- Executable entrypoints for `shards install` support
- `executables` field in `shard.yml` for shards install support
- CHANGELOG file

### Changed
- Remove old Crystal version CI
- Bump sigstore/cosign-installer from 4.0.0 to 4.1.1

### Fixed
- Fix version mismatch, harden entrypoint, and improve error handling

**Full Changelog**: https://github.com/hahwul/cyclonedx-cr/compare/v1.1.0...v1.2.0
