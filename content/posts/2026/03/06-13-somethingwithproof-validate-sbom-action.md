---
title: Validate SBOM
date: 2026-03-06 13:46:05 +00:00
tags:
  - somethingwithproof
  - GitHub Actions
draft: false
repo: https://github.com/somethingwithproof/validate-sbom-action
marketplace: https://github.com/marketplace/actions/validate-sbom
version: v1.1.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/somethingwithproof/validate-sbom-action** to version **v1.1.0**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/validate-sbom) to find the latest changes.

## Action Summary

The `validate-sbom-action` GitHub Action validates Software Bill of Materials (SBOM) files against CycloneDX and SPDX JSON schemas entirely offline, ensuring no network dependency during validation. It automates the detection of SBOM format and specification version, providing outputs like validation status, detected format, and error counts, which help streamline SBOM validation workflows and identify issues early in CI/CD pipelines.

## Release notes

## Changed

- Remove dead `strict` input from action.yml (was declared but never consumed by validate.sh)
- Replace `npm install 2>/dev/null` with `--loglevel=error` to surface install failures
- Rename `test/invalid-missing-components.json` to `test/invalid-missing-required-fields.json`

## Added

- README: failure modes table, security model, SHA pin guidance, compatibility notes, permissions in examples
- SECURITY.md with vulnerability disclosure policy
- CODEOWNERS file
- `docs/marketplace-checklist.md`
- `package.json` + lockfile to pin ajv-cli and ajv-formats versions
- npm ecosystem in Dependabot config
- Test fixtures for CycloneDX 1.4, 1.7 and SPDX 2.2 (full version coverage)
- `timeout-minutes` and `concurrency` on CI workflow

## Fixed

- CHANGELOG no longer claims "Strict validation mode" (feature never existed)
- npm install errors now visible in CI logs

## Verification

- CI: 10/10 checks pass (9 test matrix + lint)
- Full test coverage: CycloneDX 1.4-1.7, SPDX 2.2-2.3, 3 invalid fixtures
