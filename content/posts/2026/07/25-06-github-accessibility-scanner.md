---
title: accessibility-scanner
date: 2026-07-25 06:54:40 +00:00
tags:
  - github
  - GitHub Actions
draft: false
repo: https://github.com/github/accessibility-scanner
marketplace: https://github.com/marketplace/actions/accessibility-scanner
version: v3.4.0
dependentsNumber: "47"
actionType: Composite
actionSummary: |
  The AI-powered Accessibility Scanner is a GitHub Action designed to identify and report accessibility issues across websites, repositories, and dynamic content. It creates actionable GitHub Issues with proposals for fixes using GitHub Copilot, helping teams improve web accessibility. The action supports manual triggering, customizable parameters, and caching for efficient scanning.
---


Version updated for **https://github.com/github/accessibility-scanner** to version **v3.4.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **47** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/accessibility-scanner) to find the latest changes.

## Action Summary

The AI-powered Accessibility Scanner is a GitHub Action designed to identify and report accessibility issues across websites, repositories, and dynamic content. It creates actionable GitHub Issues with proposals for fixes using GitHub Copilot, helping teams improve web accessibility. The action supports manual triggering, customizable parameters, and caching for efficient scanning.

## What's Changed

## What's Changed

### New features

* Load allowlisted first-party scanner plugins from NPM packages with object `scans` entries and optional version pinning by @kzhou314 in https://github.com/github/accessibility-scanner/pull/242
* Add AccessLint as a built-in scan engine, with Axe comparison and engine-selection guidance by @kzhou314 in https://github.com/github/accessibility-scanner/pull/241

### Documentation and maintenance

* Document the first-party Alt Text Plugin and its NPM configuration by @kzhou314 in https://github.com/github/accessibility-scanner/pull/247
* Update `ruby/setup-ruby` by @dependabot in https://github.com/github/accessibility-scanner/pull/246 and https://github.com/github/accessibility-scanner/pull/248
* Update `actions/setup-node` and patched `brace-expansion` by @dependabot in https://github.com/github/accessibility-scanner/pull/248 and https://github.com/github/accessibility-scanner/pull/249

## Upgrade notes

This release is additive and backward-compatible. Existing workflows using `github/accessibility-scanner@v3` do not need configuration changes, and Axe remains the default when `scans` is omitted.

To use the currently published Alt Text Plugin with an explicit version pin:

```yaml
scans: |
  ["axe", {"name": "alt-text-scan", "package": "@github/accessibility-scanner-alt-text-plugin", "version": "1.0.0"}]
```

Only allowlisted first-party NPM plugins are loaded, and package lifecycle scripts are disabled during installation.

**Full Changelog**: https://github.com/github/accessibility-scanner/compare/v3.3.0...v3.4.0

