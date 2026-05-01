---
title: Entropy Key Scanner
date: 2026-05-01 06:17:07 +00:00
tags:
  - DevCybSec
  - GitHub Actions
draft: false
repo: https://github.com/DevCybSec/security-action-ts
marketplace: https://github.com/marketplace/actions/entropy-key-scanner
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/DevCybSec/security-action-ts** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/entropy-key-scanner) to find the latest changes.

## Action Summary

The Entropy Key Scanner GitHub Action automates the detection of leaked secrets and high-entropy strings within your repository during CI/CD workflows. By integrating seamlessly with GitHub Runners, it scans specified directories, flags potential vulnerabilities, and provides annotations in the "Files Changed" tab to pinpoint issues. This action helps prevent sensitive data exposure and streamlines security checks in your development pipeline.

## What's Changed

## Features
- **Hybrid Detection Engine**: Combines Regex and Shannon Entropy (C/Go) for superior secret detection.
- **Multithreading**: High-performance worker pool for fast scanning.
- **Bilingual Support**: Full support for English and Spanish logs.
- **GitHub Integration**: Automatic annotations in the "Files Changed" tab.

## What's Included
- Optimized binary for Linux AMD64.
- Automated installer for GitHub Runners.

##  Usage
Add this to your workflow:
```yaml
- uses: DevCybSec/entropy-key-scanner-action@v1
  with:
    language: 'en'
