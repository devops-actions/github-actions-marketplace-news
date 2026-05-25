---
title: Soundcheck Security Review
date: 2026-05-25 06:30:03 +00:00
tags:
  - thejefflarson
  - GitHub Actions
draft: false
repo: https://github.com/thejefflarson/soundcheck-action
marketplace: https://github.com/marketplace/actions/soundcheck-security-review
version: v1.0.14
dependentsNumber: "11"
actionType: Composite
---


Version updated for **https://github.com/thejefflarson/soundcheck-action** to version **v1.0.14**.

- This action is used across all versions by **11** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/soundcheck-security-review) to find the latest changes.

## Action Summary

The **Soundcheck Security Review GitHub Action** automates security reviews for repositories by running the Soundcheck tool during pull request events or scheduled workflows. It scans code changes for vulnerabilities based on industry-standard frameworks (e.g., OWASP Web Top 10:2025, API Security Top 10:2023), generates a severity-ranked findings table, and optionally performs automated fixes by committing corrections directly to the relevant branch. This action helps streamline security assessments, enforce merge gates, and maintain code quality with minimal manual intervention.

## What's Changed

Pin updated to [soundcheck v1.10.0](https://github.com/thejefflarson/soundcheck/releases/tag/v1.10.0).

Pipeline simplification + benchmark judge realignment. See the soundcheck v1.10.0 notes for details.

The floating `@v1` tag is moved to this release.
