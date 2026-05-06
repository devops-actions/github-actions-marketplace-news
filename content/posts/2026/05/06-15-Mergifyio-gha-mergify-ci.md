---
title: gha-mergify-ci
date: 2026-05-06 15:05:33 +00:00
tags:
  - Mergifyio
  - GitHub Actions
draft: false
repo: https://github.com/Mergifyio/gha-mergify-ci
marketplace: https://github.com/marketplace/actions/gha-mergify-ci
version: v17
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/Mergifyio/gha-mergify-ci** to version **v17**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gha-mergify-ci) to find the latest changes.

## Action Summary

The `gha-mergify-ci` GitHub Action integrates with Mergify to streamline CI workflows by automating the processing of JUnit XML test reports and managing pull request scopes for the Mergify Merge Queue. It helps identify and quarantine test failures, upload relevant test and scope data, and ensures dependent CI jobs are completed before proceeding. This action enhances CI/CD pipelines by improving test result insights and optimizing pull request merging processes.

## What's Changed

<!-- Release notes generated using configuration in .github/release.yml at main -->

## What's Changed
* chore: update documentation for v16 by @jd in https://github.com/Mergifyio/gha-mergify-ci/pull/171
* feat: add test_step_outcome input to detect silent test failures by @jd in https://github.com/Mergifyio/gha-mergify-ci/pull/174
* ci: auto-update documentation after releases by @jd in https://github.com/Mergifyio/gha-mergify-ci/pull/172
* ci: warn when token is unset for scopes upload by @sileht in https://github.com/Mergifyio/gha-mergify-ci/pull/187
* fix(action): use --scopes-json instead of deprecated --file flag by @sileht in https://github.com/Mergifyio/gha-mergify-ci/pull/194
* feat(action): allow pinning mergify-cli version by @sileht in https://github.com/Mergifyio/gha-mergify-ci/pull/196

**Full Changelog**: https://github.com/Mergifyio/gha-mergify-ci/compare/v16...v17
