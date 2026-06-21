---
title: depwatch dependency risk
date: 2026-06-21 14:54:26 +00:00
tags:
  - Tim-tran1406
  - GitHub Actions
draft: false
repo: https://github.com/Tim-tran1406/depwatch
marketplace: https://github.com/marketplace/actions/depwatch-dependency-risk
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Tim-tran1406/depwatch** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/depwatch-dependency-risk) to find the latest changes.

## What's Changed

First public release. depwatch scans a Python project's dependencies and ranks the few that are genuinely risky — then tells you how to fix them.

## Highlights
- **Risk scoring** across five signals — known vulnerabilities (real CVSS severity), maintenance staleness, bus factor, adoption, and license — blended into one score, with a floor so a known critical CVE is never diluted by otherwise-good health.
- **Fix suggestions** — the smallest upgrade that clears each package's known vulnerabilities.
- **Scan history & trends** — `--since-last` shows what changed since the previous scan.
- **Five output formats** — table, JSON, Markdown, HTML, and SARIF.
- **GitHub Action** — gates pull requests and posts findings (with the suggested upgrade) to the Security tab via SARIF.

## Use it in CI
```yaml
- uses: Tim-tran1406/depwatch@v1
  with:
    requirements: requirements.txt
    fail-on: high
```

## Data sources
All free, no account required: deps.dev, OSV.dev, PyPI, pypistats, and GitHub.
