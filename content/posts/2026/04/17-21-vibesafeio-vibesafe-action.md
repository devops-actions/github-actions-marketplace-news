---
title: VibeSafe Security Scan
date: 2026-04-17 21:56:05 +00:00
tags:
  - vibesafeio
  - GitHub Actions
draft: false
repo: https://github.com/vibesafeio/vibesafe-action
marketplace: https://github.com/marketplace/actions/vibesafe-security-scan
version: v0.1.1
dependentsNumber: "1"
actionType: Docker
---


Version updated for **https://github.com/vibesafeio/vibesafe-action** to version **v0.1.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibesafe-security-scan) to find the latest changes.

## Action Summary

VibeSafe is a GitHub Action designed to scan AI-generated apps for security and accessibility vulnerabilities. It automates the detection of issues such as hardcoded API keys, SQL injection, misconfigured database security, and ADA compliance gaps, providing a safety score and actionable fixes via AI-generated prompts. This tool helps developers ensure their applications are safe to deploy, reducing risks of data breaches, legal issues, and insecure coding practices.

## What's Changed

## v0.1.1 — Patch release

**Fix:** remove broken GHA buildx cache that could fail scans in CI.
No API or behavior changes. Safe upgrade from v0.1.0.

---

## What VibeSafe does

Scan AI-generated code for security issues on every PR.
- SAST (OWASP Top 10) + secret detection
- Domain-specific rules (fintech, healthcare, ecommerce, etc.)
- 0–100 score, A–F grade, Certified badge
- Free, no signup

**Try it first:** https://vibesafe.onrender.com/?utm_source=github&utm_medium=release_notes&utm_campaign=launch

## Install

```yaml
- uses: vibesafeio/vibesafe-action@v0
```
