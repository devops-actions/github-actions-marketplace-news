---
title: Dependency Analyzer Security Scan
date: 2026-06-07 06:30:07 +00:00
tags:
  - sky2194
  - GitHub Actions
draft: false
repo: https://github.com/sky2194/dependency-analyzer
marketplace: https://github.com/marketplace/actions/dependency-analyzer-security-scan
version: v1.1.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/sky2194/dependency-analyzer** to version **v1.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/dependency-analyzer-security-scan) to find the latest changes.

## What's Changed

## Dependency Analyzer v1.1.1 — Release

Scan your npm, PyPI, or Maven dependencies for CVE vulnerabilities on every push or PR — never blocks your pipeline.

### What's included

- **EPSS scoring** — shows the probability (%) a CVE will be exploited in the wild within 30 days
- **CISA KEV alerts** — flags CVEs that are actively exploited right now, with a prominent warning block in the PR comment
- **Shareable scan report** — every scan generates a deep link to the full visual report (dependency graph, CVE paths, fix commands) — valid for 30 days
- **PR comment** — posts a full breakdown (risk score, severity table, KEV alert) directly on the pull request
- **Never blocks a merge** — always exits 0, purely informational

### Usage

```yaml
- uses: sky2194/dependency-analyzer@v1
  with:
    manifest-file: package.json   # or requirements.txt / pom.xml

Outputs

┌────────────┬──────────────────────────────┐
│   Output   │         Description          │
├────────────┼──────────────────────────────┤
│ risk-score │ Composite risk score 0–100   │
├────────────┼──────────────────────────────┤
│ scan-url   │ Link to full visual report   │
├────────────┼──────────────────────────────┤
│ critical   │ Critical CVE count           │
├────────────┼──────────────────────────────┤
│ high       │ High CVE count               │
├────────────┼──────────────────────────────┤
│ kev-count  │ Actively exploited CVE count │
├────────────┼──────────────────────────────┤
│ ```        │                              │
└────────────┴──────────────────────────────┘

✻ Worked for 9s · 1 shell still running

❯ copy paste dislocated the tabels

Here's the release description without tables — paste this instead:

## DepAnalyzer v1.1.1 — Initial Release

Scan your npm, PyPI, or Maven dependencies for CVE vulnerabilities on every push or PR — never blocks your pipeline.

### What's included

- **EPSS scoring** — shows the probability (%) a CVE will be exploited in the wild within 30 days
- **CISA KEV alerts** — flags CVEs actively exploited right now, with a prominent warning block in the PR comment
- **Shareable scan report** — every scan generates a deep link to the full visual report (dependency graph, CVE paths, fix commands) — valid for 30 days
- **PR comment** — posts a full breakdown (risk score, severity counts, KEV alert) directly on the pull request
- **Never blocks a merge** — always exits 0, purely informational

### Usage

```yaml
- uses: sky2194/dependency-analyzer@v1
  with:
    manifest-file: package.json

Outputs

- risk-score — Composite risk score 0–100
- scan-url — Link to the full visual report
- critical — Critical CVE count
- high — High CVE count
- kev-count — Number of actively exploited CVEs (CISA KEV)
