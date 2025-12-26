---
title: Lightning Flow Scan
date: 2025-12-26 13:14:08 +00:00
tags:
  - Flow-Scanner
  - GitHub Actions
draft: false
repo: https://github.com/Flow-Scanner/lightning-flow-scanner
marketplace: https://github.com/marketplace/actions/lightning-flow-scan
version: action-v2.8.1
dependentsNumber: "0"
---


Version updated for **https://github.com/Flow-Scanner/lightning-flow-scanner** to version **action-v2.8.1**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lightning-flow-scan) to find the latest changes.

## Action Summary

The Lightning Flow Scanner is a GitHub Action designed to analyze Salesforce Flows for potential issues, such as unsafe contexts, queries inside loops, hardcoded IDs, and other inefficiencies. It automates the detection of common pitfalls and provides actionable insights to optimize Flow performance and maintainability. Key capabilities include customizable rule sets, severity levels, and exceptions to tailor the analysis to specific needs.

## Release notes

# Release Notes – Winter '26 Compatibility

**Action tag:** action-v2.8.1
**CLI tag:** v6.13.1
**Core tag:** core-v6.13.1
**VSX Version:** v2.7.1

## Salesforce Winter '26 Compatibility

- API Version Support: Full support for Salesforce Winter '26 flows where apiVersion is now explicitly shown for all versions, including pre-50.0 flows
- Data Cloud Integration: Added support for the areMetricsLoggedToDataCloud flow attribute
- Added support for new styling properties in flow model

 ## Additional Fixes:
- Warning is now always default severity across all distributions.
- GetRecordAllFields Rule now correctly handles single field queries in Get Records elements
Previously, flows with a single queriedFields entry were incorrectly flagged as using "Automatically store all fields". The rule now properly detects when specific fields are queried, whether single or multiple.
- MissingNullHandler Rule now flags used variables from dml statements that have a fault handler.
Previously, fault paths would by default resolve missing null handler, even when there was no actual null check before variable usage.
