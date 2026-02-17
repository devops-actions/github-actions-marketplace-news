---
title: Setup Metanorma
date: 2026-02-17 13:25:31 +00:00
tags:
  - actions-mn
  - GitHub Actions
draft: false
repo: https://github.com/actions-mn/setup
marketplace: https://github.com/marketplace/actions/setup-metanorma
version: v3.1.0
dependentsNumber: "64"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/actions-mn/setup** to version **v3.1.0**.
- This action is used across all versions by **64** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-metanorma) to find the latest changes.

## Action Summary

The "Setup Metanorma" GitHub Action automates the installation and configuration of the Metanorma toolchain, enabling users to author and manage standards documents for organizations like ISO, IEC, and IEEE. It streamlines the setup process by supporting multiple installation methods, managing dependencies, and providing features like private flavor support, idempotent installations, and pre-tested configurations. This action simplifies and accelerates the integration of Metanorma into CI/CD workflows, making it easier to create consistent, standards-compliant documents.

## Release notes

## What's New

### Extra Flavors Support

This release adds the ability to install additional metanorma flavor gems directly through the setup action, consolidating functionality from the separate `actions-mn/setup-flavors` action.

**New Inputs:**
- `extra-flavors`: Space-separated list of extra flavor gems to install
- `github-packages-token`: GitHub token for private packages at rubygems.pkg.github.com/metanorma

**Private Flavors** (require `github-packages-token`):
- `bsi` - British Standards Institution
- `nist` - National Institute of Standards and Technology

**Public Flavors** (no token needed):
- `iso`, `ietf`, `ribose`, `cc`, `plateau`, etc.

### Usage Example

```yaml
- uses: actions-mn/setup@v3
  with:
    installation-method: gem
    extra-flavors: bsi nist
    github-packages-token: ${{ secrets.METANORMA_CI_PAT_TOKEN }}
```

### Migration from setup-flavors

**Before:**
```yaml
- uses: actions-mn/setup@v3
- uses: actions-mn/setup-flavors@v1
  with:
    extra-flavors: bsi
    github-packages-token: ${{ secrets.METANORMA_CI_PAT_TOKEN }}
```

**After:**
```yaml
- uses: actions-mn/setup@v3
  with:
    installation-method: gem
    extra-flavors: bsi
    github-packages-token: ${{ secrets.METANORMA_CI_PAT_TOKEN }}
```

**Full Changelog**: https://github.com/actions-mn/setup/compare/v3.0.0...v3.1.0
