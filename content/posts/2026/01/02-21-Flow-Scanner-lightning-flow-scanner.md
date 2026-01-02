---
title: Lightning Flow Scan
date: 2026-01-02 21:17:53 +00:00
tags:
  - Flow-Scanner
  - GitHub Actions
draft: false
repo: https://github.com/Flow-Scanner/lightning-flow-scanner
marketplace: https://github.com/marketplace/actions/lightning-flow-scan
version: action-v3.1.0
dependentsNumber: "0"
---


Version updated for **https://github.com/Flow-Scanner/lightning-flow-scanner** to version **action-v3.1.0**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lightning-flow-scan) to find the latest changes.

## Action Summary

The Lightning Flow Scanner is a GitHub Action designed to analyze and optimize Salesforce Flows by detecting potential issues such as unsafe contexts, queries in loops, hardcoded IDs, and other inefficiencies. It automates the identification of common pitfalls that can lead to performance issues or errors, helping developers adhere to best practices and improve the maintainability of their flows. Key capabilities include customizable scanning rules, severity level configuration, and the ability to exclude specific flows or define exceptions for targeted analysis.

## Release notes

# Release Notes – Exclude Flows from scanning

**Action tag:** action-v3.1.0
**CLI tag:** v6.14.0
**Core tag:** core-v6.14.0
**VSX Version:** v2.9.0

## New Features

### Enhanced Flow Exclusion Options

Lightning Flow Scanner now provides two complementary ways to exclude flows from scanning, offering greater flexibility across different environments and use cases.

#### Exclude by File Path (`ignore`)
- Added support for glob pattern-based exclusion during flow discovery phase
- Enables efficient exclusion of entire directories or specific file patterns
- Most performant option for excluding large numbers of flows
- **Environment compatibility**: Available in CLI Plugin, VS Code Extension, and GitHub Action (requires Node.js/file system access)

Example configuration:
```json
{
  "ignore": [
    "**/testing/**",
    "**/*_Deprecated.flow-meta.xml"
  ]
}
```

#### Exclude by Flow API Name (`ignoreFlows`)
- Added support for excluding flows by their unique API names
- Works regardless of file system location or directory structure
- Provides precise control for excluding specific flows
- **Environment compatibility**: Works in all environments including browser/web distributions

Example configuration:
```json
{
  "ignoreFlows": [
    "My_Legacy_Flow",
    "Temporary_Test_Flow",
    "Deprecated_Process_Builder"
  ]
}
```

These options can be used independently or together to create flexible exclusion strategies that work across different deployment scenarios and development environments.
