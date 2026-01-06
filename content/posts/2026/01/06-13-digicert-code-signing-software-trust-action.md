---
title: DigiCert Binary Signing
date: 2026-01-06 13:16:44 +00:00
tags:
  - digicert
  - GitHub Actions
draft: false
repo: https://github.com/digicert/code-signing-software-trust-action
marketplace: https://github.com/marketplace/actions/digicert-binary-signing
version: v1.0.1
dependentsNumber: "9"
---


Version updated for **https://github.com/digicert/code-signing-software-trust-action** to version **v1.0.1**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **9** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/digicert-binary-signing) to find the latest changes.

## Action Summary

This GitHub Action integrates DigiCert® Software Trust Manager into CI/CD workflows to automate secure code signing across Windows, Linux, and macOS environments. It simplifies the code signing process by managing keypairs, certificates, and compliance policies while preventing unauthorized access and ensuring software integrity. The action eliminates the need for third-party tools with its "simple signing" mode, streamlining workflows and supporting bulk signing for efficient and secure software releases.

## Release notes

**Description**  
Fixes MSI installation failures in the GitHub Action when the product is already installed in a different location (applicable for Self-hosted Windows runner). The action now automatically handles existing installations and improves reliability in non-interactive CI/CD environments.

### Upgrade steps
* Upgrade to this version to apply the fixes

### Breaking changes
* None

### New features
* None

### Bug fixes
* Fixed MSI reinstallation failures by automatically uninstalling existing installations before reinstalling (resolves DOSTM-8717)
* Fixed CI/CD pipeline blocking caused by interactive registry prompts by adding the `/f` flag to all `reg add` commands (fixes #11)

### Performance improvements
* Optimized MSI installation by removing registry and WMIC queries
* Improved fail-fast behavior with clearer error handling

### Other changes
* Refactored MSI installation logic for more reliable error handling
* Added detailed MSI log output to improve troubleshooting
