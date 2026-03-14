---
title: qualtio Security Headers Checker
date: 2026-03-14 21:27:43 +00:00
tags:
  - qualtio
  - GitHub Actions
draft: false
repo: https://github.com/qualtio/Security-Headers-Checker
marketplace: https://github.com/marketplace/actions/qualtio-security-headers-checker
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/qualtio/Security-Headers-Checker** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/qualtio-security-headers-checker) to find the latest changes.

## Action Summary

The **Security Headers Checker** GitHub Action validates the HTTP security headers of a deployed application against OWASP Secure Headers Project recommendations. It automates the detection of missing or misconfigured headers, allowing teams to enforce security best practices directly in their CI/CD workflows. The action provides capabilities such as customizable header checks, security scoring, and JSON report generation to streamline application security monitoring.

## Release notes

## 🎉 Initial Release

Validate the HTTP security headers of any deployed URL directly in your CI/CD pipeline — and fail the build if critical headers are missing.

Based on the [OWASP Secure Headers Project](https://owasp.org/www-project-secure-headers/) recommendations.

### Features
- 🛡️ Checks 9 security headers (HSTS, CSP, X-Frame-Options, and more)
- 📊 Outputs a security score from 0 to 100
- 🔧 Fully configurable required vs warning headers
- 📄 Optional JSON report as workflow artifact
- 🔁 Works on `deployment_status`, `push`, or any event

### Usage
\```yaml
- uses: qualtio/Security-Headers-Checker@v1
  with:
    url: 'https://your-app.com'
\```

Full documentation in the [README](https://github.com/qualtio/Security-Headers-Checker#readme).

