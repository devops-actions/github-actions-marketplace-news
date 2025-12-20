---
title: sbomify
date: 2025-12-20 05:32:57 +00:00
tags:
  - sbomify
  - GitHub Actions
draft: false
repo: https://github.com/sbomify/github-action
marketplace: https://github.com/marketplace/actions/sbomify
version: v0.9
dependentsNumber: "23"
---


Version updated for **https://github.com/sbomify/github-action** to version **v0.9**.
- This action is used across all versions by **23** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sbomify) to find the latest changes.

## Release notes

## Changelog v0.9

### New Features
- **Plugin architecture for SBOM generation** - Modular generator system with priority-based selection and automatic fallback (cyclonedx-py → Trivy → Syft)
- **Ubuntu APT repository enrichment** - Native metadata source for `pkg:deb/ubuntu/*` packages (LTS 18.04-24.04 + 24.10)
- **Built-in schema validation** - JSON Schema validation for generated SBOMs

### Bug Fixes
- Fixed NTIA compliance issues for supplier and version fields
- Improved author extraction from PyPI `author_email` field
- Added version inheritance for lockfile components

### Documentation
- Added ADR-0001: Plugin Architecture for Extensibility
