---
title: Verify safe to test label
date: 2026-02-27 21:26:25 +00:00
tags:
  - nilsreichardt
  - GitHub Actions
draft: false
repo: https://github.com/nilsreichardt/verify-safe-to-test-label
marketplace: https://github.com/marketplace/actions/verify-safe-to-test-label
version: v2.0.0
dependentsNumber: "2"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/nilsreichardt/verify-safe-to-test-label** to version **v2.0.0**.
- This action is used across all versions by **2** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/verify-safe-to-test-label) to find the latest changes.

## Action Summary

The `verify-safe-to-test-label` GitHub Action ensures that a Pull Request has been manually reviewed and assigned a specific label (e.g., `safe to test`) before executing sensitive workflows, particularly when using `pull_request_target`. This action mitigates security risks, such as secret exfiltration, by acting as a gatekeeper to prevent malicious code execution from untrusted forks. Key capabilities include automatic label verification, reapproval requirements for new commits, and enhanced security for workflows handling sensitive data.

## Release notes

## Breaking
* **Adding `require-reapproval` parameter, which is by default enabled:** When `true`, the action removes the label on every workflow run to force re-review of new commits. When you set this to `false`, an attacker could push malicious code after you marked the code as safe with the label.

## What's Changed
* Introducing v2: Merge with "remove-safe-to-test-label" GitHub Action by @nilsreichardt in https://github.com/nilsreichardt/verify-safe-to-test-label/pull/19


**Full Changelog**: https://github.com/nilsreichardt/verify-safe-to-test-label/compare/v1.0.6...v2.0.0
