---
title: Link validation
date: 2026-03-27 13:55:39 +00:00
tags:
  - your-ko
  - GitHub Actions
draft: false
repo: https://github.com/your-ko/link-validator
marketplace: https://github.com/marketplace/actions/link-validation
version: 2.3.2
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/your-ko/link-validator** to version **2.3.2**.
- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/link-validation) to find the latest changes.

## Action Summary

The **Link Validator GitHub Action** automates the detection of broken links in documentation by validating GitHub links, HTTP(S) URLs, local file paths, and Datadog references. It helps prevent issues caused by broken or outdated links, such as misplaced files, third-party link rot, or deprecated API endpoints, ensuring documentation remains accurate and user-friendly. Designed for CI integration, it supports validation of both public and GitHub Enterprise Server links, with options for authentication, rate limiting, and targeted file checks during pull requests.

## Release notes

## What's Changed

* Update Troubleshooting by @your-ko in https://github.com/your-ko/link-validator/pull/449
* fix typos in action.yml  by @your-ko in https://github.com/your-ko/link-validator/pull/454
* Fix a bug with enabling validators by @your-ko in https://github.com/your-ko/link-validator/pull/455
* Cleanup: It was well written and well tested function. But it wasn't used :) by @your-ko in https://github.com/your-ko/link-validator/pull/456
* Increase buffer. Some docs can be big by @your-ko in https://github.com/your-ko/link-validator/pull/457
* Fix potential nil pointer dereference by @your-ko in https://github.com/your-ko/link-validator/pull/458
* Fix: Print all validation errors, instead of only first one and swallowing the rest. by @your-ko in https://github.com/your-ko/link-validator/pull/459
* Fix merging redirects config value by @your-ko in https://github.com/your-ko/link-validator/pull/460
* Fix the case when commits path has no hash by @your-ko in https://github.com/your-ko/link-validator/pull/461
* Add guard. Distinguish between "not set" (nil) FILES from "explicitly empty".  by @your-ko in https://github.com/your-ko/link-validator/pull/462
* Fix edge cases in URL parsing  in handleWorkflow. by @your-ko in https://github.com/your-ko/link-validator/pull/463
* Fix typo by @your-ko in https://github.com/your-ko/link-validator/pull/464
* Optimise Content handler. The contents API already returns 404 for nonexistent repos. by @your-ko in https://github.com/your-ko/link-validator/pull/465
---
* chore(deps): Update link-validator to 2.3.1 by @renovate[bot] in https://github.com/your-ko/link-validator/pull/448
* chore(deps): update anchore/sbom-action action to v0.24.0 by @renovate[bot] in https://github.com/your-ko/link-validator/pull/450
* chore(deps): update github actions (major) by @renovate[bot] in https://github.com/your-ko/link-validator/pull/430
* migrate to actions/attest by @your-ko in https://github.com/your-ko/link-validator/pull/451
* chore(deps): update dependency golangci/golangci-lint to v2.11.4 by @renovate[bot] in https://github.com/your-ko/link-validator/pull/453
* chore(deps): update sigstore/cosign-installer action to v4.1.1 by @renovate[bot] in https://github.com/your-ko/link-validator/pull/452

**Full Changelog**: https://github.com/your-ko/link-validator/compare/2.3.1...2.3.2

---

## 🔐 Supply Chain Security

This release includes signed container images with attestations. See [Security Documentation](https://github.com/your-ko/link-validator#security--supply-chain) for verification instructions.

**Container:** `ghcr.io/your-ko/link-validator:2.3.2` ([GHCR package](https://github.com/your-ko/link-validator/pkgs/container/ghcr.io/your-ko/link-validator?tag=2.3.2))
**Digest:** `ghcr.io/your-ko/link-validator@sha256:d08fe99864959acce2743a5348a8e7b8142f056f432ac2a3cfbe076a346e5f1c`
**Attestations:** [GitHub attestations](https://github.com/your-ko/link-validator/attestations?type=provenance&subject_name=ghcr.io/your-ko/link-validator&subject_digest=sha256:d08fe99864959acce2743a5348a8e7b8142f056f432ac2a3cfbe076a346e5f1c) • [Container attestations](https://github.com/your-ko/link-validator/pkgs/container/link-validator/sha256:d08fe99864959acce2743a5348a8e7b8142f056f432ac2a3cfbe076a346e5f1c)
**Artifacts:** [SBOM](https://github.com/your-ko/link-validator/releases/download/2.3.2/sbom.spdx.json) • [Provenance](https://github.com/your-ko/link-validator/releases/download/2.3.2/provenance.intoto.jsonl) • [Checksums](https://github.com/your-ko/link-validator/releases/download/2.3.2/SHASUMS256.txt)


