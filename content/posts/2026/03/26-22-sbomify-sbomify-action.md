---
title: sbomify
date: 2026-03-26 22:02:41 +00:00
tags:
  - sbomify
  - GitHub Actions
draft: false
repo: https://github.com/sbomify/sbomify-action
marketplace: https://github.com/marketplace/actions/sbomify
version: v26.1.0
dependentsNumber: "25"
actionType: Docker
---


Version updated for **https://github.com/sbomify/sbomify-action** to version **v26.1.0**.
- This action is used across all versions by **25** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sbomify) to find the latest changes.

## Action Summary

The `sbomify-action` GitHub Action automates the generation, enrichment, and management of Software Bill of Materials (SBOMs) in CI/CD pipelines. It supports multiple ecosystems and formats (CycloneDX, SPDX), integrates package metadata from various sources, and enables cryptographic signing, attestation, and compliance tracking. The action simplifies SBOM creation while ensuring traceability and enhancing visibility into software dependencies for improved security and collaboration.

## Release notes

## First CalVer release

This release adopts **CalVer (`YY.MINOR.PATCH`)** versioning per [ADR 0002](https://github.com/sbomify/adr/blob/master/0002-adopt-calver-versioning.md), replacing the previous SemVer scheme.

### Changes
- Adopt CalVer versioning — version now encodes the release year (26 = 2026)
- Update `SECURITY.md` to recommend pinning actions by full commit SHA

## What's Changed
* Harden build process: eliminate curl|bash patterns by @vpetersson in https://github.com/sbomify/sbomify-action/pull/176
* Harden GitHub Actions against supply chain attacks by @vpetersson in https://github.com/sbomify/sbomify-action/pull/175
* Bump actions/cache from 4.3.0 to 5.0.3 by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/177
* Bump actions/attest-build-provenance from 1.4.4 to 4.1.0 by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/178
* Bump actions/upload-artifact from 4.6.2 to 7.0.0 by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/179
* Bump actions/setup-python from 5.6.0 to 6.2.0 by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/181
* Bump actions/checkout from 4.3.1 to 6.0.2 by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/180
* Fix: preserve documentDescribes through SPDX round-trip by @vpetersson in https://github.com/sbomify/sbomify-action/pull/182
* Bump docker/login-action from 3.7.0 to 4.0.0 by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/183
* Fix: sanitize SPDX license expressions in input SBOMs by @vpetersson in https://github.com/sbomify/sbomify-action/pull/184
* Ship our own SBOM in the wheel per PEP 770 by @vpetersson in https://github.com/sbomify/sbomify-action/pull/185
* Remove 'Release' prefix from release names by @vpetersson in https://github.com/sbomify/sbomify-action/pull/187
* Fix AttributeError on LicenseWithExceptionSymbol in SPDX sanitization by @vpetersson in https://github.com/sbomify/sbomify-action/pull/188
* Skip name/version overrides when value is unchanged by @vpetersson in https://github.com/sbomify/sbomify-action/pull/189
* Fix comma/and/or-separated license strings from enrichment sources by @vpetersson in https://github.com/sbomify/sbomify-action/pull/190
* Expose component-purl as GitHub Action input by @vpetersson in https://github.com/sbomify/sbomify-action/pull/191
* feat: integrate mypy strict mode across entire codebase by @aurangzaib048 in https://github.com/sbomify/sbomify-action/pull/193
* Add sbomify logo to README by @vpetersson in https://github.com/sbomify/sbomify-action/pull/194
* Bumps dependencies by @vpetersson in https://github.com/sbomify/sbomify-action/pull/197
* Make PEP 740 digital attestations explicit by @vpetersson in https://github.com/sbomify/sbomify-action/pull/198
* Adopt adr-tools for managing ADRs by @vpetersson in https://github.com/sbomify/sbomify-action/pull/199
* Bump softprops/action-gh-release from 2.5.0 to 2.6.1 by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/196
* Bump astral-sh/setup-uv from 7.3.1 to 7.6.0 by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/195
* Bump actions/cache from 5.0.3 to 5.0.4 by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/201
* Add --working-dir option for monorepo support by @vpetersson in https://github.com/sbomify/sbomify-action/pull/200
* Temporarily disable Trivy due to security vulnerabilities by @vpetersson in https://github.com/sbomify/sbomify-action/pull/202
* Adopt CalVer — release 26.1.0 by @vpetersson in https://github.com/sbomify/sbomify-action/pull/203


**Full Changelog**: https://github.com/sbomify/sbomify-action/compare/v0.14...v26.1.0
