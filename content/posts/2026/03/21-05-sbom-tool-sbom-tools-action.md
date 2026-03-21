---
title: sbom-tools-action
date: 2026-03-21 05:49:36 +00:00
tags:
  - sbom-tool
  - GitHub Actions
draft: false
repo: https://github.com/sbom-tool/sbom-tools-action
marketplace: https://github.com/marketplace/actions/sbom-tools-action
version: v1.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sbom-tool/sbom-tools-action** to version **v1.2.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sbom-tools-action) to find the latest changes.

## Action Summary

The `sbom-tools GitHub Action` integrates `sbom-tools` into GitHub workflows to automate tasks such as SBOM (Software Bill of Materials) diffing, validation, quality scoring, enrichment, verification, and license checking. It simplifies the process of ensuring software supply chain security by providing capabilities like vulnerability detection, compliance checks, and provenance verification. This action supports multiple platforms and enhances security through built-in checksum and cryptographic verification of the tool's binaries.

## Release notes

## Security hardening

### Provenance enforcement
- **New `verify-provenance` input** — tri-state mode: `warn` (default, soft-fail), `require` (hard-fail), `off` (skip). Security-conscious users can now hard-fail when provenance verification fails instead of relying on SHA-256 alone
- `verify-slsa` boolean is deprecated but fully backward-compatible — `true` maps to `warn`, `false` maps to `off`

### Archive extraction safety
- **Zip Slip protection** — archives now extract into an isolated subdirectory, preventing tar/zip path traversal from writing files outside the work directory
- **Symlink rejection** — extracted binaries that are symlinks are rejected before installation

### Input validation
- **`output-file` path traversal** — now rejects absolute paths and `..` components, matching the existing `working-directory` protections

### Credential exposure reduction
- **GH_TOKEN isolation** — `slsa-verifier` now runs with `GH_TOKEN` unset since it verifies locally and does not need API access
- **Flag injection prevention** — positional args are now preceded by `--` separator, preventing values from being interpreted as flags by sbom-tools
