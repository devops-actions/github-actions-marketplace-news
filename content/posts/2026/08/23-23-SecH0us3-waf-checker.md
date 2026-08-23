---
title: WAF Security Audit
date: 2026-08-23 23:00:52 +00:00
tags:
  - SecH0us3
  - GitHub Actions
draft: false
repo: https://github.com/SecH0us3/waf-checker
marketplace: https://github.com/marketplace/actions/waf-security-audit
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  **Summary:**
  
  WAF Checker is a powerful tool designed to help developers test their Web Application Firewalls (WAFs) against various types of web attacks. It supports running as a Cloudflare Worker with an interactive UI or as a standalone Node.js CLI, offering comprehensive testing features such as core testing, attack category detection, WAF bypass payloads, and batch testing capabilities.
---


Version updated for **https://github.com/SecH0us3/waf-checker** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/waf-security-audit) to find the latest changes.

## Action Summary

**Summary:**

WAF Checker is a powerful tool designed to help developers test their Web Application Firewalls (WAFs) against various types of web attacks. It supports running as a Cloudflare Worker with an interactive UI or as a standalone Node.js CLI, offering comprehensive testing features such as core testing, attack category detection, WAF bypass payloads, and batch testing capabilities.

## What's Changed

## 🚀 What's New in v1.1.0

### 🛡️ Expanded Vulnerability Categories & Payloads
- **GraphQL Injection**: Introspection queries (`__schema`, `__type`), batching attacks, field aliasing, directive bypasses (`@deprecated`, `@skip`).
- **JWT Attacks**: Alg: none / NONE forgery, `jku`, `jwk` injection, and `kid` path traversal (`../../dev/null`) in both HTTP headers and URL/body parameters.
- **Enhanced SSTI**: Spring Expression Language (SpEL), FreeMarker, Mako, Smarty, Handlebars, Pug/Jade, and Twig engines.
- **Cloud SSRF**: Google Cloud Metadata, Azure Instance Metadata, Oracle Cloud, Alibaba Cloud, Hex/Octal/Decimal IP notations, and IPv6-mapped IPv4.

### 🥷 WAF Inspection Limit Bypass (Buffer Padding Evasion)
- Added buffer padding engine in Core, CLI (`--padding <size>`), and Web UI to evade inspection buffer limits (8KB, 16KB AWS WAF limit, 64KB, 128KB Cloudflare limit).

### 🔍 Expanded WAF Signatures & Detection
- Added fingerprinting for **DDoS-Guard**, **Google Cloud Armor**, **Azure Front Door**, **Imperva**, **Qrator**, **Wordfence**, **Alibaba Cloud**, **Citrix NetScaler**, and fixed false positives on vanilla Apache / CloudFront.

### 📊 CI/CD Integration & Reporting
- **GitHub Action**: `uses: SecH0us3/waf-checker@v1` with automated `$GITHUB_STEP_SUMMARY`, SARIF 2.1.0 output for GitHub Advanced Security, and `--threshold` CI enforcement.
- **Reporting Formats**: SARIF, Markdown, standalone interactive HTML, JSON, and CSV.

### 🎨 Web UI UX Improvements
- Reordered attack categories by popularity (OWASP Top 10 on top, niche & rare attacks below).
- Interactive Buffer Padding Evasion controls with `localStorage` persistence.
