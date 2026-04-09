---
title: Korext Enforce
date: 2026-04-09 22:02:59 +00:00
tags:
  - Korext
  - GitHub Actions
draft: false
repo: https://github.com/Korext/enforce-action
marketplace: https://github.com/marketplace/actions/korext-enforce
version: v1.0.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Korext/enforce-action** to version **v1.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/korext-enforce) to find the latest changes.

## Action Summary

The **Korext Enforce Action** automates the enforcement of security, compliance, and quality standards in AI-generated code within GitHub workflows. It scans a codebase using policy packs, identifies violations, and reports them as annotations on pull request diffs through GitHub Code Scanning. By automating code analysis and providing actionable feedback, it helps teams maintain high code quality and ensures adherence to organizational or industry standards.

## What's Changed

## What's Changed

**Multi-pack enforcement support**
Select and enforce multiple policy packs in a single scan. PCI-DSS + DORA together. HIPAA + FDA together. One scan, one proof bundle, multiple compliance frameworks.

**4 new policy packs**
- Browser Governance (10 rules): CSP, SRI, CORS, cookies, Permissions Policy, clickjacking, postMessage, open redirects
- - Quantum Resilience (8 rules): SHA-1, MD5, weak RSA, DES, deprecated TLS, weak curves, hardcoded IVs
- EU AI Act v2 (10 rules): logging, human oversight, bias detection, prompt injection, biometric consent, emotion recognition
- GPC Enforcement (8 rules): Sec-GPC header, tracking cookies, third party sharing, fingerprinting

**Updated stats**
- 71 policy packs, 532 detection rules
- Knowledge Base: 661 searchable documents with semantic search
- CLI updated to v0.9.6

**Full Changelog**: https://github.com/Korext/enforce-action/compare/v1.0.1...v1.0.2- 
