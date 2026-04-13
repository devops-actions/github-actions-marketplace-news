---
title: Vibe Security Checker
date: 2026-04-13 06:27:13 +00:00
tags:
  - sondberg84
  - GitHub Actions
draft: false
repo: https://github.com/sondberg84/vibe-security-checker
marketplace: https://github.com/marketplace/actions/vibe-security-checker
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sondberg84/vibe-security-checker** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibe-security-checker) to find the latest changes.

## Action Summary

Vibe Security Checker is a standalone security scanner designed for Python and JavaScript projects, particularly those involving AI-generated code. It automates the detection of security vulnerabilities such as secrets exposure, injection flaws, weak cryptography, misconfigured JWTs, SSRF risks, and outdated dependencies with CVEs, without requiring external API keys. The tool provides detailed findings, severity levels, fix suggestions, and supports various output formats and integrations, streamlining the process of identifying and addressing security risks in codebases.

## What's Changed

## Vibe Security Checker v1.0.0

A fast, standalone security scanner for AI-generated ("vibe-coded") Python and JavaScript projects.

### What it detects
- Secrets & API keys (regex + Shannon entropy)
- SQL, command, path traversal, XSS, and NoSQL injection
- Authentication and session management issues
- Weak cryptography (MD5/SHA1 for passwords, ECB mode, insecure random)
- Cloud misconfigurations (public S3, service account keys)
- Sensitive data exposure (PII, SSNs, credit card patterns)
- Debug code left in production
- HTTPS enforcement issues
- SSRF (Server-Side Request Forgery)
- JWT misconfigurations (algorithm=none, verify=False)
- Missing security headers (CSP, HSTS, X-Frame-Options, CORS)
- CVE-affected dependencies via OSV.dev + typosquatting detection
- Secrets committed and later deleted in git history

### Install
```bash
pip install vibe-security-checker
vibe-security-checker /path/to/project --full
```

### GitHub Actions
```yaml
- uses: sondberg84/vibe-security-checker@v1
  with:
    path: .
    fail_on: HIGH
```

### Highlights
- No external API keys required
- CWE + OWASP Top 10 (2021) mapping on every finding
- Confidence scores (HIGH/MEDIUM/LOW) to reduce alert fatigue
- Secret values masked in output
- Baseline/diff mode — only alert on new findings
- Inline suppression with `# vibe-ignore`
- VS Code problem matcher integration
- SARIF output for GitHub Advanced Security
- 244 unit tests
