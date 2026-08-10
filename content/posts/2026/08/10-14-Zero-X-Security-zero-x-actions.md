---
title: Zero-X Security Scanner
date: 2026-08-10 14:13:03 +00:00
tags:
  - Zero-X-Security
  - GitHub Actions
draft: false
repo: https://github.com/Zero-X-Security/zero-x-actions
marketplace: https://github.com/marketplace/actions/zero-x-security-scanner
version: v1.0.2
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  This GitHub Action automates the scanning of your repository's security vulnerabilities using Zero-X Cloud, which integrates with GitHub Actions workflows. It triggers a scan via Zero-X API, polls until completion, exports findings as SARIF format, and uploads them to GitHub Code Scanning. This helps you monitor and track security issues in real-time.
---


Version updated for **https://github.com/Zero-X-Security/zero-x-actions** to version **v1.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zero-x-security-scanner) to find the latest changes.

## Action Summary

This GitHub Action automates the scanning of your repository's security vulnerabilities using Zero-X Cloud, which integrates with GitHub Actions workflows. It triggers a scan via Zero-X API, polls until completion, exports findings as SARIF format, and uploads them to GitHub Code Scanning. This helps you monitor and track security issues in real-time.

## What's Changed

- Merge pull request #1 from Zero-X-Security/feature/sarif-file (459dc9b)
- Release v1.0.2: publish findings to GitHub Code Scanning (213cd1a)
- Update build process to use @vercel/ncc for bundling (926ee73)
- updated desciption (076cb45)
- Update workflows and documentation for Zero-X Action (4269cb7)
- Add ESLint and Prettier configuration, enhance action inputs, and update documentation (912b608)
- added workflows (6f8e468)
- base dir setup (5fa40ee)
