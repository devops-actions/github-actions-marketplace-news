---
title: Soundcheck Security Review
date: 2026-05-24 07:07:38 +00:00
tags:
  - thejefflarson
  - GitHub Actions
draft: false
repo: https://github.com/thejefflarson/soundcheck-action
marketplace: https://github.com/marketplace/actions/soundcheck-security-review
version: v1.0.13
dependentsNumber: "11"
actionType: Composite
---


Version updated for **https://github.com/thejefflarson/soundcheck-action** to version **v1.0.13**.

- This action is used across all versions by **11** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/soundcheck-security-review) to find the latest changes.

## Action Summary

The Soundcheck Security Review GitHub Action automates security reviews for repositories by analyzing code changes in pull requests or performing full-repo scans. It detects vulnerabilities based on industry-standard frameworks, ranks findings by severity, and optionally applies automated fixes directly to the code. This action helps streamline security assessments, enforce quality gates, and reduce manual effort in resolving critical issues.

## What's Changed

## Summary

Pins to soundcheck **v1.9.0**, which adds:

- New `contract-review` deep-audit mode (caller/callee invariant gaps)
- Lightweight `pr-review` skill — the CI gate's `--diff-base` flow
  is now a single-pass review, not the full orchestrator with a
  scope filter
- Five new auto-invoking skills for systems-software bug classes
  (memory-API misuse, crypto-library wiring, privilege handling,
  concurrency correctness, numeric trust-boundary)
- Shared-helper refactor across launcher scripts

For CI users: no action.yml input changes; existing workflows
continue to work. The PR-gate behavior is functionally identical
from the consumer's perspective, just with a tighter underlying
skill.

See [soundcheck v1.9.0 release notes](https://github.com/thejefflarson/soundcheck/releases/tag/v1.9.0)
for the full plugin changelog.

## Pin

This release bumps `SOUNDCHECK_SHA` to `947fb3c3d69639154b0c51a105f9640f126bb65d`.

