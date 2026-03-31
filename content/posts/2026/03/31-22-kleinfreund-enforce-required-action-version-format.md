---
title: enforce-required-action-version-format
date: 2026-03-31 22:13:09 +00:00
tags:
  - kleinfreund
  - GitHub Actions
draft: false
repo: https://github.com/kleinfreund/enforce-required-action-version-format
marketplace: https://github.com/marketplace/actions/enforce-required-action-version-format
version: v2.0.0
dependentsNumber: "4"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/kleinfreund/enforce-required-action-version-format** to version **v2.0.0**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/enforce-required-action-version-format) to find the latest changes.

## Action Summary

This GitHub Action enforces the use of secure version formats (e.g., `sha-1` or `sha-256`) in `uses` statements that reference third-party actions in workflow and composite action files, aligning with GitHub's security recommendations. It automates the validation of action version references to prevent the use of less secure formats like branch names or release tags, thereby reducing the risk of supply chain vulnerabilities. The action provides customizable file scanning and reporting options to enhance workflow security compliance.

## What's Changed

## 2.0.0 (2026-03-31)

### ⚠ BREAKING CHANGES

* Require Node.js v24.
