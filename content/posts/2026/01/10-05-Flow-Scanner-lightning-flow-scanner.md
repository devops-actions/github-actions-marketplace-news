---
title: Lightning Flow Scan
date: 2026-01-10 05:31:35 +00:00
tags:
  - Flow-Scanner
  - GitHub Actions
draft: false
repo: https://github.com/Flow-Scanner/lightning-flow-scanner
marketplace: https://github.com/marketplace/actions/lightning-flow-scan
version: v6.16.2
dependentsNumber: "0"
---


Version updated for **https://github.com/Flow-Scanner/lightning-flow-scanner** to version **v6.16.2**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lightning-flow-scan) to find the latest changes.

## Action Summary

The Lightning Flow Scanner is a GitHub Action designed to analyze and optimize Salesforce Flows by detecting anti-patterns, unsafe practices, and potential issues such as queries in loops, hardcoded IDs, and insecure contexts. It automates the identification of common Flow design flaws that could lead to deployment failures, performance issues, or security vulnerabilities. Its key capabilities include rule-based scanning, customizable configurations for exceptions, and support for CI/CD integration to ensure consistent Flow quality and compliance.

## Release notes

## Fix [Exceptions Issue running via sf cli](https://github.com/Flow-Scanner/lightning-flow-scanner/issues/285)

Exceptions are now correctly skipped from the CLI when configured. The behavior is now consistent across CLI plugin and VS Code  fully resolving #285 reported by @aidandunne1892

CLI version: v6.16.2
VSX Version: v3.1.2

For more information on exceptions, please refer the [readme documentation](https://github.com/Flow-Scanner/lightning-flow-scanner?tab=readme-ov-file#define-exceptions)
