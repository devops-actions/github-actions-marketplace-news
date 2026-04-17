---
title: Soundcheck Security Review
date: 2026-04-17 06:32:12 +00:00
tags:
  - thejefflarson
  - GitHub Actions
draft: false
repo: https://github.com/thejefflarson/soundcheck-action
marketplace: https://github.com/marketplace/actions/soundcheck-security-review
version: v1.0.10
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/thejefflarson/soundcheck-action** to version **v1.0.10**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/soundcheck-security-review) to find the latest changes.

## Action Summary

The **Soundcheck Security Review** GitHub Action automates OWASP security reviews for your repository by scanning source code, identifying Critical, High, and Medium severity issues, and automatically rewriting them in place. It opens or updates a pull request with the fixes and a severity-ranked findings table, simplifying the process of addressing security vulnerabilities. Powered by the Soundcheck skill suite, it supports comprehensive security checks aligned with OWASP Web and LLM Top 10 standards.

## What's Changed

Fix broken skill path and stale soundcheck SHA pin. The previously pinned soundcheck SHA no longer existed, and skills had moved to .claude/skills/. Also advances the v1 alias to this release.
