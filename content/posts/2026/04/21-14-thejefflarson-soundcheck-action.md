---
title: Soundcheck Security Review
date: 2026-04-21 14:26:19 +00:00
tags:
  - thejefflarson
  - GitHub Actions
draft: false
repo: https://github.com/thejefflarson/soundcheck-action
marketplace: https://github.com/marketplace/actions/soundcheck-security-review
version: v1.0.12
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/thejefflarson/soundcheck-action** to version **v1.0.12**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/soundcheck-security-review) to find the latest changes.

## Action Summary

The **Soundcheck Security Review GitHub Action** automates the process of performing an OWASP-based security review on your repository's source code. It scans for vulnerabilities, rewrites code with Critical, High, and Medium severity findings in place, and generates a pull request containing the updated code alongside a severity-ranked findings table. This action streamlines security auditing, ensures code hygiene, and helps developers address vulnerabilities efficiently.

## What's Changed

Bumps `SOUNDCHECK_SHA` to soundcheck e63ae37 (release v1.8.1).

Pulls in self-review poisoning protection, empty-findings integrity gate, and the new quarterly-threat-review drafting job. The floating `v1` tag now points here.

See https://github.com/thejefflarson/soundcheck/releases/tag/v1.8.1 for details.
