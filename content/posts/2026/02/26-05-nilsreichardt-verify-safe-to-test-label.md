---
title: Verify safe to test label
date: 2026-02-26 05:44:43 +00:00
tags:
  - nilsreichardt
  - GitHub Actions
draft: false
repo: https://github.com/nilsreichardt/verify-safe-to-test-label
marketplace: https://github.com/marketplace/actions/verify-safe-to-test-label
version: v1.0.5
dependentsNumber: "2"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/nilsreichardt/verify-safe-to-test-label** to version **v1.0.5**.
- This action is used across all versions by **2** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/verify-safe-to-test-label) to find the latest changes.

## Action Summary

The `verify-safe-to-test-label` GitHub Action ensures that a Pull Request (PR) has been manually reviewed and labeled as "safe to test" before running sensitive workflow steps, such as those involving secrets or elevated permissions. It addresses security vulnerabilities associated with `pull_request_target` workflows by acting as a gatekeeper, preventing the execution of untrusted code from external forks. This action helps safeguard CI/CD pipelines by adding a layer of manual verification to protect secrets and infrastructure from potential abuse.

## Release notes

## What's Changed
* Display the name of the configured label in the logs by @nilsreichardt in https://github.com/nilsreichardt/verify-safe-to-test-label/pull/13
* Refactoring by @nilsreichardt in https://github.com/nilsreichardt/verify-safe-to-test-label/pull/15


**Full Changelog**: https://github.com/nilsreichardt/verify-safe-to-test-label/compare/v1.0.4...v1.0.5
