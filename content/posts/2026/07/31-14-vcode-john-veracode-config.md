---
title: Veracode Config
date: 2026-07-31 14:34:21 +00:00
tags:
  - vcode-john
  - GitHub Actions
draft: false
repo: https://github.com/vcode-john/veracode-config
marketplace: https://github.com/marketplace/actions/veracode-config
version: v0.03
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The `veracode-config` GitHub Action automates the onboarding of repositories into the Veracode Workflow integration by checking or creating an Application Profile, inventorying repository details, and persisting configuration values in custom metadata. It simplifies the process of integrating code analysis with Veracode, reducing manual setup steps and ensuring consistent configurations across projects.
---


Version updated for **https://github.com/vcode-john/veracode-config** to version **v0.03**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/veracode-config) to find the latest changes.

## Action Summary

The `veracode-config` GitHub Action automates the onboarding of repositories into the Veracode Workflow integration by checking or creating an Application Profile, inventorying repository details, and persisting configuration values in custom metadata. It simplifies the process of integrating code analysis with Veracode, reducing manual setup steps and ensuring consistent configurations across projects.

## What's Changed

- Updated rollup.config.mjs to output main.mjs instead of index.js, and updated index.js to import from dist/main instead of src/main. (ba0bf90)
- Updated index to use the dist main.js (3f0124e)
- Added rollup to handle dependencies (7b51a93)
- Update to node24 (26a6a27)
- Updated .gitignore to include .DS_Store files, which are macOS system files that should not be tracked in version control. This change helps keep the repository clean and avoids unnecessary clutter from system-specific files. (244a907)
- initial commit (852b2df)
