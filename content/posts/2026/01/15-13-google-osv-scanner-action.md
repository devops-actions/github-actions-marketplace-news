---
title: osv-scanner
date: 2026-01-15 13:22:15 +00:00
tags:
  - google
  - GitHub Actions
draft: false
repo: https://github.com/google/osv-scanner-action
marketplace: https://github.com/marketplace/actions/osv-scanner
version: v2.3.2
dependentsNumber: "1,638"
---


Version updated for **https://github.com/google/osv-scanner-action** to version **v2.3.2**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **1,638** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/osv-scanner) to find the latest changes.

## Action Summary

The OSV-Scanner CI/CD GitHub Action integrates with the OSV.dev vulnerability database to automatically scan project dependencies for known vulnerabilities. It provides workflows for scanning pull requests to prevent introducing new vulnerabilities and for conducting full or scheduled scans to identify and track issues in the dependency tree. This action helps automate vulnerability detection, ensuring improved security management in CI/CD pipelines.

## Release notes

This updates OSV-Scanner to v2.3.2

This release includes performance improvements for local scanning, reducing memory usage and avoiding unnecessary advisory loading. It also fixes issues with MCP's get_vulnerability_details tool, git queries in `osv-scanner.json`, and ignore entry tracking, along with documentation updates.

### Fixes:

- [Bug #2415](https://github.com/google/osv-scanner/pull/2415) Add more PURL-to-ecosystem mappings
- [Bug #2422](https://github.com/google/osv-scanner/pull/2422) MCP error for get_vulnerability_id because type definition is incorrect.
- [Bug #2460](https://github.com/google/osv-scanner/pull/2460) Enable osv-scanner.json git queries
- [Bug #2456](https://github.com/google/osv-scanner/pull/2456) Properly track if an ignore entry has been used
- [Bug #2450](https://github.com/google/osv-scanner/pull/2450) **Performance:** Avoid loading the entire advisory unless it will actually be used
- [Bug #2445](https://github.com/google/osv-scanner/pull/2445) **Performance:** Don't read the entire zip into memory
- [Bug #2433](https://github.com/google/osv-scanner/pull/2433) Allow specifying user agent in v2 osvscanner package

### Misc:

- [Misc #2453](https://github.com/google/osv-scanner/pull/2453) Switch from gopkg.in/yaml.v3 to go.yaml.in/yaml/v3
- [Misc #2447](https://github.com/google/osv-scanner/pull/2447) Include `bun.lock` as a supported lockfile
- [Misc #2444](https://github.com/google/osv-scanner/pull/2444) Document GoVersionOverride in configuration.md

**Full Changelog**: https://github.com/google/osv-scanner/compare/v2.3.1...v2.3.2
