---
title: NewScan Security Scan
date: 2026-08-04 22:38:09 +00:00
tags:
  - NewNormal-Security
  - GitHub Actions
draft: false
repo: https://github.com/NewNormal-Security/newscan-action
marketplace: https://github.com/marketplace/actions/newscan-security-scan
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the NewScan penetration testing tool for security scanning in CI pipelines. It runs on every pull request or deploy, generates SARIF reports, and fails builds based on predefined severity levels. The action supports various scan modes (APIs, web apps, etc.) with customizable profiles and fail-on settings.
---


Version updated for **https://github.com/NewNormal-Security/newscan-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/newscan-security-scan) to find the latest changes.

## Action Summary

This GitHub Action automates the NewScan penetration testing tool for security scanning in CI pipelines. It runs on every pull request or deploy, generates SARIF reports, and fails builds based on predefined severity levels. The action supports various scan modes (APIs, web apps, etc.) with customizable profiles and fail-on settings.

## What's Changed

First tagged release of the NewScan GitHub Action — the Pro CI gate that fails a build on new
security findings.

- SARIF upload to GitHub code scanning, with an artifact fallback when Advanced Security is off,
  and `continue-on-error` so a SARIF problem can't fail an otherwise-passing gate.
- `upload-artifact` v7 / `upload-sarif` v4 (Node 24 — no Node 20 deprecation warnings).
- Example workflows for a preview-URL gate and an ephemeral-service scan.

`v1` tracks this release. Requires a NewScan Pro license in the `NEWSCAN_LICENSE` secret.
