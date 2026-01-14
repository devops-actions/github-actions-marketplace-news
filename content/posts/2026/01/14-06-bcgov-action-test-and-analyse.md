---
title: Test and Analyze with Triggers and SonarCloud
date: 2026-01-14 06:02:30 +00:00
tags:
  - bcgov
  - GitHub Actions
draft: false
repo: https://github.com/bcgov/action-test-and-analyse
marketplace: https://github.com/marketplace/actions/test-and-analyze-with-triggers-and-sonarcloud
version: v2.0.0
dependentsNumber: "182"
---


Version updated for **https://github.com/bcgov/action-test-and-analyse** to version **v2.0.0**.
- This action is used across all versions by **182** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/test-and-analyze-with-triggers-and-sonarcloud) to find the latest changes.

## Action Summary

This GitHub Action automates testing, code analysis, and security scanning for Node.js (JavaScript/TypeScript) projects. It runs tests based on code changes, integrates with SonarCloud for coverage and code quality reporting, and optionally enables supply chain attack detection and dependency/export analysis. This helps streamline CI/CD workflows, enhance code quality, and improve security by detecting unused dependencies and malicious packages.

## Release notes

# Release v2.0.0

## 🔒 Security Enhancement: Supply Chain Scanning Enabled by Default

**BREAKING CHANGE**: Supply chain scanning is now enabled by default (supply_scan: true). This change prioritizes security by automatically protecting against supply chain attacks, typosquatting, and malicious packages.

### What Changed

- supply_scan default changed from false to true
- Supply chain scanning now runs automatically unless explicitly disabled
- No additional configuration required - scanning happens during npm ci

### Why This Change?

Supply chain attacks are critical security threats that should be caught by default. The scanning:
- Blocks known malicious packages and supply chain attacks
- Protects against typosquatting and suspicious install scripts  
- Has minimal overhead (runs during existing npm commands)
- Aligns with our security-first approach alongside dep_scan: warn

### Migration Guide

If you want to keep the previous behavior (disable supply chain scanning), explicitly set supply_scan: false:

```
- uses: bcgov/action-test-and-analyse@v2.0.0
  with:
    commands: |
      npm ci
      npm run test:cov
    dir: frontend
    node_version: "20"
    supply_scan: false  # Explicitly disable if needed
```

If you're already using supply_scan: true or not specifying it, no changes needed - you'll continue to get supply chain protection automatically.

If you were relying on the previous default (false), you'll now get supply chain scanning automatically. This is recommended for security, but you can disable it if you encounter issues.

## 📚 Documentation Improvements

- Updated README with clear guidance on supply chain scanning defaults
- Added "How to Disable" section for supply chain scanning
- Updated all usage examples to reflect new defaults
- Improved copilot instructions for maintainers

## 🔧 Knip Configuration Updates

- Updated default Knip configuration with additional common exclusions
- Improved handling of TypeScript type definitions and testing libraries
- Better support for projects using @testing-library/user-event

## Full Changelog

- ✅ Changed supply_scan default from false to true (breaking change)
- ✅ Updated documentation to reflect security-first defaults
- ✅ Enhanced Knip default configuration
- ✅ Improved internal documentation for maintainers

---

Note: This is a major version release due to the breaking change in default behavior. Existing workflows that did not explicitly set supply_scan will now have supply chain scanning enabled automatically.

---

## What's Changed
* feat: default Knip config, flexible dep_scan modes by @DerekRoberts in https://github.com/bcgov/action-test-and-analyse/pull/97
* feat: manage Knip and safe-chain versions via package.json with dynamic Node.js version by @Copilot in https://github.com/bcgov/action-test-and-analyse/pull/99
* feat: Knip annotations, summary, improved error handling by @DerekRoberts in https://github.com/bcgov/action-test-and-analyse/pull/100
* docs: update copilot instructions for v1.7.0 by @DerekRoberts in https://github.com/bcgov/action-test-and-analyse/pull/101
* docs: cleanup, remove unimplemented synonyms by @DerekRoberts in https://github.com/bcgov/action-test-and-analyse/pull/102
* chore(ci): add to knip exceptions by @DerekRoberts in https://github.com/bcgov/action-test-and-analyse/pull/103
* feat: enable supply chain scanning by default by @DerekRoberts in https://github.com/bcgov/action-test-and-analyse/pull/104


**Full Changelog**: https://github.com/bcgov/action-test-and-analyse/compare/v1.6.0...v2.0.0
