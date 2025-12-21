---
title: Link validation
date: 2025-12-21 05:25:47 +00:00
tags:
  - your-ko
  - GitHub Actions
draft: false
repo: https://github.com/your-ko/link-validator
marketplace: https://github.com/marketplace/actions/link-validation
version: 1.19.0
dependentsNumber: "2"
---


Version updated for **https://github.com/your-ko/link-validator** to version **1.19.0**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/link-validation) to find the latest changes.

## Action Summary

The Link Validator GitHub Action automates the process of validating links and URLs in Markdown files, ensuring the accuracy of GitHub links, external URLs, and local file references. It prevents common issues like broken links due to file restructuring, link rot, or changes in access permissions by integrating checks directly into CI workflows. Key features include support for GitHub Enterprise Server, API-based GitHub link validation, HTTP(S) link checking with redirects, and local path verification, helping maintain reliable and user-friendly documentation.

## Release notes

## What's Changed
* Improve logging message in case of too many redirects. by @your-ko in https://github.com/your-ko/link-validator/pull/338
* Fix incorrect log level for not found repositories by @your-ko in https://github.com/your-ko/link-validator/pull/339
* Add gist urls validation by @your-ko in https://github.com/your-ko/link-validator/pull/340
* Add GitHub environments links validation by @your-ko in https://github.com/your-ko/link-validator/pull/341
* Fix http regex so urls are correctly captured from html by @your-ko in https://github.com/your-ko/link-validator/pull/342
* Add GitHub teams links validation by @your-ko in https://github.com/your-ko/link-validator/pull/343
* Add GitHub packages links validation by @your-ko in https://github.com/your-ko/link-validator/pull/344
---
* chore(deps): Update link-validator to 1.18.1 by @renovate[bot] in https://github.com/your-ko/link-validator/pull/334
* chore(deps): update docker/setup-buildx-action action to v3.12.0 by @renovate[bot] in https://github.com/your-ko/link-validator/pull/336


**Full Changelog**: https://github.com/your-ko/link-validator/compare/1.18.1...1.19.0

---

## 🔐 Supply Chain Security

This release includes signed container images with attestations. See [Security Documentation](https://github.com/your-ko/link-validator#security--supply-chain) for verification instructions.

**Container:** `ghcr.io/your-ko/link-validator:1.19.0` ([GHCR package](https://github.com/your-ko/link-validator/pkgs/container/ghcr.io/your-ko/link-validator?tag=1.19.0))
**Digest:** `ghcr.io/your-ko/link-validator@sha256:ab54d22762a0f40661da52cf1f7fd27132846e12234d3c9c4056ff66ca86e825`
**Attestations:** [GitHub attestations](https://github.com/your-ko/link-validator/attestations?type=provenance&subject_name=ghcr.io/your-ko/link-validator&subject_digest=sha256:ab54d22762a0f40661da52cf1f7fd27132846e12234d3c9c4056ff66ca86e825) • [Container attestations](https://github.com/your-ko/link-validator/pkgs/container/link-validator/sha256:ab54d22762a0f40661da52cf1f7fd27132846e12234d3c9c4056ff66ca86e825)
**Artifacts:** [SBOM](https://github.com/your-ko/link-validator/releases/download/1.19.0/sbom.spdx.json) • [Provenance](https://github.com/your-ko/link-validator/releases/download/1.19.0/provenance.intoto.jsonl) • [Checksums](https://github.com/your-ko/link-validator/releases/download/1.19.0/SHASUMS256.txt)


