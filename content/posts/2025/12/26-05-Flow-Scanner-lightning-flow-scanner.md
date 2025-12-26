---
title: Lightning Flow Scan
date: 2025-12-26 05:29:47 +00:00
tags:
  - Flow-Scanner
  - GitHub Actions
draft: false
repo: https://github.com/Flow-Scanner/lightning-flow-scanner
marketplace: https://github.com/marketplace/actions/lightning-flow-scan
version: action-v2.8.0
dependentsNumber: "0"
---


Version updated for **https://github.com/Flow-Scanner/lightning-flow-scanner** to version **action-v2.8.0**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lightning-flow-scan) to find the latest changes.

## Action Summary

The Lightning Flow Scanner is a GitHub Action designed to analyze and optimize Salesforce Flows by detecting common issues such as unsafe contexts, queries in loops, hardcoded IDs, and excessive complexity. It automates the identification of potential flaws in Flow design, helping developers ensure best practices and maintain compliance with Apex governor limits. Key capabilities include rule-based scanning, customizable severity levels, and support for detecting configuration errors to improve Flow performance and maintainability.

## Release notes

# Release Notes – Winter '26 Compatibility

**Action tag:** action-v2.8.0
**CLI tag:** v6.13.0
**Core tag:** core-v6.13.0
**VSX Version:** v2.7.0

## Salesforce Winter '26 Compatibility

- API Version Support: Full support for Salesforce Winter '26 flows where apiVersion is now explicitly shown for all versions, including pre-50.0 flows
- Data Cloud Integration: Added support for the areMetricsLoggedToDataCloud flow attribute
- Added support for new styling properties in flow model

 ## Additional Fixes:
- GetRecordAllFields Rule now correctly handles single field queries in Get Records elements
Previously, flows with a single queriedFields entry were incorrectly flagged as using "Automatically store all fields". The rule now properly detects when specific fields are queried, whether single or multiple.
- MissingNullHandler Rule now flags used variables from dml statements that have a fault handler.
Previously, fault paths would by default resolve missing null handler, even when there was no actual null check before variable usage.
