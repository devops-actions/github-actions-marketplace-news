---
title: DevSecOps Trust Gate
date: 2026-07-20 22:58:49 +00:00
tags:
  - xkobxx
  - GitHub Actions
draft: false
repo: https://github.com/xkobxx/devsecops-dissertation
marketplace: https://github.com/marketplace/actions/devsecops-trust-gate
version: v.1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The DevSecOps Trust Gate GitHub Action runs several security scanning tools like Bandit, Semgrep, pip-audit, Trivy, and Gitleaks against a repository to identify potential vulnerabilities. It aggregates these findings into one unified gate with a severity score per finding based on empirical precision data, allowing users to prioritize which issues are worth acting on. The action also provides an HTML dashboard as a build artifact for easy visualization of the scan results.
---


Version updated for **https://github.com/xkobxx/devsecops-dissertation** to version **v.1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/devsecops-trust-gate) to find the latest changes.

## Action Summary

The DevSecOps Trust Gate GitHub Action runs several security scanning tools like Bandit, Semgrep, pip-audit, Trivy, and Gitleaks against a repository to identify potential vulnerabilities. It aggregates these findings into one unified gate with a severity score per finding based on empirical precision data, allowing users to prioritize which issues are worth acting on. The action also provides an HTML dashboard as a build artifact for easy visualization of the scan results.

## What's Changed

Free scanners already exist. What's missing is trust: every vendor sells you a scan, but nobody publishes how often their own tool is wrong. Meanwhile per-seat pricing on the incumbents (Snyk, Semgrep Team, ...) stacks up fast for a small team running more than one product.

This tool doesn't replace your scanners - it aggregates the free ones you already trust, and adds a confidence score per finding based on empirically measured precision, not vendor marketing.

| | Free | Paid |
|---|---|---|
| Bandit / Semgrep / pip-audit / Trivy / Gitleaks scan + aggregation | ✅ | ✅ |
| Unified severity gate (fails the build on HIGH+, configurable) | ✅ | ✅ |
| HTML dashboard | ✅ | ✅ |
| Confidence score per finding (empirical precision, not a guess) | — | ✅ |
| "Act on these first" ranked triage list | — | ✅ |

Flat monthly pricing, not per-seat — one price regardless of team size. 
---

## Quick Start

```yaml
# .github/workflows/security.yml
on: [push, pull_request]
jobs:
  scan:
    runs-on: ubuntu-latest   # required: Trivy/Gitleaks run as Docker container actions (Linux only)
    steps:
      - uses: actions/checkout@v4
      - uses: <owner>/<repo>@<version>
        with:
          target: .
          fail-on: high
          # license-key: ${{ secrets.TRUST_GATE_LICENSE }}   # paid tier only
```

That's it - no separate install step, no manual scanner invocations. The dashboard is uploaded as a build artifact (`security-dashboard`) on every run.
