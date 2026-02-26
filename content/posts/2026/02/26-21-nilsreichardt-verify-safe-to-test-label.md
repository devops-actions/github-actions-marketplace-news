---
title: Verify safe to test label
date: 2026-02-26 21:31:36 +00:00
tags:
  - nilsreichardt
  - GitHub Actions
draft: false
repo: https://github.com/nilsreichardt/verify-safe-to-test-label
marketplace: https://github.com/marketplace/actions/verify-safe-to-test-label
version: v1.0.6
dependentsNumber: "2"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/nilsreichardt/verify-safe-to-test-label** to version **v1.0.6**.
- This action is used across all versions by **2** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/verify-safe-to-test-label) to find the latest changes.

## Action Summary

The `verify-safe-to-test-label` GitHub Action ensures that sensitive CI/CD steps involving repository secrets only run if a designated `safe to test` label is applied to a pull request. It addresses security vulnerabilities associated with the `pull_request_target` trigger, which can expose secrets to untrusted forked PRs, by acting as a manual gatekeeper to prevent unauthorized access. This action enhances security by requiring maintainers to explicitly approve PRs before allowing workflows to proceed with sensitive operations.

## Release notes

## What's Changed
* Increase test suite to 100% coverage by @nilsreichardt in https://github.com/nilsreichardt/verify-safe-to-test-label/pull/16
* Add Codecov by @nilsreichardt in https://github.com/nilsreichardt/verify-safe-to-test-label/pull/17
* Add e2e tests by @nilsreichardt in https://github.com/nilsreichardt/verify-safe-to-test-label/pull/18


**Full Changelog**: https://github.com/nilsreichardt/verify-safe-to-test-label/compare/v1.0.5...v1.0.6
