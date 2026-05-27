---
title: Soundcheck Security Review
date: 2026-05-27 06:32:51 +00:00
tags:
  - thejefflarson
  - GitHub Actions
draft: false
repo: https://github.com/thejefflarson/soundcheck-action
marketplace: https://github.com/marketplace/actions/soundcheck-security-review
version: v1.0.15
dependentsNumber: "11"
actionType: Composite
---


Version updated for **https://github.com/thejefflarson/soundcheck-action** to version **v1.0.15**.

- This action is used across all versions by **11** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/soundcheck-security-review) to find the latest changes.

## Action Summary

The **Soundcheck Security Review GitHub Action** automates security assessments for repositories, analyzing code changes in pull requests or performing full repository scans on demand. It identifies and ranks vulnerabilities based on severity and can optionally apply fixes to Critical, High, and Medium findings directly, streamlining security compliance. The action supports OWASP security standards and provides detailed findings summaries, enabling developers to address issues efficiently and enforce secure coding practices.

## What's Changed

Pin updated to [soundcheck v1.11.0](https://github.com/thejefflarson/soundcheck/releases/tag/v1.11.0).

Adds a Validate stage to the security-review pipeline that drops findings refuted by code at the cited line. See the soundcheck v1.11.0 notes for details.

The floating `@v1` tag now points at this release.
