---
title: Resolve Azure SWA Environment
date: 2025-12-23 13:13:15 +00:00
tags:
  - jamesconsultingllc
  - GitHub Actions
draft: false
repo: https://github.com/jamesconsultingllc/resolve-swa-environment-action
marketplace: https://github.com/marketplace/actions/resolve-azure-swa-environment
version: v1.0.1
dependentsNumber: "?"
---


Version updated for **https://github.com/jamesconsultingllc/resolve-swa-environment-action** to version **v1.0.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/resolve-azure-swa-environment) to find the latest changes.

## Action Summary

The "Resolve Azure SWA Environment Action" is a GitHub Action that automates the resolution of Azure Static Web App deployment environments based on branch names, making it particularly suited for GitFlow workflows. It streamlines tasks such as determining target deployment slots and identifying parent environments for settings inheritance, while also sanitizing branch names to ensure compatibility with Azure SWA. This action simplifies deployment workflows by providing smart mappings and customizability for branch-to-environment rules, reducing manual effort and ensuring consistent environment management.

## Release notes

### Bug Fixes
- Limit sanitized environment name to 16 characters (Azure SWA preview environment maximum)

### Full Changelog
https://github.com/jamesconsultingllc/resolve-swa-environment-action/compare/v1...v1.0.1
