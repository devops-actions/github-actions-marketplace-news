---
title: sbomify
date: 2026-01-20 13:42:18 +00:00
tags:
  - sbomify
  - GitHub Actions
draft: false
repo: https://github.com/sbomify/github-action
marketplace: https://github.com/marketplace/actions/sbomify
version: v0.11
dependentsNumber: "24"
---


Version updated for **https://github.com/sbomify/github-action** to version **v0.11**.
- This action is used across all versions by **24** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sbomify) to find the latest changes.

## Action Summary

The "sbomify GitHub Action" automates the generation, enrichment, and management of Software Bill of Materials (SBOMs) within CI/CD pipelines. It supports multiple SBOM formats (CycloneDX and SPDX), integrates metadata from various sources, and enables cryptographic signing and attestation for secure software supply chain management. This action simplifies compliance, enhances traceability, and facilitates vulnerability management by creating enriched and verifiable SBOMs during the build process.

## Release notes

## Highlights

- **PyPI Package** - Install via `pip install sbomify-action` and use outside CI/CD
- **Click-based CLI** - Full command-line interface with `--help` on all commands
- **SPDX Format Support** - New `SBOM_FORMAT` env var for SPDX output
- **Audit Trail** - Every SBOM modification logged with timestamps for attestation
- **License Database** - Pre-computed license data for 30+ Linux distro versions
- **Rust Support** - Native cargo-cyclonedx generator + crates.io enrichment

---

## New Features

### Distribution & CLI
- PyPI package: `pip install sbomify-action` (#104, #124, #125, #126)
- Click-based CLI with full environment variable parity (#128)

### SBOM Formats & Output
- SPDX format support via `SBOM_FORMAT=spdx` (#118, #119, #121)
- CDX/SPDX license sanitization parity (#129)
- Comprehensive audit trail for all SBOM modifications (#130)
- Rich console output with transformation tracking (#101)

### Enrichment & Augmentation
- Pre-computed license database for Linux distros (#122)
  - Debian, Ubuntu, Alpine, Fedora, Amazon Linux, CentOS Stream, AlmaLinux, Rocky Linux, Oracle Linux, openSUSE, Arch, Wolfi/Chainguard, Distroless
- Architecture-agnostic PURL lookup in license database (#127)
- Dedicated Lifecycle plugin for CLE data (#123)
- Augmentation provider plugin architecture (#99)
- VCS auto-detection from CI environment (#107)
- Manufacturer data support (#110)
- crates.io enrichment source for Rust packages (#100)

### Generation
- cargo-cyclonedx as native Rust SBOM generator (#102)
- `COMPONENT_PURL` environment variable for PURL override (#113)

### Processing & Releases
- SBOM processor plugin system with sbomify_releases processor (#105)
- Link top-level components to root in CycloneDX dependency graph (#115)

## Improvements

### Docker Image
- Multi-arch support (amd64/arm64) and modernized base images (#92)
- Lazy Java/Maven installation to reduce image size (#93)
- Lazy Go installation for cdxgen Go module scanning (#96)
- Install cdxgen from bun lockfile (#90)

### PURL & Version Handling
- Fix PURL double-encoding in ecosyste.ms API calls (#131)
- Update PURL version when `COMPONENT_VERSION` is set (#108)
- Use short git hash for SBOM version, update bom-ref consistently (#112)

### Compliance & Validation
- Align NTIA compliance checkers with NTIA 2021 standard (#97)
- Improved CycloneDX dependency graph warning display (#111)

### Bug Fixes
- De-duplicate VCS URL normalization log messages (#91)
- Skip redundant component name override when name already matches (#94)
- Resolve DUPLICATE_NAME error recovery in releases API (#114)
- Handle 409 DUPLICATE_ARTIFACT as success in release tagging (#117)
- Minor ecosyste.ms fix (#95)
- Minor bug fixes in npm handling (#116)

### Infrastructure
- Split delivery between stage and prod (#109)
- Set correct version in output (#106, #120)
- Disable Sentry telemetry globally for tests (#132)

## Breaking Changes

- Removed `rpmrepo` and `ubuntu` enrichment sources (replaced by license database)
- Test data restructured to versioned distro-specific files

## Stats

- **43 PRs merged**
- **218 commits**
- **262 files changed**

---

**Full Changelog**: https://github.com/sbomify/github-action/compare/v0.10...v0.11
