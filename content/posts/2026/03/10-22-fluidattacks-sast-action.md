---
title: Fluid Attacks SAST
date: 2026-03-10 22:04:22 +00:00
tags:
  - fluidattacks
  - GitHub Actions
draft: false
repo: https://github.com/fluidattacks/sast-action
marketplace: https://github.com/marketplace/actions/fluid-attacks-sast
version: 1.1.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/fluidattacks/sast-action** to version **1.1.0**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fluid-attacks-sast) to find the latest changes.

## Action Summary

The Fluid Attacks SAST GitHub Action is an open-source static application security testing (SAST) tool designed to automatically scan your code for vulnerabilities directly within your GitHub repository. It supports full and differential scans, integrates seamlessly with GitHub's Security tab and pull request annotations, and requires no additional accounts, tokens, or API keys. This action simplifies vulnerability detection and management, enabling developers to identify and address security issues efficiently during the development process.

## Release notes

## What's new

- **Auto-detect scan mode on feature branches**: push to non-main branches now runs differential scan instead of full scan
- Updated trunk-based development support:
  - Push to `main`/`master`/`trunk` → full scan
  - Push to feature branches → diff scan (vs previous commit)
  - Pull requests → diff scan (vs PR base)
