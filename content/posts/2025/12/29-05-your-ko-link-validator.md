---
title: Link validation
date: 2025-12-29 05:32:15 +00:00
tags:
  - your-ko
  - GitHub Actions
draft: false
repo: https://github.com/your-ko/link-validator
marketplace: https://github.com/marketplace/actions/link-validation
version: 1.20.0
dependentsNumber: "2"
---


Version updated for **https://github.com/your-ko/link-validator** to version **1.20.0**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/link-validation) to find the latest changes.

## Action Summary

The **Link Validator** GitHub Action automates the validation of links and URLs in Markdown documentation by checking GitHub links, external HTTP(S) URLs, local file references, and Datadog URLs. It helps prevent the frustration of broken links by identifying issues like outdated external URLs, inaccessible private repo links, or deprecated GitHub endpoints, and integrates seamlessly into CI workflows to catch errors during PR reviews. Key capabilities include API-based GitHub link validation, HTTP(S) link checking with redirects, and support for both GitHub.com and GitHub Enterprise Server (GHES).

## Release notes

## What's Changed
* Add validation whether there is already an existing link processor for a link by @your-ko in https://github.com/your-ko/link-validator/pull/350
* Checking for "not found" text is not a good idea, HTTP status is enough by @your-ko in https://github.com/your-ko/link-validator/pull/351
* Move ignoring links from Process to Extract by @your-ko in https://github.com/your-ko/link-validator/pull/352
* improve log message by @your-ko in https://github.com/your-ko/link-validator/pull/353
* Make logging more verbose and fix redirect warning in case if the number of redirects exceeded by @your-ko in https://github.com/your-ko/link-validator/pull/354
* Improve logging for the processed file by @your-ko in https://github.com/your-ko/link-validator/pull/355
* Add a function-helper that helps http validator to exclude from validation URLs that belong to the other validators by @your-ko in https://github.com/your-ko/link-validator/pull/356
* Fix workflow example by @your-ko in https://github.com/your-ko/link-validator/pull/360
* Fix enterprise gist validation by @your-ko in https://github.com/your-ko/link-validator/pull/364
* Fix DD monitors generic links validation by @your-ko in https://github.com/your-ko/link-validator/pull/365
---
* chore(deps): Update link-validator to 1.19.1 by @renovate[bot] in https://github.com/your-ko/link-validator/pull/348
* Update anchore/sbom-action action to v0.21.0 by @renovate[bot] in https://github.com/your-ko/link-validator/pull/359


**Full Changelog**: https://github.com/your-ko/link-validator/compare/1.19.1...1.20.0

---

## 🔐 Supply Chain Security

This release includes signed container images with attestations. See [Security Documentation](https://github.com/your-ko/link-validator#security--supply-chain) for verification instructions.

**Container:** `ghcr.io/your-ko/link-validator:1.20.0` ([GHCR package](https://github.com/your-ko/link-validator/pkgs/container/ghcr.io/your-ko/link-validator?tag=1.20.0))
**Digest:** `ghcr.io/your-ko/link-validator@sha256:de5ab02f04670281116cacb1a039cdcfe1dec19359f80c3b5f2ea12bc22cba47`
**Attestations:** [GitHub attestations](https://github.com/your-ko/link-validator/attestations?type=provenance&subject_name=ghcr.io/your-ko/link-validator&subject_digest=sha256:de5ab02f04670281116cacb1a039cdcfe1dec19359f80c3b5f2ea12bc22cba47) • [Container attestations](https://github.com/your-ko/link-validator/pkgs/container/link-validator/sha256:de5ab02f04670281116cacb1a039cdcfe1dec19359f80c3b5f2ea12bc22cba47)
**Artifacts:** [SBOM](https://github.com/your-ko/link-validator/releases/download/1.20.0/sbom.spdx.json) • [Provenance](https://github.com/your-ko/link-validator/releases/download/1.20.0/provenance.intoto.jsonl) • [Checksums](https://github.com/your-ko/link-validator/releases/download/1.20.0/SHASUMS256.txt)


