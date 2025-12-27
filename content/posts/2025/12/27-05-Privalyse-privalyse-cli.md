---
title: Privalyse Security Scan
date: 2025-12-27 05:27:55 +00:00
tags:
  - Privalyse
  - GitHub Actions
draft: false
repo: https://github.com/Privalyse/privalyse-cli
marketplace: https://github.com/marketplace/actions/privalyse-security-scan
version: v0.3.3
dependentsNumber: "?"
---


Version updated for **https://github.com/Privalyse/privalyse-cli** to version **v0.3.3**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/privalyse-security-scan) to find the latest changes.

## Action Summary

Privalyse is a GitHub Action and CLI tool designed to automate the detection of privacy violations, such as PII leaks, hardcoded secrets, and non-compliant data transfers, in your codebase. By building a Semantic Data Flow Graph, it traces data flow from source to sink, offering advanced, context-aware analysis that outperforms traditional regex-based linters. Key capabilities include secret detection, PII leak prevention, GDPR compliance checks, and specialized guardrails for applications using AI models.

## Release notes

### 🛡️ Enterprise Security Integration
*   **GitHub Code Scanning Support (SARIF):** Privalyse can now export findings in SARIF format (`--format sarif`). This allows you to view privacy leaks directly in the **GitHub Security Tab** of your repository.
*   **Action Update:** The GitHub Action now supports the `format` input to easily switch between Markdown reports and SARIF integration.

### 📦 Improvements
*   **PyPI Compatibility:** Fixed README rendering issues on PyPI by switching to pure Markdown and raw GitHub asset links.
*   **Windows Support:** Fixed encoding issues and path separator bugs in tests, ensuring smoother runs on Windows runners.

### 🚀 Quick Start for GitHub Security
```yaml
- uses: privalyse/privalyse-cli@v0.3.3
  with:
    format: 'sarif'
    out: 'results.sarif'

- uses: github/codeql-action/upload-sarif@v2
  with:
    sarif_file: results.sarif
```
