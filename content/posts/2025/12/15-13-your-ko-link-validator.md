---
title: Link validation
date: 2025-12-15 13:16:44 +00:00
tags:
  - your-ko
  - GitHub Actions
draft: false
repo: https://github.com/your-ko/link-validator
marketplace: https://github.com/marketplace/actions/link-validation
version: 1.16.0
dependentsNumber: "2"
---


Version updated for **https://github.com/your-ko/link-validator** to version **1.16.0**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/link-validation) to find the latest changes.

## Release notes

## What's Changed
* Wrap GitHub client and use interface in handlers by @your-ko in https://github.com/your-ko/link-validator/pull/293
* Use vektra/mockery to generate unit test mocks. Some corresponding refactoring in handlers. by @your-ko in https://github.com/your-ko/link-validator/pull/295
* Validate whether the repository exist before doing any other call, so the error message is more meaningful, rather then just "Not Found", where it wasn't clear, what exactly wasn't found by @your-ko in https://github.com/your-ko/link-validator/pull/298
---
* chore: Update GitHub Artifact Actions (major) by @renovate[bot] in https://github.com/your-ko/link-validator/pull/294
* chore: Update module github.com/google/go-github/v76 to v77 by @renovate[bot] in https://github.com/your-ko/link-validator/pull/275
* chore(deps): Update link-validator to 1.15.0 by @renovate[bot] in https://github.com/your-ko/link-validator/pull/291
* chore: Update dependency go to v1.25.5 by @renovate[bot] in https://github.com/your-ko/link-validator/pull/297


**Full Changelog**: https://github.com/your-ko/link-validator/compare/1.15.0...1.16.0

---

## 🔐 Supply Chain Security

This release includes signed container images with attestations. See [Security Documentation](https://github.com/your-ko/link-validator#security--supply-chain) for verification instructions.

**Container:** `ghcr.io/your-ko/link-validator:1.16.0` ([GHCR package](https://github.com/your-ko/link-validator/pkgs/container/ghcr.io/your-ko/link-validator?tag=1.16.0))
**Digest:** `ghcr.io/your-ko/link-validator@sha256:9302ae47dbeff1a9a433e2adee6417bbf7ac98acaaba391a05bed7a9d6a076fa`
**Attestations:** [GitHub attestations](https://github.com/your-ko/link-validator/attestations?type=provenance&subject_name=ghcr.io/your-ko/link-validator&subject_digest=sha256:9302ae47dbeff1a9a433e2adee6417bbf7ac98acaaba391a05bed7a9d6a076fa) • [Container attestations](https://github.com/your-ko/link-validator/pkgs/container/link-validator/sha256:9302ae47dbeff1a9a433e2adee6417bbf7ac98acaaba391a05bed7a9d6a076fa)
**Artifacts:** [SBOM](https://github.com/your-ko/link-validator/releases/download/1.16.0/sbom.spdx.json) • [Provenance](https://github.com/your-ko/link-validator/releases/download/1.16.0/provenance.intoto.jsonl) • [Checksums](https://github.com/your-ko/link-validator/releases/download/1.16.0/SHASUMS256.txt)


