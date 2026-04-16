---
title: Korext Enforce
date: 2026-04-16 14:13:47 +00:00
tags:
  - Korext
  - GitHub Actions
draft: false
repo: https://github.com/Korext/enforce-action
marketplace: https://github.com/marketplace/actions/korext-enforce
version: v3.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Korext/enforce-action** to version **v3.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/korext-enforce) to find the latest changes.

## Action Summary

The **KOREXT Enforce Action** is a GitHub Action designed to automate the enforcement of compliance policies on AI-generated code during development workflows. It scans codebases for violations based on customizable policy packs and rules across multiple programming languages, providing detailed annotations on pull request diffs via GitHub Code Scanning. By automating compliance checks, it helps developers identify and address critical issues early, ensuring adherence to standards such as GDPR, OWASP, and PCI DSS.

## What's Changed

Updated to Korext CLI 1.0.1.

## What's Changed
- 72 policy packs with 547 detection rules across 18 industries
- Data sovereignty: choose US, EU, or Asia Pacific for data processing
- Cryptographically signed proof bundles with HMAC v2
- Customer managed signing keys
- Deep code analysis across 13 languages with confidence scoring
- Organization policy enforcement with mandatory packs
- MCP Server integration (Model Context Protocol)
## Migration from v3.0.0
No breaking changes. Replace `uses: Korext/enforce-action@v3.0.0` with `uses: Korext/enforce-action@v3.0.1` or use `@v3` for the latest.

**Full Changelog**: https://github.com/Korext/enforce-action/compare/v3.0.0...v3.0.1
