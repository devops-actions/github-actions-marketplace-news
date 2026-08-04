---
title: VICE Security Audit
date: 2026-08-04 14:44:44 +00:00
tags:
  - Webba-Creative-Technologies
  - GitHub Actions
draft: false
repo: https://github.com/Webba-Creative-Technologies/vice
marketplace: https://github.com/marketplace/actions/vice-security-audit
version: v3.4.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  VICE is a comprehensive security auditing tool that automates the process of identifying vulnerabilities in web applications. It offers two modes: remote scan and local audit. The remote scan mode crawls a website, checks exposed services, and runs security probes within a selected scope. The local audit mode analyzes source code, `.env` files, and dependencies for SQL injection, XSS, and RLS issues. VICE also ships as a GitHub Action that integrates with CI/CD pipelines to continuously monitor and report on application security.
---


Version updated for **https://github.com/Webba-Creative-Technologies/vice** to version **v3.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vice-security-audit) to find the latest changes.

## Action Summary

VICE is a comprehensive security auditing tool that automates the process of identifying vulnerabilities in web applications. It offers two modes: remote scan and local audit. The remote scan mode crawls a website, checks exposed services, and runs security probes within a selected scope. The local audit mode analyzes source code, `.env` files, and dependencies for SQL injection, XSS, and RLS issues. VICE also ships as a GitHub Action that integrates with CI/CD pipelines to continuously monitor and report on application security.

## What's Changed

VICE 3.4.0 adds a complete security scanning module for AI and RAG application APIs.

## AI and RAG security module

The new module includes bounded, non-destructive checks for:

- Access control and authentication
- Rate limiting and abuse protection
- Prompt injection
- Retrieval and tenant isolation
- Sensitive data exposure
- Connected tools and function calling
- Generic JSON APIs
- OpenAI-compatible APIs
- Server-Sent Events responses

The module supports environment-backed authentication profiles and keeps sensitive evidence redacted.

It can be used directly from the interactive scanner or through a dedicated configuration file for automated scans.

## More reliable findings

This release also includes a broad false-positive reduction pass across local and remote audits.

- Missing CSRF and rate limiting controls are only reported when the related feature exists.
- Login security findings require an actual authentication flow.
- SPA fallback pages are distinguished from real API and administrative endpoints.
- Temporary DNS and browser failures are reported as incomplete coverage instead of vulnerabilities.
- Generic migrations, ordinary public storage and unconfirmed services no longer produce important findings.
- Placeholder credentials, documentation keys and example values are filtered more accurately.
- Sensitive values remain redacted from findings and reports.

## GitHub Action

The `v3` tag points to this release:

```yaml
uses: Webba-Creative-Technologies/vice@v3
```

## Upgrade

```bash
npm install -g vice-security@3.4.0
```

VICE 3.4.0 remains compatible with existing 3.x CLI commands and report formats.

