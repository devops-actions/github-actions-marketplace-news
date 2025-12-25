---
title: CI Evidence Pack
date: 2025-12-25 05:24:23 +00:00
tags:
  - OrygnsCode
  - GitHub Actions
draft: false
repo: https://github.com/OrygnsCode/ci-evidence-pack
marketplace: https://github.com/marketplace/actions/ci-evidence-pack
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/OrygnsCode/ci-evidence-pack** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ci-evidence-pack) to find the latest changes.

## Action Summary

The **CI Evidence Pack Generator** is a GitHub Action and CLI tool designed to create secure, deterministic evidence bundles for compliance and audit purposes. It automates the collection of source code context, build artifacts, dependencies, and SBOMs into a signed, verifiable tarball, providing auditable proof of software builds for regulated environments (e.g., SOC 2, ISO). The tool ensures security through keyless signing, strict verification of manifests and signatures, and comprehensive metadata collection.

## Release notes

## CI Evidence Pack Generator v1.0.0

First stable release of **ci-evidence-pack**: a CLI + GitHub Action that generates a deterministic, read-only CI evidence bundle for audits/compliance.

### Highlights
- Generates a single `.tar.gz` evidence bundle containing:
  - Git and CI run metadata
  - Dependency snapshot (`pip_freeze.txt` when Python project detected)
  - SBOM output (CycloneDX via `cyclonedx-py` when available; Syft optional)
  - User-included build artifacts / reports
  - A strict SHA256 manifest for integrity verification
- **Verification built-in**: `ci-evidence-pack verify` enforces strict structure, blocks unsafe paths, and checks hashes.
- **Optional signing**: supports keyless signing via **Sigstore Cosign** in GitHub Actions (OIDC).

### GitHub Action
- The repository is publishable as a GitHub Action (root `action.yml`).
- Recommended workflow permissions when signing:
  - `contents: read`
  - `id-token: write`

### Notes on determinism
Output is bit-for-bit reproducible when inputs are held constant (included files, `SOURCE_DATE_EPOCH`, and captured CI env vars such as `GITHUB_RUN_ID`).

### How to use
- CLI:
  - `ci-evidence-pack pack`
  - `ci-evidence-pack verify dist/ci-evidence-pack_*.tar.gz`
- GitHub Actions:
  - `uses: OrygnsCode/ci-evidence-pack@v1.0.0`

### Compatibility
- Python package published as `ci-evidence-pack`
- Designed for CI environments and local runs

---
If you hit any issues, open an issue with your workflow YAML + the `--json` output from `pack` or `verify`.
