---
title: Link validation
date: 2026-01-20 21:41:04 +00:00
tags:
  - your-ko
  - GitHub Actions
draft: false
repo: https://github.com/your-ko/link-validator
marketplace: https://github.com/marketplace/actions/link-validation
version: 2.0.0
dependentsNumber: "2"
---


Version updated for **https://github.com/your-ko/link-validator** to version **2.0.0**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/link-validation) to find the latest changes.

## Action Summary

The **Link Validator** GitHub Action automates the process of detecting broken links in documentation, including GitHub-specific links, HTTP(S) URLs, and local Markdown file paths. It supports public GitHub and GitHub Enterprise environments, leveraging API calls for accurate validation, and integrates seamlessly into CI pipelines to catch issues during PR reviews. This tool helps maintain high-quality documentation by preventing link rot, broken internal references, and deprecated API endpoints.

## Release notes

** Breaking changes **
The config structure has changed. Check this example out: https://github.com/your-ko/link-validator/tree/2.0.0?tab=readme-ov-file#config-file


## What's Changed
* Move mockery config to the repository root by @your-ko in https://github.com/your-ko/link-validator/pull/367
* Refactoring: Restructure config file and make initialisation more robust by @your-ko in https://github.com/your-ko/link-validator/pull/370
* Increase default timeout by @your-ko in https://github.com/your-ko/link-validator/pull/371
* Fix teams handler for the case if the team is not specified by @your-ko in https://github.com/your-ko/link-validator/pull/374
* Move closing body higher up in the code to calm down the linter by @your-ko in https://github.com/your-ko/link-validator/pull/376
* Make parameters in action.yml, config and doc consistent by @your-ko in https://github.com/your-ko/link-validator/pull/377
* Fix Lost spaces in the filenames by @your-ko in https://github.com/your-ko/link-validator/pull/380
* Make http redirects number configurable instead of hardcoded by @your-ko in https://github.com/your-ko/link-validator/pull/383
* Improve defaults and documentation by @your-ko in https://github.com/your-ko/link-validator/pull/384
* Improve documentation by @your-ko in https://github.com/your-ko/link-validator/pull/385
* Update user-agent in http validator by @your-ko in https://github.com/your-ko/link-validator/pull/387
* Make wrapper client methods non-public by @your-ko in https://github.com/your-ko/link-validator/pull/391
* Rename 'ignoredDomains' to 'ignore' as it better reflect the configuration purpose by @your-ko in https://github.com/your-ko/link-validator/pull/392
---
* chore(deps): Update link-validator to 1.20.0 by @renovate[bot] in https://github.com/your-ko/link-validator/pull/368 
* Update module github.com/google/go-querystring to v1.2.0 by @renovate[bot] in https://github.com/your-ko/link-validator/pull/369
* Update module github.com/google/go-github/v80 to v81 by @renovate[bot] in https://github.com/your-ko/link-validator/pull/378
* Update dependency golangci/golangci-lint to v2.8.0 by @renovate[bot] in https://github.com/your-ko/link-validator/pull/379
* Update anchore/sbom-action action to v0.21.1 by @renovate[bot] in https://github.com/your-ko/link-validator/pull/381
* Update module github.com/DataDog/datadog-api-client-go/v2 to v2.53.0 by @renovate[bot] in https://github.com/your-ko/link-validator/pull/382
* Update actions/setup-go action to v6.2.0 by @renovate[bot] in https://github.com/your-ko/link-validator/pull/386
* Update dependency vektra/mockery to v3.6.2 by @renovate[bot] in https://github.com/your-ko/link-validator/pull/388
* Update dependency vektra/mockery to v3.6.3 by @renovate[bot] in https://github.com/your-ko/link-validator/pull/390


**Full Changelog**: https://github.com/your-ko/link-validator/compare/1.20.0...2.0.0

---

## 🔐 Supply Chain Security

This release includes signed container images with attestations. See [Security Documentation](https://github.com/your-ko/link-validator#security--supply-chain) for verification instructions.

**Container:** `ghcr.io/your-ko/link-validator:2.0.0` ([GHCR package](https://github.com/your-ko/link-validator/pkgs/container/ghcr.io/your-ko/link-validator?tag=2.0.0))
**Digest:** `ghcr.io/your-ko/link-validator@sha256:4ca8f7d3a29c434c3efb7bd53d99a54956d008aa96f05f7fb9af49fffe4ef7d3`
**Attestations:** [GitHub attestations](https://github.com/your-ko/link-validator/attestations?type=provenance&subject_name=ghcr.io/your-ko/link-validator&subject_digest=sha256:4ca8f7d3a29c434c3efb7bd53d99a54956d008aa96f05f7fb9af49fffe4ef7d3) • [Container attestations](https://github.com/your-ko/link-validator/pkgs/container/link-validator/sha256:4ca8f7d3a29c434c3efb7bd53d99a54956d008aa96f05f7fb9af49fffe4ef7d3)
**Artifacts:** [SBOM](https://github.com/your-ko/link-validator/releases/download/2.0.0/sbom.spdx.json) • [Provenance](https://github.com/your-ko/link-validator/releases/download/2.0.0/provenance.intoto.jsonl) • [Checksums](https://github.com/your-ko/link-validator/releases/download/2.0.0/SHASUMS256.txt)


