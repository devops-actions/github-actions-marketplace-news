---
title: PageGuard Privacy & Compliance Scanner
date: 2026-04-09 14:14:35 +00:00
tags:
  - pageguard
  - GitHub Actions
draft: false
repo: https://github.com/pageguard/pageguard-action
marketplace: https://github.com/marketplace/actions/pageguard-privacy-compliance-scanner
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/pageguard/pageguard-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pageguard-privacy-compliance-scanner) to find the latest changes.

## Action Summary

The **PageGuard Privacy & Compliance Scanner GitHub Action** automatically scans pull requests to detect third-party trackers, analytics SDKs, and privacy risks in codebases, providing a compliance risk score and identifying GDPR, CCPA, and cookie law gaps. It automates privacy policy enforcement by offering a configurable compliance gate that blocks risky changes from being merged if the risk score exceeds a defined threshold. Additionally, it generates machine-readable compliance reports, posts PR summaries, and can automatically update legal documents, streamlining privacy compliance efforts in development workflows.

## What's Changed

## What's new

- **Compliance gate** (`compliance-gate: true`) — fail PR checks when risk score exceeds your threshold
- **Configurable risk threshold** (`risk-threshold: 0-100`, default 70)
- **`compliance.json` artifact** — written to `.pageguard/compliance.json` on every run
- PR comments with gate pass/fail status
- Auto-generated legal documents on push to main (with `api-key` + `generate-docs: true`)

## Quick start

```yaml
- uses: pageguard/pageguard-action@v1
  with:
    compliance-gate: true
    risk-threshold: 70
  env:
    GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

🦝 Don't ship without Bandit.
