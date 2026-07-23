---
title: Soundcheck Security Review
date: 2026-07-23 06:21:39 +00:00
tags:
  - thejefflarson
  - GitHub Actions
draft: false
repo: https://github.com/thejefflarson/soundcheck-action
marketplace: https://github.com/marketplace/actions/soundcheck-security-review
version: v1.0.39
dependentsNumber: "11"
actionType: Composite
actionSummary: |
  The Soundcheck Security Review (v2) GitHub Action automates the execution of Soundcheck, an OWASP-focused static code analysis tool. It performs a security review on all changes in a pull request or a scheduled scan across the repository, providing a severity-ranked findings table and optional autofix capabilities that rewrite critical issues directly into the affected files.
---


Version updated for **https://github.com/thejefflarson/soundcheck-action** to version **v1.0.39**.

- This action is used across all versions by **11** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/soundcheck-security-review) to find the latest changes.

## Action Summary

The Soundcheck Security Review (v2) GitHub Action automates the execution of Soundcheck, an OWASP-focused static code analysis tool. It performs a security review on all changes in a pull request or a scheduled scan across the repository, providing a severity-ranked findings table and optional autofix capabilities that rewrite critical issues directly into the affected files.

## What's Changed

**Bumps soundcheck to [v1.17.0](https://github.com/thejefflarson/soundcheck/releases/tag/v1.17.0)** and the claude CLI pin to `2.1.214`.

The v1.17.0 changes on the soundcheck side:

- `hotspot-mapping` now covers rendering/output sinks and dependency/config manifests (previously blindspots)
- `vulnerability-audit` is exhaustive per hotspot — picks every applicable skill, sweeps sibling code

Benchmark against OWASP Juice Shop: reviews now produce ~2× more findings and lift strict recall from 33% → 67%, with zero hallucinations across residual findings.

No breaking changes to inputs, outputs, or workflow shape.
