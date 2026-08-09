---
title: Vigil — AI Security Review by Claude
date: 2026-08-09 05:57:44 +00:00
tags:
  - nadirzhon
  - GitHub Actions
draft: false
repo: https://github.com/nadirzhon/vigil
marketplace: https://github.com/marketplace/actions/vigil-ai-security-review-by-claude
version: v1
dependentsNumber: "0"
actionType: Docker
actionSummary: |
  Vigil is a GitHub Action that performs AI-based security reviews on pull requests by analyzing changes using Claude. It detects injection, hard-coded secrets, broken authorization, unsafe crypto, SSRF, XSS, and other security vulnerabilities. The tool reports these findings as comments directly in the pull request with severity levels, confidence scores, and fixes suggested for each issue.
---


Version updated for **https://github.com/nadirzhon/vigil** to version **v1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vigil-ai-security-review-by-claude) to find the latest changes.

## Action Summary

Vigil is a GitHub Action that performs AI-based security reviews on pull requests by analyzing changes using Claude. It detects injection, hard-coded secrets, broken authorization, unsafe crypto, SSRF, XSS, and other security vulnerabilities. The tool reports these findings as comments directly in the pull request with severity levels, confidence scores, and fixes suggested for each issue.

## What's Changed

AI security review for every pull request, powered by Claude.
Flags injection, hard-coded secrets, and broken authorization
inline on the PR, with a severity gate. Add with:
uses: nadirzhon/vigil@v1
