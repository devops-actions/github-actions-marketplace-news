---
title: zizmor-action
date: 2026-01-18 13:26:48 +00:00
tags:
  - zizmorcore
  - GitHub Actions
draft: false
repo: https://github.com/zizmorcore/zizmor-action
marketplace: https://github.com/marketplace/actions/zizmor-action
version: v0.4.0
dependentsNumber: "1,154"
---


Version updated for **https://github.com/zizmorcore/zizmor-action** to version **v0.4.0**.
- This action is used across all versions by **1,154** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zizmor-action) to find the latest changes.

## Action Summary

The `zizmor-action` GitHub Action integrates the `zizmor` tool into CI/CD pipelines to perform security analysis and audits of code repositories. It automates the detection of potential security vulnerabilities and integrates with GitHub Advanced Security for enhanced stateful analysis and incremental triage. This action simplifies the process of leveraging `zizmor` for both public and private repositories, providing actionable insights to improve code security.

## Release notes

This new version of `zizmor-action` brings two major changes:

* The new `fail-on-no-inputs` option can be used to control whether
  `zizmor-action` fails if no inputs were collected by `zizmor`. The default
  remains `true`, reflecting the pre-existing behavior.

* The action's use of the official `zizmor` Docker images is now fully
  hash-checked internally, preventing accidental or malicious modification
  to the images. This also means that subsequent releases of `zizmor`
  will induce a release of this action, rather than the action always picking
  up the latest version by default.

## What's Changed
* docs: extended permissions required for internal repos by @AntoineSebert in https://github.com/zizmorcore/zizmor-action/pull/61
* docs: clarify description of "token" to indicate it is only used for online audits by @rmuir in https://github.com/zizmorcore/zizmor-action/pull/63
* Hash-check zizmor Docker images by @woodruffw in https://github.com/zizmorcore/zizmor-action/pull/68
* Add `fail-on-no-inputs` option by @woodruffw in https://github.com/zizmorcore/zizmor-action/pull/67

## New Contributors
* @AntoineSebert made their first contribution in https://github.com/zizmorcore/zizmor-action/pull/61
* @rmuir made their first contribution in https://github.com/zizmorcore/zizmor-action/pull/63

**Full Changelog**: https://github.com/zizmorcore/zizmor-action/compare/v0.3.0...v0.4.0

