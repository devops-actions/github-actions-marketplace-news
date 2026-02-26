---
title: Link validation
date: 2026-02-26 21:30:23 +00:00
tags:
  - your-ko
  - GitHub Actions
draft: false
repo: https://github.com/your-ko/link-validator
marketplace: https://github.com/marketplace/actions/link-validation
version: 2.3.0
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/your-ko/link-validator** to version **2.3.0**.
- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/link-validation) to find the latest changes.

## Action Summary

The Link Validator GitHub Action automates the detection of broken links in documentation, including internal GitHub links, external HTTP(S) URLs, and local Markdown file paths. It is designed to prevent issues caused by link rot, file restructuring, or API changes by validating links through API calls and running checks during CI workflows. This tool helps maintain high-quality documentation by catching invalid links during pull request reviews or repository-wide scans.

## Release notes

## What's Changed
* Fix test case name by @your-ko in https://github.com/your-ko/link-validator/pull/433
* Set better http header by @your-ko in https://github.com/your-ko/link-validator/pull/431
* Fix incorrect validation routing for GitHub labels by @your-ko in https://github.com/your-ko/link-validator/pull/432
* Fix comment by @your-ko in https://github.com/your-ko/link-validator/pull/435
* simplify constructor by @your-ko in https://github.com/your-ko/link-validator/pull/436
* Implement HTTP validation in GitHub validator for the urls, that are not supported by the GitHub API by @your-ko in https://github.com/your-ko/link-validator/pull/428
---
* chore(deps): Update link-validator to 2.2.2 by @renovate[bot] in https://github.com/your-ko/link-validator/pull/424
* fix(deps): update module github.com/google/go-github/v82 to v83 by @renovate[bot] in https://github.com/your-ko/link-validator/pull/423
* chore(deps): update dependency golangci/golangci-lint to v2.10.1 by @renovate[bot] in https://github.com/your-ko/link-validator/pull/425
* fix(deps): update module github.com/datadog/datadog-api-client-go/v2 to v2.55.0 by @renovate[bot] in https://github.com/your-ko/link-validator/pull/426
* chore(deps): update module github.com/google/uuid to v1.6.0 by @renovate[bot] in https://github.com/your-ko/link-validator/pull/427
* chore(deps): update anchore/sbom-action action to v0.23.0 by @renovate[bot] in https://github.com/your-ko/link-validator/pull/429


**Full Changelog**: https://github.com/your-ko/link-validator/compare/2.2.2...2.3.0

---

## 🔐 Supply Chain Security

This release includes signed container images with attestations. See [Security Documentation](https://github.com/your-ko/link-validator#security--supply-chain) for verification instructions.

**Container:** `ghcr.io/your-ko/link-validator:2.3.0` ([GHCR package](https://github.com/your-ko/link-validator/pkgs/container/ghcr.io/your-ko/link-validator?tag=2.3.0))
**Digest:** `ghcr.io/your-ko/link-validator@sha256:66aba359c947b3006c7ad565176fe67ea6dbb5631cad42598efd4c0c953bac80`
**Attestations:** [GitHub attestations](https://github.com/your-ko/link-validator/attestations?type=provenance&subject_name=ghcr.io/your-ko/link-validator&subject_digest=sha256:66aba359c947b3006c7ad565176fe67ea6dbb5631cad42598efd4c0c953bac80) • [Container attestations](https://github.com/your-ko/link-validator/pkgs/container/link-validator/sha256:66aba359c947b3006c7ad565176fe67ea6dbb5631cad42598efd4c0c953bac80)
**Artifacts:** [SBOM](https://github.com/your-ko/link-validator/releases/download/2.3.0/sbom.spdx.json) • [Provenance](https://github.com/your-ko/link-validator/releases/download/2.3.0/provenance.intoto.jsonl) • [Checksums](https://github.com/your-ko/link-validator/releases/download/2.3.0/SHASUMS256.txt)


