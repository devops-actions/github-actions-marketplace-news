---
title: Odin Scan - Smart Contract Security
date: 2026-08-09 14:00:43 +00:00
tags:
  - Odin-Scan
  - GitHub Actions
draft: false
repo: https://github.com/Odin-Scan/odin-scan-action
marketplace: https://github.com/marketplace/actions/odin-scan-smart-contract-security
version: v1.0.5
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  Odin Scan is an AI-powered smart contract security analysis action that automatically scans CosmWasm, Solana, and EVM projects. It integrates directly into GitHub workflows to catch vulnerabilities before they reach production, providing detailed security alerts in PR comments and inline annotations. The action supports multi-platform detection, configurable thresholds, and GitHub Code Scanning integration, allowing for comprehensive security monitoring of smart contracts.
---


Version updated for **https://github.com/Odin-Scan/odin-scan-action** to version **v1.0.5**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/odin-scan-smart-contract-security) to find the latest changes.

## Action Summary

Odin Scan is an AI-powered smart contract security analysis action that automatically scans CosmWasm, Solana, and EVM projects. It integrates directly into GitHub workflows to catch vulnerabilities before they reach production, providing detailed security alerts in PR comments and inline annotations. The action supports multi-platform detection, configurable thresholds, and GitHub Code Scanning integration, allowing for comprehensive security monitoring of smart contracts.

## What's Changed

- feat: add comment-triggered PR scans (ac72e5f)
- docs: expand findings-visibility section with threat model and annotation rationale (0404708)
- feat: add findings-visibility input for graduated public disclosure control (f18df59)
- fix: show findings detail in PR comment with fallback to medium (c2e43c8)
- fix: new comment per run, show only critical/high findings, rebuild dist (e237b62)
- feat: use GitHub App installation token for branded PR comments (3abce4e)
- feat: enrich PR comment with emojis, descriptions, and fix report URL (27cc2f2)
- fix: gzip SARIF before base64 encoding for Code Scanning upload (d9eed9f)
- fix: include sourcemap-register.js in dist (bd265af)
- docs: add privacy policy (b78db44)
