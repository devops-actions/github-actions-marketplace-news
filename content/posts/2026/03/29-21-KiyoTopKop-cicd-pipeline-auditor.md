---
title: PipeLint CI/CD Auditor
date: 2026-03-29 21:51:06 +00:00
tags:
  - KiyoTopKop
  - GitHub Actions
draft: false
repo: https://github.com/KiyoTopKop/cicd-pipeline-auditor
marketplace: https://github.com/marketplace/actions/pipelint-ci-cd-auditor
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/KiyoTopKop/cicd-pipeline-auditor** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipelint-ci-cd-auditor) to find the latest changes.

## Action Summary

PipeLint is a static analysis tool designed to enhance the security of GitHub Actions workflows by identifying vulnerabilities, excessive permissions, secret exfiltration risks, command injection, and other misconfigurations. It automates the detection of 32 security issues across six categories, providing actionable guidance to developers. The analysis runs entirely client-side, ensuring no data leaves the user's environment, and supports both a web interface and integration within CI/CD pipelines.

## What's Changed

We are thrilled to launch **PipeLint v1.0** — an open-source, developer-first security scanner for GitHub Actions workflows!

### 🔥 Key Features
*   **Instant Browser Scanning**: Paste your YAML; get results in <100ms. No backend, no data leaves your machine.
*   **32 Curated Security Rules**: Detects unpinned actions (`SC-001`), overly broad permissions (`PM-002`), secret exfiltration (`SE-001`), and Docker escapes (`EE-004`).
*   **CLI & CI Ready**: Includes a robust CLI for local scanning and a GitHub Action for continuous security checks.
*   **Standardized**: Output mapped to CWE, OSSF Scorecard, and OWASP CI/CD Top 10.
