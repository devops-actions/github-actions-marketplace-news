---
title: sbom-tools-action
date: 2026-03-18 21:38:10 +00:00
tags:
  - sbom-tool
  - GitHub Actions
draft: false
repo: https://github.com/sbom-tool/sbom-tools-action
marketplace: https://github.com/marketplace/actions/sbom-tools-action
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sbom-tool/sbom-tools-action** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sbom-tools-action) to find the latest changes.

## Action Summary

The **`sbom-tools` GitHub Action** enables automated software bill of materials (SBOM) management tasks, such as semantic diffing, validation, quality scoring, enrichment with vulnerability data, license compliance checks, and more. It streamlines compliance and security workflows by ensuring SBOM accuracy, detecting changes or vulnerabilities, and verifying artifacts using cryptographic methods like Sigstore and SLSA. With multi-platform support and extensive output options, it simplifies complex SBOM analysis and enhances software supply chain security.

## Release notes

## Update for sbom-tools v0.1.16

### Breaking compatibility fixes
- **Archive naming** — updated from Rust target triples to friendly names (`linux-x86_64`, `macos-aarch64`, etc.)
- **Checksum format** — switched from per-archive `.sha256` files to combined `checksums.sha256`

### New commands
- `enrich` — enrich SBOMs with vulnerability data, EOL detection, and VEX statements
- `verify` — file hash verification and component hash auditing
- `license-check` — license policy engine with allow/deny/review lists
- `vex` — apply, filter, and report on VEX statements

### Provenance verification
- Sigstore bundle verification via `gh attestation verify` (v0.1.16+)
- Falls back to SLSA provenance for older releases

### Supply chain hardening
- **slsa-verifier pinned by SHA-256** — the verification tool itself is now integrity-checked against pinned hashes for all 4 platforms
- **Fixed macOS Intel arch** — slsa-verifier now correctly detects x86_64 vs arm64
- **Exact checksum matching** — grep anchored to exact filename, preventing substring collisions
- **Path traversal protection** — `working-directory` rejects absolute paths and `..` components

### Other updates
- Added `side-by-side` output format
- Added `license-compliance` quality profile
- `fail-on-vex-gap` now applies to both `diff` and `vex` commands
