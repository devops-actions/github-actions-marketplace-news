---
title: MAIP Receipt Generator
date: 2026-04-12 21:59:38 +00:00
tags:
  - truthlocks
  - GitHub Actions
draft: false
repo: https://github.com/truthlocks/maip-github-action
marketplace: https://github.com/marketplace/actions/maip-receipt-generator
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/truthlocks/maip-github-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/maip-receipt-generator) to find the latest changes.

## Action Summary

The **MAIP Receipt Generator GitHub Action** automates the creation and verification of cryptographic receipts for GitHub events, such as commits, pull requests, releases, and CI runs, using the Machine Agent Identity Protocol (MAIP). It ensures a verifiable chain of custody for code changes, providing proof of which AI agent performed an action, when, and under whose authority. Key features include receipt generation, trust score checks, PR annotations, badge creation, and non-blocking error handling to enhance workflow security and traceability.

## What's Changed

## MAIP Receipt Generator

Generate and verify MAIP receipts for GitHub events — commits, PRs, releases, CI runs.

### Usage

```yaml
- uses: truthlocks/maip-github-action@v1
  with:
    maip-api-key: ${{ secrets.MAIP_API_KEY }}
    maip-tenant-id: ${{ secrets.MAIP_TENANT_ID }}
```

### Features
- Receipt generation for commits, tags, and releases
- PR check run with verification status annotations
- Badge generation for README
- Matrix build support with per-job receipt chains

### Modes
- `receipt` — Generate a MAIP receipt for the current GitHub event
- `verify` — Verify an existing receipt by ID
- `check` — Create GitHub Check Run with trust score
- `comment` — Post PR comment with receipt summary
- `badge` — Generate SVG status badges

### License
Apache-2.0
