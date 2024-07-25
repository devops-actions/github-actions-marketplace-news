---
title: Manifest Cyber SBOM Transmitter
date: 2024-07-25 00:51:04 +00:00
tags:
  - manifest-cyber
  - GitHub Actions
draft: false
repo: manifest-cyber/manifest-github-action
marketplace: https://github.com/marketplace/actions/manifest-cyber-sbom-transmitter
version: v1.3.2
dependentsNumber: "3"
---


Version updated for **manifest-cyber/manifest-github-action** to version **v1.3.2**.
- This action is used across all versions by **3** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/manifest-cyber-sbom-transmitter) to find the latest changes.

## Release notes

This release adds support for custom Github API token usage (to avoid public-access rate limits on GH API). It further adds some healthy default version bumps for trivy, and adds add'l escaping for some input values.

## What's Changed
* fix(cli): add escapes for values [MFST-2843] by @manifestori in https://github.com/manifest-cyber/manifest-github-action/pull/25
* fix(trivy): default trivy version to v0.52.2 [MFST-3154] by @manifestori in https://github.com/manifest-cyber/manifest-github-action/pull/26
* mfst-3244/update-github-action-to-support-gh-api-token by @adefee in https://github.com/manifest-cyber/manifest-github-action/pull/27
* mfst-3244/estrict-gh-token-env-only by @adefee in https://github.com/manifest-cyber/manifest-github-action/pull/28


**Full Changelog**: https://github.com/manifest-cyber/manifest-github-action/compare/v1.2.0...v1.3.2
