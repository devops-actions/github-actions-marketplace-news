---
title: Secret Scanning Review Action
date: 2026-01-09 05:48:10 +00:00
tags:
  - advanced-security
  - GitHub Actions
draft: false
repo: https://github.com/advanced-security/secret-scanning-review-action
marketplace: https://github.com/marketplace/actions/secret-scanning-review-action
version: v2.2.1
dependentsNumber: "60"
---


Version updated for **https://github.com/advanced-security/secret-scanning-review-action** to version **v2.2.1**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **60** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/secret-scanning-review-action) to find the latest changes.

## Action Summary

The Secret Scanning Review GitHub Action enhances security workflows by detecting and highlighting secrets introduced in pull requests through GitHub's secret scanning alerts. It automates awareness and enforcement by adding annotations, optionally failing status checks, and summarizing detected secrets in pull request comments and summaries, ensuring reviewers address potential issues before merging. This helps prevent secret exposure and improves visibility, especially for unsupported or bypassed push protection cases.

## Release notes

## What's Changed
* Bump actions/upload-artifact from 4.3.6 to 4.4.3 in the all-actions group across 1 directory by @dependabot[bot] in https://github.com/advanced-security/secret-scanning-review-action/pull/34
* Add a step output with alert metadata & add a disable workflow summary option for the `python` runtime by @CallMeGreg in https://github.com/advanced-security/secret-scanning-review-action/pull/36
* Bump the all-actions group across 1 directory with 2 updates by @dependabot[bot] in https://github.com/advanced-security/secret-scanning-review-action/pull/40
* Bump requests from 2.32.3 to 2.32.4 in the pip group across 1 directory by @dependabot[bot] in https://github.com/advanced-security/secret-scanning-review-action/pull/47
* Bump the all-actions group across 1 directory with 3 updates by @dependabot[bot] in https://github.com/advanced-security/secret-scanning-review-action/pull/50
* Add support for new generic secret type: generic_private_key by @felickz in https://github.com/advanced-security/secret-scanning-review-action/pull/52
* Add support for generic secret types (non-provider and Copilot patterns) by @Copilot in https://github.com/advanced-security/secret-scanning-review-action/pull/44

### Expected message if repo does not have generic secrets enabled - 

<img width="1217" height="102" alt="image" src="https://github.com/user-attachments/assets/ff6d8d33-89fd-4507-bba3-98c3f347edf0" />


## New Contributors
* @Copilot made their first contribution in https://github.com/advanced-security/secret-scanning-review-action/pull/44

**Full Changelog**: https://github.com/advanced-security/secret-scanning-review-action/compare/v2.1.0...v2.2.1
