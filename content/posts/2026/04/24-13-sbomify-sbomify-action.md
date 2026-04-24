---
title: sbomify
date: 2026-04-24 13:57:28 +00:00
tags:
  - sbomify
  - GitHub Actions
draft: false
repo: https://github.com/sbomify/sbomify-action
marketplace: https://github.com/marketplace/actions/sbomify
version: v26.2.0
dependentsNumber: "26"
actionType: Docker
---


Version updated for **https://github.com/sbomify/sbomify-action** to version **v26.2.0**.

- This action is used across all versions by **26** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sbomify) to find the latest changes.

## Action Summary

The `sbomify-action` GitHub Action automates the generation, enrichment, and management of Software Bill of Materials (SBOMs) within CI/CD pipelines. It supports multiple SBOM formats (CycloneDX, SPDX) and sources (e.g., lockfiles, Docker images), while also enhancing SBOMs with metadata such as licenses, authors, and dependencies. By enabling cryptographic signing, attestation, and integration with tools like `sbomify`, the action helps ensure a secure and verifiable software supply chain.

## What's Changed

## Highlights

- **BSI TR-03183-2 compliance**: derive §5.2.2 boolean properties, declared licences, CI lifecycle phase, and add manufacturer/filename/compositions for BSI-aligned SBOMs ([#210](https://github.com/sbomify/sbomify-action/pull/210), [#220](https://github.com/sbomify/sbomify-action/pull/220)).
- **PyPI enrichment**: per-component hashes plus release-date and yanked CLE enrichment ([#220](https://github.com/sbomify/sbomify-action/pull/220)).
- **Chainguard base image detection**: reuse SBOMs published by Chainguard when building container images ([#221](https://github.com/sbomify/sbomify-action/pull/221), [#224](https://github.com/sbomify/sbomify-action/pull/224)).
- **NTIA minimum-elements fixes**: add PURL to root component when missing, and correct SPDX 2.x root package detection via `documentDescribes` ([#207](https://github.com/sbomify/sbomify-action/pull/207), [#217](https://github.com/sbomify/sbomify-action/pull/217)).
- **License expression handling**: move compound SPDX expressions from `license.id` to the `expression` field, unblocking validators that reject compound IDs ([#213](https://github.com/sbomify/sbomify-action/pull/213)).
- **Dependency graph integrity**: update `bom-ref` via value mutation and sync dependencies when component versions are overridden ([#206](https://github.com/sbomify/sbomify-action/pull/206)).
- **Security**: bump `lxml`, `cryptography`, `pytest`, `pygments` for vulnerability fixes ([#223](https://github.com/sbomify/sbomify-action/pull/223)).

## What's Changed
* Bump requests from 2.32.5 to 2.33.0 by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/204
* chore: upgrade setup-uv to v8.0.0 (immutable release) by @aurangzaib048 in https://github.com/sbomify/sbomify-action/pull/205
* fix: update bom_ref via value mutation and sync dependency graph by @aurangzaib048 in https://github.com/sbomify/sbomify-action/pull/206
* fix: find SPDX 2.x root package via documentDescribes by @aurangzaib048 in https://github.com/sbomify/sbomify-action/pull/207
* feat(enrichment): manufacturer, filename, compositions for BSI compliance by @aurangzaib048 in https://github.com/sbomify/sbomify-action/pull/210
* fix: move compound SPDX expressions from license.id to expression field by @aurangzaib048 in https://github.com/sbomify/sbomify-action/pull/213
* fix: add PURL to root component when missing (NTIA compliance) by @aurangzaib048 in https://github.com/sbomify/sbomify-action/pull/217
* Bump docker/login-action from 4.0.0 to 4.1.0 by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/209
* Bump pypa/gh-action-pypi-publish from 1.13.0 to 1.14.0 by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/208
* Bump actions/upload-artifact from 7.0.0 to 7.0.1 by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/214
* Bump actions/cache from 5.0.4 to 5.0.5 by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/215
* Add Chainguard base image detection and SBOM reuse by @vpetersson in https://github.com/sbomify/sbomify-action/pull/221
* chore(deps): bump astral-sh/setup-uv from 8.0.0 to 8.1.0 by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/222
* Replace softprops/action-gh-release with gh CLI by @vpetersson in https://github.com/sbomify/sbomify-action/pull/218
* feat: BSI §5.2.2 props, declared licences, CI lifecycle, hashes, yanked CLE by @aurangzaib048 in https://github.com/sbomify/sbomify-action/pull/220
* Bump lxml, cryptography, pytest, pygments for vuln fixes by @vpetersson in https://github.com/sbomify/sbomify-action/pull/223
* Reframe Chainguard warning for end users by @vpetersson in https://github.com/sbomify/sbomify-action/pull/224


**Full Changelog**: https://github.com/sbomify/sbomify-action/compare/v26.1.0...v26.2.0

