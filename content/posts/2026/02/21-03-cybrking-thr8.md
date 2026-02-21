---
title: PASTA Threat Model Generator
date: 2026-02-21 03:44:35 +00:00
tags:
  - cybrking
  - GitHub Actions
draft: false
repo: https://github.com/cybrking/thr8
marketplace: https://github.com/marketplace/actions/pasta-threat-model-generator
version: v1.2.0
dependentsNumber: "2"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/cybrking/thr8** to version **v1.2.0**.
- This action is used across all versions by **2** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pasta-threat-model-generator) to find the latest changes.

## Action Summary

The **PASTA Threat Model Generator GitHub Action** automates the creation of comprehensive threat models using the PASTA framework by analyzing a repository's codebase, infrastructure configurations, and API endpoints. It leverages static analysis and AI-powered threat reasoning to identify vulnerabilities, assess risks, and generate reports in various formats (e.g., Markdown, JSON, HTML). Additionally, it streamlines security workflows by creating GitHub Issues for findings, generating AI-powered fix PRs, and integrating directly into CI/CD pipelines to prevent deploying high-risk vulnerabilities.

## Release notes

## What's New

### Configurable `pr-severity` input

You can now control which severity levels get fix PRs when `auto-fix` is enabled, via the new `pr-severity` input:

```yaml
- uses: cybrking/thr8@v1
  with:
    anthropic-api-key: ${{ secrets.ANTHROPIC_API_KEY }}
    github-token: ${{ secrets.GITHUB_TOKEN }}
    auto-fix: 'true'
    create-issues: 'true'
    pr-severity: 'critical,high,medium'  # also auto-fix medium findings
```

**Default:** `critical,high` (matches previous behavior)

### Changes

- **Severity-only routing** — PR routing is now driven solely by severity level. The previous requirement for an `Immediate` priority recommendation has been removed.
- **`pr-severity` input** — Comma-separated list of severity levels that get fix PRs (e.g., `critical,high,medium`).
- **Updated docs** — README examples now use `@v1` major version tag.

### Upgrade

No breaking changes. Existing workflows using `auto-fix: 'true'` will continue to work — the default `pr-severity: 'critical,high'` preserves current behavior (with the minor improvement that `Immediate` priority is no longer required).
