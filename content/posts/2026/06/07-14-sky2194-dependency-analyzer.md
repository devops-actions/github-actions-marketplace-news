---
title: Dependency Analyzer Security Scan
date: 2026-06-07 14:49:58 +00:00
tags:
  - sky2194
  - GitHub Actions
draft: false
repo: https://github.com/sky2194/dependency-analyzer
marketplace: https://github.com/marketplace/actions/dependency-analyzer-security-scan
version: v1.2.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/sky2194/dependency-analyzer** to version **v1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/dependency-analyzer-security-scan) to find the latest changes.

## What's Changed

## DepAnalyzer v1.2.0

Scan your npm, PyPI, or Maven dependencies for CVE vulnerabilities on every push or PR — never blocks your pipeline.

### What's new in v1.2.0
- **Auto-detect manifest** — no configuration needed, the Action finds `package.json`, `requirements.txt`, or `pom.xml` automatically
- **Production smoke tests** — 14 automated tests run against depanalyzer.com on every merge to main

### What's included

- **EPSS scoring** — probability (%) a CVE will be exploited in the wild within 30 days
- **CISA KEV alerts** — flags CVEs actively exploited right now, prominent warning block in the PR comment
- **Shareable scan report** — deep link to the full visual report, valid for 30 days
- **PR comment** — risk score, severity counts, KEV alert posted directly on the pull request
- **Never blocks a merge** — always exits 0, purely informational

### Usage

```yaml
- uses: sky2194/dependency-analyzer@v1

No configuration needed. Override only for non-standard paths:

- uses: sky2194/dependency-analyzer@v1
  with:
    manifest-file: path/to/requirements.txt

Step outputs

- risk-score — Composite risk score 0–100
- scan-url — Link to the full visual report
- critical — Critical CVE count
- high — High CVE count
- kev-count — Number of actively exploited CVEs (CISA KEV)
