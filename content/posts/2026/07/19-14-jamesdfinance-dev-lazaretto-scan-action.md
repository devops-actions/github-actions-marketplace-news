---
title: Lazaretto Scan
date: 2026-07-19 14:51:08 +00:00
tags:
  - jamesdfinance-dev
  - GitHub Actions
draft: false
repo: https://github.com/jamesdfinance-dev/lazaretto-scan-action
marketplace: https://github.com/marketplace/actions/lazaretto-scan
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The Lazaretto Scan GitHub Action automatically checks npm packages, repositories, skills, or files for malicious behavior by sending them to the Lazaretto API. It fails the build if any target is marked as "malicious" or "flagged," providing a clear verdict in a sticky comment on pull requests. The action supports scanning specific targets or using the package.json file by default, and it integrates with GitHub Actions for CI/CD integration.
---


Version updated for **https://github.com/jamesdfinance-dev/lazaretto-scan-action** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lazaretto-scan) to find the latest changes.

## Action Summary

The Lazaretto Scan GitHub Action automatically checks npm packages, repositories, skills, or files for malicious behavior by sending them to the Lazaretto API. It fails the build if any target is marked as "malicious" or "flagged," providing a clear verdict in a sticky comment on pull requests. The action supports scanning specific targets or using the package.json file by default, and it integrates with GitHub Actions for CI/CD integration.

## What's Changed

Adds a sticky pull-request comment with the verdict table (needs pull-requests: write). Recommended PR setup with a paths filter so it only runs when dependencies change. uses: jamesdfinance-dev/lazaretto-scan-action@v1
